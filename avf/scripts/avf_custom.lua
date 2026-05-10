#include "check_avf.lua"

--[[
**********************************************************************
*
* FILEHEADER: Elboydo's  custom tank setup script for AVF tanks
*
* FILENAME :        avf_custom.lua             
*
* DESCRIPTION :

			A utility script that does most of the tank creation work for you 

			just create a seperate tank config for your vehicle, weapons, 
			and other utilities, then this will do the magic for you!


**********************************************************************
]]

custom_locations = {
	[1] = "emitter",
	[2] = "coax_emitter",
	[3] = "sight",
	[4] = "backblast",
	[5] = "shell_ejector",
	[6] = "shell_ejector_dir"

}

custom_sound_types = {
	[1] = "custom_fire_sound",
	[2] = "custom_mouse_down",
	[3] = "custom_loop_sound_file",
	[4] = "custom_reload",

}


ai_locations = {
	[1] = "ai_commander",

}

DEBUG = false
DEBUG_EJECTORS  =false

collision_items_index = 1
collision_mask_index = 1
collision_items = {


}

custom_weapon_sounds = {
	primary_weapons = {},
	coax_weapons = {

	}


}

filters = {
	[1] = 2,
	[2] = 4,
	[3] = 8,
	[4] = 16,
	[5] = 32 ,
	[6] = 64,
	[7] = 128,
}



vehicle_alive = true

hull_filter = 0
turret_filter = 0
gun_filter = 0

filter_max = 255
-- SetShapeCollisionFilter(a, 2, 255-2)

function init()
	hull_filter = filters[math.random(1,3)] --1+ math.floor((filter_max/2*math.random())-1)
	turret_filter = filters[math.random(4,5)]
	gun_filter = filters[math.random(6,7)] --(filter_max/2)+ math.floor((filter_max/2*math.random())-1)
	local custom_sight_script = false
	-- DebugPrint("starting")
	for key,val in pairs(vehicleParts.guns) do 
		custom_sight_script = false
		if(val.custom_sight_script) then 
			custom_sight_script = true
		end
		custom_sight_template = nil
		if(val.custom_sight_template) then 
			custom_sight_template = val.custom_sight_template
		end
		if(val.cfgWeapon ~= nil) then 
			cfg_weapon(key,val.cfgWeapon)
		end

		if(val.template ~= nil) then 
			-- DebugPrint("tasdss")
			vehicleParts.guns[key]= deepcopy(templates[val.template])
			vehicleParts.guns[key].custom_sight_script = custom_sight_script
			vehicleParts.guns[key].custom_sight_template = custom_sight_template
		end
	end

	local sceneVehicle = FindVehicle("cfg")
		local value = GetTagValue(sceneVehicle, "cfg")
		if(value == "vehicle") then
			vehicle.id = sceneVehicle

			local status,retVal = pcall(initVehicle)
			if status then 
				-- utils.printStr("no errors")
			else
				DebugPrint(retVal)
			end
			-- initVehicle()
		end

		SetTag(sceneVehicle,"SPAWNED_AVF_VEHICLE")

		SetBool("level.avf.vehicle_spawned", true)
		SetTag(sceneVehicle,"AVF_Custom","unset")
		-- DebugPrint("vehicle configured!!")
		check_AVF:init(sceneVehicle)


end


function initVehicle()
	if unexpected_condition then error() end
	vehicle.body = GetVehicleBody(vehicle.id)
	vehicle.transform =  GetBodyTransform(vehicle.body)
	vehicle.shapes = GetBodyShapes(vehicle.body)

	init_ai_elements()


	local totalShapes = ""
	for i=1,#vehicle.shapes do
		SetShapeCollisionFilter(vehicle.shapes[i], hull_filter, filter_max - turret_filter - gun_filter )
		local value = GetTagValue(vehicle.shapes[i], "component")
		-- if(value~= "")then
			-- if(value=="chassis") then
				for key,val in pairs(vehicleParts.chassis) do 
					if(HasTag(vehicle.shapes[i],key)) then
						addItems(vehicle.shapes[i],val)
					end
				end
			-- end
			totalShapes = totalShapes..value.." "
			local test = GetShapeJoints(vehicle.shapes[i])
				for j=1,#test do 
					local val2 = GetTagValue(test[j], "component")
					if(val2~= "")then

						
						totalShapes = totalShapes..val2.." "

						if(val2=="turretJoint")then

							totalShapes = totalShapes..traverseTurret(test[j], vehicle.shapes[i])

						elseif val2=="gunJoint" then
							

							totalShapes = totalShapes..addGun(test[j], vehicle.shapes[i])

						end
					end
				end
		-- end	
	end
	for key,gun in pairs(vehicleParts.guns) do
		if(not gun.shape_id) then 
			gun.shape_id = FindShape(key)
		end
		init_custom_sounds(key,gun)
	end
	if(load_vehice_specific_sounds) then 
		load_vehice_specific_sounds()
	end
end


--[[

	loads  custom weapon sounds and adds to custom_weapon_sounds dict
]]
function init_custom_sounds(key,gun)
	local sound_type = ""
	for i =1,#custom_sound_types do 
		sound_type = custom_sound_types[i]
		if(gun[sound_type]) then 
			-- DebugPrint(sound_type)
			init_gun_sounds(key,gun,sound_type,"primary_weapons") 
		end
		if(gun['coax'] and gun['coax'][sound_type]) then 

		end

	end 


end
function init_gun_sounds(key,gun,sound_type,weapon_class) 
	loaded_sounds = {}
	local index_num = ""
	-- DebugPrint(type(gun[sound_type]))
	if(type(gun[sound_type]) == "table") then
		for i =1, gun[sound_type].num_sounds do
			if(i<10) then 
				index_num = "0"..i
			else
				index_num = i
			end
			-- DebugPrint(gun[sound_type].file_name..index_num..".ogg")
			-- DebugPrint(sound_type)
			if(sound_type == "custom_loop_sound_file") then 

				loaded_sounds[#loaded_sounds+1] = LoadLoop(
					gun[sound_type].file_name..index_num..".ogg"
					)
			else
				
				loaded_sounds[#loaded_sounds+1] = LoadSound(
					gun[sound_type].file_name..index_num..".ogg"
					)
			end 
	 
		end
	end
	if(not custom_weapon_sounds[weapon_class][key]) then 
		custom_weapon_sounds[weapon_class][key] = {}
		-- DebugPrint("setting new Key")
	end
	custom_weapon_sounds[weapon_class][key][sound_type] = loaded_sounds
end

function init_ai_elements()
	if(vehicleParts.ai_elements ~= nil) then 
		for key,val in pairs(vehicleParts.ai_elements) do 
			if(type(val)== 'table') then
				for subKey,subVal in pairs(val) do
					SetTag(vehicle.id,"avf_ai".."_"..key.."_"..subKey,subVal)
				end
			elseif(key =="side") then 
				SetTag(vehicle.id,"avf_ai",val)
			else
				SetTag(vehicle.id,"avf_ai"..key,val)
			end
			
			
		end
	end


end

function traverseTurret(turretJoint,attatchedShape)
	local outString = ""
	local turret = GetJointOtherShape(turretJoint, attatchedShape)
	local joints = GetShapeJoints(turret)
	local turret_shapes = GetBodyShapes(GetShapeBody(turret))

	for j=1,#joints do 
		if(joints[j]~=turretJoint)then
			local val2 = GetTagValue(joints[j], "component")

			-- DebugPrint("turret shapes:"..val2)
			if(val2=="turretJoint")then

				totalShapes = totalShapes..traverseTurret(joints[j], turret)

			elseif val2=="gunJoint" then
				outString = outString..addGun(joints[j], turret,true)

			end
		end
	end
	for t_s = 1,#turret_shapes do 
		-- DebugWatch("hull_filter",hull_filter)
		-- DebugWatch("turret_filter",turret_filter)
		-- DebugWatch("active filter" ,255-  hull_filter-gun_filter )
		SetShapeCollisionFilter(turret_shapes[t_s], turret_filter, 255-  hull_filter -gun_filter )
		local joints = GetShapeJoints(turret_shapes[t_s])
		for j=1,#joints do 
			if(joints[j]~=turretJoint)then
				local val2 = GetTagValue(joints[j], "component")

				-- DebugPrint("turret shapes:"..val2.." | "..t_s)
				if(val2=="turretJoint")then

					--totalShapes = totalShapes..
					traverseTurret(joints[j], turret)
				elseif val2=="gunJoint" then
					outString = outString..addGun(joints[j], turret,true)
				end
			end
		end
	end
	for key,val in pairs(vehicleParts.turrets) do 
		if(HasTag(turret,val)) then
			addItems(turret,key)
		end
	end
	return outString
end

function addGun(gunJoint,attatchedShape,turret_mounted)
	local gun = GetJointOtherShape(gunJoint, attatchedShape)
	local gun_shapes = GetBodyShapes( GetShapeBody(gun))
	for s =1,#gun_shapes do
		SetShapeCollisionFilter(gun_shapes[s], gun_filter, 255- turret_filter - hull_filter )
		if(HasTag(gun_shapes[s], "component") and GetTagValue(gun_shapes[s], "component") == "gun" ) then
			gun = gun_shapes[s]
		end
	end

	for key,val in pairs(vehicleParts.guns) do 
		
		if(HasTag(gun,key)) then
			-- DebugPrint(key.." | added")
			add_emitters(gun,key,val,turret_mounted)
			addItems(gun,val)
		end
	end
	local val3 = GetTagValue(gun, "component")
	return val3
end
-- @magazine1_tracer
function addItems(shape,values)
	for key,val in pairs(values) do 
			if(key=="coax") then 

				addCoaxItems(shape,val)
			elseif(type(val)== 'table') then
				SetTag(shape, "@"..key)
				for subKey,subVal in pairs(val) do 
					if(type(subVal)== 'table') then
						for subKey2,subVal2 in pairs(subVal) do 
							-- DebugPrint( "@"..string.sub(key,1,-2)..subKey.."_"..subKey2.."="..subVal2)
							if key == "magazines" then
								-- if(subKey2 == "RHAe") then
								-- 	DebugPrint("setting rhae in subKey2 as ".."@"..string.sub(key,1,-2)..subKey.."_"..subKey2.." with value "..subVal2)
								-- end
								SetTag(shape, "@"..string.sub(key,1,-2)..subKey.."_"..subKey2, subVal2)

								--DebugPrint( "@"..string.sub(key,1,-2)..subKey.."_"..subKey2, subVal2)

							else

								-- if(key=="shell_ejector") then 
								-- 	DebugPrint( "@"..string.sub(key,1,-2)..subKey.."_"..subKey2.."="..subVal2)
								
								-- end
								--DebugPrint( "@"..string.sub(key,1,-2)..subKey.."_"..subKey2.."="..subVal2)
								SetTag(shape, "@"..key..subKey..subKey2, subVal2)
							end

						end
					else
						if key == "magazines" then
							SetTag(shape, "@"..string.sub(key,1,-2).."_"..subKey, subVal)
						else
							SetTag(shape, "@"..key..subKey, subVal)
						end
						-- if(key=="shell_ejector") then 
						-- 	DebugPrint("@"..string.sub(key,1,-2).."_"..subKey.."="..subVal)
								
						-- end
					end
				end
			else
				--DebugPrint( "@"..key.."| "..val)
				SetTag(shape, "@"..key,val)
			end		
	end
end

function addCoaxItems(shape,values)

	coax = "coax"
	for key,val in pairs(values) do
			tagKey = key..coax
			if(type(val)== 'table') then
				SetTag(shape, "@"..key..coax)
				for subKey,subVal in pairs(val) do 
					if(type(subVal)== 'table') then
						for subKey2,subVal2 in pairs(subVal) do 
							-- DebugPrint( "@"..string.sub(key,1,-2)..subKey.."_"..subKey2.."="..subVal2)
							if key == "magazines" then
								
								SetTag(shape, "@"..string.sub(key,1,-2)..subKey.."_"..subKey2..coax, subVal2)
							else
								--DebugPrint( "@"..string.sub(key,1,-2)..subKey.."_"..subKey2.."="..subVal2)
								SetTag(shape, "@"..tagKey..subKey..subKey2, subVal2)
							end
						end
					else
						if key == "magazines" then
							SetTag(shape, "@"..string.sub(key,1,-2).."_"..subKey..coax, subVal)
						else
							SetTag(shape, "@"..tagKey..subKey, subVal)
						end
					end
				end
			else
				--DebugPrint( "@"..key..coax.."| "..val)
				SetTag(shape, "@"..tagKey,val)
			end		
	end
end

--[[

	[1] = "emitter",
	[2] = "coax_emitter",
	[3] = "sight",
	[4] = "backblast",


]]
function add_emitters(gun,gun_key,gun_val,turret_mounted)
	local gun_transform = GetShapeWorldTransform(gun)
	if(gun ~= nil and 
		(HasTag(gun,"flip_angle_x") or 
		HasTag(gun,"flip_angle_y") or 
		HasTag(gun,"flip_angle_z"))) 
	then
		local x_tag = tonumber(GetTagValue(gun,"flip_angle_x"))
		local y_tag = tonumber(GetTagValue(gun,"flip_angle_y"))
		local z_tag = tonumber(GetTagValue(gun,"flip_angle_z"))
		local x_rot = (x_tag~=nil and x_tag) or 0
		local y_rot = (y_tag~=nil and y_tag) or 0
		local z_rot = (z_tag~=nil and z_tag) or 0 
		-- 	tch("x_rot",x_rot)
		-- DebugWatch("y_rot",y_rot)
		-- DebugWatch("z_rot",z_rot)
		gun_transform.rot = QuatRotateQuat(gun_transform.rot,QuatEuler(x_rot,y_rot, z_rot))
	end

	for i=1,#custom_locations do 
		local emitter_type = custom_locations[i]
		local emitters = FindLocations(gun_key.."_"..emitter_type)
		local emitter_group = nil
		if(emitter_type=="emitter") then
			if(vehicleParts.guns[gun_key].barrels == nil ) then 
				 vehicleParts.guns[gun_key].barrels = {}
			end
			emitter_group = vehicleParts.guns[gun_key].barrels

		elseif(emitter_type=="coax_emitter" and (HasTag(gun,"coax") or HasKey(vehicleParts.guns[gun_key].coax))) then 
			if(vehicleParts.guns[gun_key].coax == nil) then 
				vehicleParts.guns[gun_key].coax = {}
			end
			if(vehicleParts.guns[gun_key].coax.sight ==nil) then 
				vehicleParts.guns[gun_key].coax.sight = {}
			end

			if(vehicleParts.guns[gun_key].coax.barrels == nil) then 
				vehicleParts.guns[gun_key].coax.barrels = {}
			end
			emitter_group = vehicleParts.guns[gun_key].coax.barrels
		elseif(emitter_type=="sight") then 
			if(vehicleParts.guns[gun_key].sight == nil) then 
				vehicleParts.guns[gun_key].sight = {}
			end
			emitter_group = vehicleParts.guns[gun_key].sight

		elseif(emitter_type=="backblast") then
			if(vehicleParts.guns[gun_key].backblast == nil) then 
				vehicleParts.guns[gun_key].backblast = {}
			end
			emitter_group = vehicleParts.guns[gun_key].backblast

		elseif(emitter_type=="shell_ejector") then 
			if(vehicleParts.guns[gun_key].shell_ejector == nil) then 
				vehicleParts.guns[gun_key].shell_ejector = {}
			end
			emitter_group = vehicleParts.guns[gun_key].shell_ejector
			if(#emitters>0) then 
				-- DebugPrint(emitter_type .. " found!")
				local ejection_joint = FindJoint(gun_key.."_".."ejector_hatch")
				if(ejection_joint~=0) then 
					SetTag(ejection_joint,gun.."_".."ejector_hatch")
					-- DebugPrint("found ejector joint")
					-- local min,max = GetJointLimits(ejection_joint)
					-- DebugWatch("joint limits of hatch MIN",min)
					-- DebugWatch("joint limits of hatch max",max)
				end
			end
		elseif(emitter_type=="shell_ejector_dir") then 
			if(vehicleParts.guns[gun_key].shell_ejector_dir == nil) then 
				vehicleParts.guns[gun_key].shell_ejector_dir = {}
			end
			emitter_group = vehicleParts.guns[gun_key].shell_ejector_dir	
		end
		if(emitter_group~= nil) then 
			add_emitter_group(gun,gun_transform,gun_key,emitter_group,emitters,emitter_type,turret_mounted)
		elseif(#emitters>0) then 
			emitter_group = {}
			add_emitter_group(gun,gun_transform,gun_key,emitter_group,emitters,emitter_type,turret_mounted)
		elseif(emitter_type=="shell_ejector" and #emitters>0) then 

				DebugPrint("emitters found but group is nill!	")
		end 
		if(DEBUG_EJECTORS and emitter_type=="shell_ejector" and #emitters>0) then 

				DebugPrint("shell ejectors found	")
		end 
	end
end


function add_emitter_group(gun,gun_transform,gun_key,emitter_group,emitters,emitter_type,turret_mounted) 
	for i =1,#emitters do
		local emitter_transform = GetLocationTransform(emitters[i]) 
		local emitter_local_transform = TransformToLocalPoint(gun_transform,emitter_transform.pos) --TransformToLocalTransform(gun_transform,emitter_transform)
		emitter_local_transform = Transform(emitter_local_transform)
		if(emitter_group[i] == nil) then 
			emitter_group[i] = {}
		end
		if(DEBUG or HasTag(vehicle.id,"debug_emitters")) then 
			DebugWatch(gun_key.." "..emitter_type,emitter_local_transform)
		end
		if(turret_mounted ~=nil) then 
			if(emitter_type =="sight") then 
				emitter_group[i].x = emitter_local_transform.pos[1]
				emitter_group[i].z = emitter_local_transform.pos[2]
				emitter_group[i].y = emitter_local_transform.pos[3]

				if(vehicleParts.guns[gun_key].coax ~=nil) then 
					if(vehicleParts.guns[gun_key].coax.sight[i] == nil) then 
						vehicleParts.guns[gun_key].coax.sight[i] = {}
					end
					vehicleParts.guns[gun_key].coax.sight[i].x = emitter_local_transform.pos[1]
					vehicleParts.guns[gun_key].coax.sight[i].z = emitter_local_transform.pos[2]
					vehicleParts.guns[gun_key].coax.sight[i].y = emitter_local_transform.pos[3]

				end
			else
				emitter_group[i].x = emitter_local_transform.pos[1]
				emitter_group[i].y = emitter_local_transform.pos[2]
				emitter_group[i].z = emitter_local_transform.pos[3] 
				-- DebugWatch("turret emitter "..emitter_type,emitter_local_transform)
			end

		else
			-- DebugWatch("hull mg key",gun_key)
			if(emitter_type =="sight") then 
				emitter_group[i].x = emitter_local_transform.pos[1]
				emitter_group[i].z = emitter_local_transform.pos[2]
				emitter_group[i].y = emitter_local_transform.pos[3]

				if(vehicleParts.guns[gun_key].coax ~=nil) then 
					vehicleParts.guns[gun_key].coax.sight[i].x = emitter_local_transform.pos[1]
					vehicleParts.guns[gun_key].coax.sight[i].z = emitter_local_transform.pos[2]
					vehicleParts.guns[gun_key].coax.sight[i].y = emitter_local_transform.pos[3]

				end
			else
				emitter_group[i].x = emitter_local_transform.pos[1]
				emitter_group[i].z = emitter_local_transform.pos[2]
				emitter_group[i].y = emitter_local_transform.pos[3]
				-- if(gun_key =="hull_mg") then 
				-- 	DebugWatch("hull mg ",emitter_local_transform)
				-- end
			end
		end
		if(HasTag(gun,"avf_barrel_coords_true")and (emitter_type == "emitter" or emitter_type=="coax_emitter")) then 
			local temp = emitter_group[i].z
			emitter_group[i].z = emitter_group[i].y
			emitter_group[i].y = temp
			-- DebugPrint(emitter_type)
		end
	end

end


--[[


mainCannon component=gun weaponType=customcannon commander avf_barrel_coords_true

				 group=primary interact=mountedGun

]]


function cfg_weapon(gun_id,cfgWeapon)
	local gun = FindShape(gun_id)

	for key,val in pairs(cfgWeapon) do 
		SetTag(gun, key, val)
	end	
end



--[[


	ai location handling

	ai_locations = {
	[1] = "ai_commander",

	}

]]
function add_ai_locations()
	
	for i=1,#ai_locations do 
		local emitter_type = ai_locations[i]
		local emitters = FindLocations(emitter_type)
		local emitter_group = nil
		if(emitter_type=="ai_commander") then 

			vehicleParts.ai_elements.ai_commander = {}
			emitter_group = vehicleParts.ai_elements.ai_commander
		end 
		if(emitter_group~= nil) then 
			add_ai_location_group(emitter_group,emitters,emitter_type)
		end
	end
end


function add_ai_location_group(emitter_group,emitters,emitter_type) 
	for i =1,#emitters do
		local emitter_transform = GetLocationTransform(emitters[i]) 
		local emitter_local_transform = TransformToLocalPoint(GetVehicleTransform(vehicle.id),emitter_transform.pos) --TransformToLocalTransform(gun_transform,emitter_transform)
		emitter_local_transform = Transform(emitter_local_transform)
		if(emitter_group[i] == nil) then 
			emitter_group[i] = {}
		end

		emitter_group[i].x = emitter_local_transform.pos[1]
		emitter_group[i].y = emitter_local_transform.pos[2]
		emitter_group[i].z = emitter_local_transform.pos[3] 
		-- DebugWatch("turret emitter "..emitter_type,emitter_local_transform)
	end

end


function append_to_collision_filter(item1,item2,index)
	if(not collision_items[index]) then 
		collision_items[index] = {}
	end
	local inner_index = #collision_items[index]+1
	collision_items[index][inner_index] = {
		core_item = item1,
		secondary_item = item2
	}

end


function tick(dt)
	if(vehicle_alive) then
		if(custom_avf_sounds) then 
			custom_avf_sounds()
		end 
		if(HasTag(vehicle.id, "vehicle_disabled")) then 
			vehicle_alive= false

		end
	end
end

-- function update(dt)
-- 	maintain_collision_filters()
-- end



function draw(dt)
	if(check_AVF.enabled) then 
		check_AVF:draw()
	end

	if(vehicle_alive) then 
		if(player_in_vehicle())then


			-- if( GetBool("level.avf.sniper_mode") )then 
			-- 	DebugWatch("avf sniper mode","active")
			-- else

			-- 	DebugWatch("avf sniper mode","inactive")
			-- end
			if(custom_avf_ui) then 
				custom_avf_ui()
			end
		end
	end

end





function retrieve_first_barrel_coord(gun,gun_id)
	local barrel = nil

	barrel = gun.barrels[1]
	-- utils.printStr	(gun.multiBarrel)--.." | "..#gun.barrels	)
	local cannonLoc = GetShapeWorldTransform(gun_id)
	local y = barrel.y
	local x = barrel.x 
	local z = barrel.z
	if(debugging_traversal) then 
		DebugWatch("x,y,z",x..","..y..","..z)
	end
	local fwdPos = TransformToParentPoint(cannonLoc, Vec(x, z,y))
	-- if(HasTag(gun.id "avf_barrel_coords_true")) then 
	-- 	 fwdPos = TransformToParentPoint(cannonLoc, Vec(x, z,y))
	-- end	
	local direction = VecSub(fwdPos, cannonLoc.pos)
	cannonLoc.pos = VecAdd(cannonLoc.pos, direction)
	cannonLoc.pos = add_vehicle_vel(cannonLoc.pos,vehicle.id)
	fwdPos = TransformToParentPoint(cannonLoc, Vec(0, -0.5, 0))

	cannonLoc.rot = QuatLookAt(cannonLoc.pos, fwdPos)
	
	return cannonLoc
end


function add_vehicle_vel(pos,vehicle_id)
	return VecAdd(
			pos,
			VecScale(
				GetBodyVelocity(
					GetVehicleBody(
						vehicle_id
						)
					),
				GetTimeStep()
				)
			)	
end

function player_in_vehicle()
	local playerVehicle = GetPlayerVehicle()

	if(vehicle.id == playerVehicle) then 
		return true
	end
	return false 
end

function deepcopy(orig)
    local orig_type = type(orig)
    local copy
    if orig_type == 'table' then
        copy = {}
        for orig_key, orig_value in next, orig, nil do
            copy[deepcopy(orig_key)] = deepcopy(orig_value)
        end
        setmetatable(copy, deepcopy(getmetatable(orig)))
    else -- number, string, boolean, etc
        copy = orig
    end
    return copy
end


-- end
utils = {
	contains = function(set,key)
		return set[key] ~= nil
		-- body
	end,
	}