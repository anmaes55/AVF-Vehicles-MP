--[[
#include "../weapon_templates/weapon_templates.lua"
#include "../weapon_templates/weapon_sights_templates.lua"
#include "../../scripts/avf_custom.lua"
]]

--[[

	use this file to config the parameters for your tank

	Feel free to rename this to the name of your tank



]]

vehicleParts = {
	chassis = {
		
	},
	turrets = {

	},
	guns = {
		["NSV"] = {	
					cfgWeapon = {
						component="gun", 
						weaponType="customMG",
						group="2",
						interact="mountedGun",
						commander = true,
						avf_barrel_coords_true = true

					},
					template = "NSV"
				},	
		["GPMG"] = {	
					cfgWeapon = {
						component="gun", 
						weaponType="customMG",
						group="2",
						interact="mountedGun",
						commander = true,
						avf_barrel_coords_true = true

					},
					template = "GPMG"
				},	
		["main_GPMG"] = {	
					cfgWeapon = {
						component="gun", 
						weaponType="customMG",
						group="1",
						interact="mountedGun",
						commander = true,
						avf_barrel_coords_true = true

					},
					template = "GPMG_02"
				},	
		["main_MILAN"] = {	
					cfgWeapon = {
						component="gun", 
						weaponType="simple_cannon",
						group="1",
						interact="mountedGun",
						commander = true,
						avf_barrel_coords_true = true

					},
					template = "MILAN_02"
				},	
		["GMG_01"] = {	
					cfgWeapon = {
						component="gun", 
						weaponType="customMG",
						group="1",
						interact="mountedGun",
						commander = true,
						avf_barrel_coords_true = true

					},
					template = "GMG"
				},	
		["GMG"] = {	
					cfgWeapon = {
						component="gun", 
						weaponType="customMG",
						group="1",
						interact="mountedGun",
						commander = true,
						avf_barrel_coords_true = true

					},
					template = "GMG_02"
				},
		["mainCannon"] = {	
					cfgWeapon = {
						component="gun", 
						weaponType="customMG",
						group="1",
						interact="mountedGun",
						commander = true,
						avf_barrel_coords_true = true

					},
					template = "KSP_88"
				},	
		["CROWS"] = {	
					cfgWeapon = {
						component="gun", 
						weaponType="customMG",
						group="1",
						interact="mountedGun",
						commander = true,
						avf_barrel_coords_true = true

					},
					template = "KSP_88_CROWS",
					custom_sight_script = true,
					custom_sight_template = "CROWS_MG",
				},
		["CROWS_JAV"] = {	
					cfgWeapon = {
						component="gun", 
						weaponType="customMG",
						group="2",
						interact="mountedGun",
						commander = true,
						avf_barrel_coords_true = true

					},
					template = "javelin",
					custom_sight_script = true,
					custom_sight_template = "JAVELIN"
				},
	},
}
	

	---- magazine num _ val
	---- barrels num value

vehicle = {

}


				-- special_custom_sounds = 
				-- 						{
				-- 							reload_sounds			= {
				-- 								reload_type 	= "loop_and_sound",
				-- 								reloaded_sound = "MOD/avf/snd/nsv/nsv_reload_loop",
				-- 								reload_loop = "MOD/avf/snd/nsv/nsv_reloaded",

function load_vehice_specific_sounds()
	local special_sound_set =""
	for key,gun in pairs(vehicleParts.guns) do

		if(not custom_weapon_sounds["primary_weapons"][key]) then 
			custom_weapon_sounds["primary_weapons"][key] = {}
		end

		if(gun.special_custom_sounds) then 
			if(gun.special_custom_sounds.reload_sounds) then 
				special_sound_set = gun.special_custom_sounds.reload_sounds
				if(special_sound_set.reload_type 	== "loop_and_sound") then 
					custom_weapon_sounds["primary_weapons"][key]['reload'] = {
						loop=nil,
						sound=nil
					}
					custom_weapon_sounds["primary_weapons"][key]['reload']['loop'] = LoadLoop(
						gun.special_custom_sounds.reload_sounds.reload_loop..".ogg"
						)
					-- loaded_sounds[#loaded_sounds+1] = LoadSound(
					-- 	gun[sound_type].file_name..index_num..".ogg"
					-- 	)
					custom_weapon_sounds["primary_weapons"][key]['reload']['sound'] = LoadSound(
						gun.special_custom_sounds.reload_sounds.reloaded_sound..".ogg"
						)				
				elseif(special_sound_set.reload_type 	== "loop") then
					custom_weapon_sounds["primary_weapons"][key]['reload']['reload_loop'] = LoadLoop(
						gun.special_custom_sounds.reload_sounds.reload_loop..".ogg"
						)

				else
					custom_weapon_sounds["primary_weapons"][key]['reload']['reloaded_sound'] = LoadSound(
						gun.special_custom_sounds.reload_sounds.reloaded_sound..".ogg"
						)						
				end
			end
		end
	end
end
	
--[[

SetTag(source, "PlaySound", sound_type)
SetTag(source, "PlayLoop", sound_type)
SetTag(source, "reloading", reload_percentage)
PlaySound(self.snd.shootSnd[math.random(1,#self.snd.shootSnd)])
]]
function custom_avf_sounds()
	local gun_sound = nil
	local sound_type 
	for key,gun in pairs(vehicleParts.guns) do
		gun_pos = GetShapeWorldTransform(gun.shape_id).pos
		if(HasTag(gun.shape_id,"PlaySound")) then
			-- DebugWatch("playsound",GetTagValue(gun.shape_id,"PlaySound"))
			sound_type = GetTagValue(gun.shape_id,"PlaySound")
			-- custom_weapon_sounds[weapon_class][key][sound_type]
			-- DebugWatch("gun sounds quant",#custom_weapon_sounds["primary_weapons"][key]["custom_fire_sound"])
			-- DebugWatch("gun sounds exists",custom_weapon_sounds["primary_weapons"][key])
			-- DebugWatch("gun sounds ley",key)
			if(sound_type == "sound") then 
				gun_sounds = custom_weapon_sounds["primary_weapons"][key]["custom_fire_sound"]
				PlaySound(gun_sounds[math.random(1,#gun_sounds)],gun_pos,10)
			end
			RemoveTag(gun.shape_id,"PlaySound")

		end 
		if(HasTag(gun.shape_id,"PlayLoop")) then
			-- DebugWatch("PlayLoop",GetTagValue(gun.shape_id,"PlayLoop"))
			sound_type = GetTagValue(gun.shape_id,"PlayLoop")
			-- custom_weapon_sounds[weapon_class][key][sound_type]
			if(sound_type == "loopSoundFile") then 
				-- DebugWatch("gun sounds quant",#custom_weapon_sounds["primary_weapons"][key]["custom_loop_sound_file"])
				gun_sounds = custom_weapon_sounds["primary_weapons"][key]["custom_loop_sound_file"]
				PlayLoop(gun_sounds[1],gun_pos,10)
			end

			RemoveTag(gun.shape_id,"PlayLoop")
		end 
		if(HasTag(gun.shape_id,"reloading")) then
			-- DebugWatch("reloading",GetTagValue(gun.shape_id,"reloading"))
			if(gun.special_custom_sounds.reload_sounds) then 
				handle_custom_reload_sounds(gun,custom_weapon_sounds["primary_weapons"][key]['reload'] )
			end
			RemoveTag(gun.shape_id,"reloading")
		end
	end

end

function handle_custom_reload_sounds(gun,reload_sounds)
	gun_reload_percentage = tonumber(GetTagValue(gun.shape_id,"reloading"))
	gun_pos = GetShapeWorldTransform(gun.shape_id).pos
	special_sound_set = gun.special_custom_sounds.reload_sounds
	if(special_sound_set.reload_type 	== "loop_and_sound") then
		if(gun_reload_percentage<1) then 
			PlayLoop(reload_sounds['loop'],gun_pos,10)
		else
			PlaySound(reload_sounds['sound'],gun_pos,10)
		end	
	elseif(special_sound_set.reload_type 	== "loop") then
		PlayLoop(reload_sounds['loop'],gun_pos,10)
	else
		if(gun.played_reload_sound) then 
			if(gun_reload_percentage>=1) then 
				gun.played_reload_sound = false
			end
		else
			PlaySound(reload_sounds['sound'],gun_pos,10)
			gun.played_reload_sound = true
		end					
	end

end

function custom_avf_ui() 
	-- test_import()
	-- DebugWatch("custom_avf_ui",""..string.byte("script 1 running"))

	-- DebugWatch("custom_avf_ .weapon_group",GetString("level.avf.weapon_group"))

	SetInt("level.avf.focus_weapon",testgunobj )
	if(GetBool("level.avf.sniper_mode")) then
		local focus_gun = FindShape("avf_primary_weapon_group_"..GetString("level.avf.weapon_group"))
		-- DebugWatch("found shape",IsHandleValid(focus_gun))

		for key,val in pairs(vehicleParts.guns) do 
			if(HasTag(focus_gun,key)) then
				if(HasTag(focus_gun,key) and val.custom_sight_script) then
					draw_custom_sight(focus_gun,key,val)
				 -- (22 m/s)² × sin(2 × 35°)/9.81 m/s²
				 -- d = V₀² × sin(2 × α)/g
					break
				end
				-- if(HasTag(focus_gun,"avf.databus.loaded_magazine") and val.custom_sight_script) then  
				-- 	if(val.custom_sight_template == "CROWS_MG") then 
				-- 		-- DebugWatch("loaded magazine",GetTagValue(focus_gun,"avf.databus.loaded_magazine"))
				-- 		local loaded_magazine =tonumber(GetTagValue(focus_gun,"avf.databus.loaded_magazine"))		 	
				-- 		gun_vel = val.magazines[loaded_magazine].velocity
						
				-- 		local grav_coef = 1
				-- 		if( val.magazines[loaded_magazine].gravityCoef)then 
				-- 			grav_coef = val.magazines[loaded_magazine].gravityCoef
				-- 		end
				-- 		grav_g = 10

				-- 		-- DebugWatch("barrelcoords",retrieve_first_barrel_coord(val,focus_gun))
				-- 		-- DebugCross(retrieve_first_barrel_coord(val,focus_gun).pos)

				-- 		local t = retrieve_first_barrel_coord(val,focus_gun)
				-- 		local bodyPoint = Vec(0, 0, -0.5)
				-- 		local p = TransformToParentPoint(t, bodyPoint)
				-- 		-- DebugCross(p,1,0,0)

				-- 		local gravity = (grav_g * grav_coef)
				-- 		if(val.magazines[loaded_magazine].gravityCoef) then
				-- 			grav_coef = val.magazines[loaded_magazine].gravityCoef
				-- 		end
				-- 			-- DebugWatch(
				-- 			-- 	"gun range",	
				-- 			-- 	(gun_vel*gun_vel) * math.sin(2*45)/(grav_g*grav_coef)
				-- 			-- 	-- V₀² × sin(2 × α)/g)#
				-- 			-- 	)	
				-- 		local zero_range	 = 400
				-- 		local test_range = GetInt("level.avf.zeroing")
				-- 		if(
				-- 			test_range
				-- 			) then 

				-- 			if(test_range == 0) then 
				-- 				test_range = 50
				-- 			end
				-- 				zero_range=test_range

				-- 		end
				-- 		-- DebugWatch("avf script zero range",zero_range)
				-- 		CROWS_sight(grav_g,focus_gun,val)
				-- 		for i =50,400,50 do 
				-- 			local flight_time = (i  / gun_vel )
				-- 			-- DebugWatch(ss
				-- 			-- 	"total drop at range "..i,
				-- 			-- 	(-0.5*gravity * flight_time*flight_time) 
				-- 			-- 	-- V₀² × sin(2 × α)/g)#
				-- 			-- 	)
				-- 			bodyPoint = Vec(0, -0.5*gravity * flight_time*flight_time, -i)
				-- 			p = TransformToParentPoint(t, bodyPoint)
				-- 			DebugCross(p,1,0,0)
				-- 			local x, y, dist = UiWorldToPixel(p)
				-- 			local height = UiHeight() 
				-- 			local w = UiWidth()
				-- 			UiPush()
				-- 				if dist > 0 then
				-- 					UiFont("bold.ttf", 12)
				-- 					-- DebugWatch("dist ",dist)
				-- 					-- DebugWatch("xy ",x)
				-- 					-- DebugWatch("w",w)
				-- 					-- DebugWatch("Y",y)
				-- 					-- DebugWatch("height",height)
				-- 					UiTranslate(x, y)
				-- 					UiColor(0,1,0)
				-- 					UiText(i)
				-- 				end
				-- 			UiPop()
				-- 		end
				-- 	end
				-- end
			end

			-- DebugWatch("CUSTOM SIGHT",val.custom_sight_script)

		end

	end

end

function draw_custom_sight(gun,gun_key,gun_values)
	local sight_template = gun_values['custom_sight_template'] 
	if(gun_key=="igla") then 
		igla_scope()
	elseif(sight_template == "CROWS_MG") then 
		CROWS_MG(gun,gun_values)

	elseif(sight_template == "JAVELIN") then 
		JAVELIN_SIGHT(gun,gun_values)
	end
end

