#version 2


function test_sight() 
	DebugWatch("calling test site function")

end



function test_import() 
	DebugWatch("calling test sight function")

end


function igla_scope(gun,gun_details) 
	-- DebugWatch("calling IGLA sight function")


end

function CROWS_sight(grav_g,weapon,weapon_payload)
	UiPush()
	UiAlign("center middle")
	UiTranslate(UiCenter(), UiMiddle());

	UiImageBox("MOD/avf/gfx/basic_rcws.png",UiWidth()*1,UiHeight()*1,1,1)
	UiPop()
	local zero_range	 = 400
	local test_range = GetInt("level.avf.zeroing")
	if(
		test_range
		) then 

		if(test_range == 0) then 
			test_range = 50
		end
			zero_range=test_range

	end

	-- DebugWatch("loaded magazine",GetTagValue(focus_gun,"avf.databus.loaded_magazine"))
	local loaded_magazine =tonumber(GetTagValue(weapon,"avf.databus.loaded_magazine"))	
	local ammo_count =tonumber(GetTagValue(weapon,"avf.databus.ammo_count"))	

	gun_vel = weapon_payload.magazines[loaded_magazine].velocity
					
	local grav_coef = 1
	if( weapon_payload.magazines[loaded_magazine].gravityCoef)then 
		grav_coef = weapon_payload.magazines[loaded_magazine].gravityCoef
	end
	grav_g = 10

	-- DebugWatch("barrelcoords",retrieve_first_barrel_coord(val,focus_gun))
	-- DebugCross(retrieve_first_barrel_coord(val,focus_gun).pos)

	local t = retrieve_first_barrel_coord(weapon_payload,weapon)
	local bodyPoint = Vec(0, 0, -0.5)
	local p = TransformToParentPoint(t, bodyPoint)
	-- DebugCross(p,1,0,0)

	local gravity = (grav_g * grav_coef)
	if(weapon_payload.magazines[loaded_magazine].gravityCoef) then
		grav_coef = weapon_payload.magazines[loaded_magazine].gravityCoef
	end
	local flight_time = (zero_range  / gun_vel )
	bodyPoint = Vec(0, -0.5*gravity * flight_time*flight_time, -zero_range)
	p = TransformToParentPoint(t, bodyPoint)
	-- DebugCross(p,1,0,0)
	local x, y, dist = UiWorldToPixel(p)
	local height = UiHeight() 
	local w = UiWidth()
	UiPush()
		if dist > 0 then
			-- DebugWatch("dist ",dist)
			-- DebugWatch("xy ",x)
			-- DebugWatch("w",w)
			-- DebugWatch("Y",y)
			-- DebugWatch("height",height)
			UiTranslate(x, y)
			UiTranslate(-100, -100)
			UiColor(1,0,0,0.7)
			UiImageBox("MOD/avf/img/cross_thin_01.png", 200, 200, 10, 10)
			UiImageBox("MOD/avf/img/outer_crosshair_01.png", 200, 200, 10, 10)
		end
	UiPop()
					

end

function CROWS_MG(focus_gun,val)


	-- DebugWatch("loaded magazine",GetTagValue(focus_gun,"avf.databus.loaded_magazine"))
	local loaded_magazine =tonumber(GetTagValue(focus_gun,"avf.databus.loaded_magazine"))		 	
	gun_vel = val.magazines[loaded_magazine].velocity
	
	local grav_coef = 1
	if( val.magazines[loaded_magazine].gravityCoef)then 
		grav_coef = val.magazines[loaded_magazine].gravityCoef
	end
	grav_g = 10

	-- DebugWatch("barrelcoords",retrieve_first_barrel_coord(val,focus_gun))
	-- DebugCross(retrieve_first_barrel_coord(val,focus_gun).pos)

	local t = retrieve_first_barrel_coord(val,focus_gun)
	local bodyPoint = Vec(0, 0, -0.5)
	local p = TransformToParentPoint(t, bodyPoint)
	-- DebugCross(p,1,0,0)

	local gravity = (grav_g * grav_coef)
	if(val.magazines[loaded_magazine].gravityCoef) then
		grav_coef = val.magazines[loaded_magazine].gravityCoef
	end
		-- DebugWatch(
		-- 	"gun range",	
		-- 	(gun_vel*gun_vel) * math.sin(2*45)/(grav_g*grav_coef)
		-- 	-- V₀² × sin(2 × α)/g)#
		-- 	)	
	local zero_range	 = 400
	local test_range = GetInt("level.avf.zeroing")
	if(
		test_range
		) then 

		if(test_range == 0) then 
			test_range = 50
		end
			zero_range=test_range

	end
	-- DebugWatch("avf script zero range",zero_range)
	CROWS_sight(grav_g,focus_gun,val)
	for i =50,400,50 do 
		local flight_time = (i  / gun_vel )
		-- DebugWatch(ss
		-- 	"total drop at range "..i,
		-- 	(-0.5*gravity * flight_time*flight_time) 
		-- 	-- V₀² × sin(2 × α)/g)#
		-- 	)
		bodyPoint = Vec(0, -0.5*gravity * flight_time*flight_time, -i)
		p = TransformToParentPoint(t, bodyPoint)
		-- DebugCross(p,1,0,0)
		local x, y, dist = UiWorldToPixel(p)
		local height = UiHeight() 
		local w = UiWidth()
		UiPush()
			if dist > 0 then
				UiFont("bold.ttf", 12)
				-- DebugWatch("dist ",dist)
				-- DebugWatch("xy ",x)
				-- DebugWatch("w",w)
				-- DebugWatch("Y",y)
				-- DebugWatch("height",height)
				UiTranslate(x, y)
				UiColor(0,1,0)
				UiText(i)
			end
		UiPop()
	end
	UiPush()

	
		local magazineCapacity =tonumber(GetTagValue(focus_gun,"avf.databus.magazineCapacity"))
		local ammo_count =tonumber(GetTagValue(focus_gun,"avf.databus.ammo_count"))
		UiColor(1,0.6,0,0.7)
		UiAlign("top left")
		local w = 200
		local h = 1*22 + 30
		UiTranslate(UiWidth()-w,100 ) -- because I don't know how big the official vehicle UI will be
		local key =ammo_count .."/" ..magazineCapacity
		local func =""
		UiFont("bold.ttf", 48)
		UiAlign("right")
		UiText(key)
	UiPop()
end



function JAVELIN_SIGHT(weapon,weapon_payload)
	-- SetTag(gun.id,"avf.databus.TRACKING_TARGET",gun.missile_guidance_tracking_target)
	-- SetTag(gun.id,"avf.databus.CURRENT_TRACK",gun.missile_guidance_current_track)
	-- SetTag(gun.id,"avf.databus.TARGET_LOCKED", gun.missile_guidance_current_track>MISSILE_TRACK_TIME_MIN)

	local TRACKING_TARGET =(GetTagValue(weapon,"avf.databus.TRACKING_TARGET"))
	local CURRENT_TRACK =tonumber(GetTagValue(weapon,"avf.databus.CURRENT_TRACK"))
	local TARGET_LOCKED =(GetTagValue(weapon,"avf.databus.TARGET_LOCKED"))	
	-- DebugWatch("TRACKING_TARGET",TRACKING_TARGET)
	-- DebugWatch("CURRENT_TRACK",CURRENT_TRACK)
	-- DebugWatch("TARGET_LOCKED",TARGET_LOCKED)
	 UiPush()
		UiAlign("center middle")
		UiTranslate(UiCenter(), UiMiddle());

		UiImageBox("MOD/avf/gfx/jav_scope.png",UiWidth()*1,UiHeight()*1,1,1)

		local zero_range	 = 400
		local test_range = GetInt("level.avf.zeroing")
		if(
			test_range
			) then 

			if(test_range == 0) then 
				test_range = 50
			end
				zero_range=test_range

		end

		-- DebugWatch("loaded magazine",GetTagValue(focus_gun,"avf.databus.loaded_magazine"))
		local loaded_magazine =tonumber(GetTagValue(weapon,"avf.databus.loaded_magazine"))	
		local ammo_count =tonumber(GetTagValue(weapon,"avf.databus.ammo_count"))	

		gun_vel = weapon_payload.magazines[loaded_magazine].velocity
						
		local grav_coef = 1
		if( weapon_payload.magazines[loaded_magazine].gravityCoef)then 
			grav_coef = weapon_payload.magazines[loaded_magazine].gravityCoef
		end
		grav_g = 10

		-- DebugWatch("barrelcoords",retrieve_first_barrel_coord(val,focus_gun))
		-- DebugCross(retrieve_first_barrel_coord(val,focus_gun).pos)

		local t = retrieve_first_barrel_coord(weapon_payload,weapon)
		local bodyPoint = Vec(0, 0, -0.5)
		local p = TransformToParentPoint(t, bodyPoint)
		-- DebugCross(p,1,0,0)

		local gravity = (grav_g * grav_coef)
		if(weapon_payload.magazines[loaded_magazine].gravityCoef) then
			grav_coef = weapon_payload.magazines[loaded_magazine].gravityCoef
		end
		local flight_time = (zero_range  / gun_vel )
		bodyPoint = Vec(0, -0.5*gravity * flight_time*flight_time, -zero_range)
		p = TransformToParentPoint(t, bodyPoint)
		local x, y, dist = UiWorldToPixel(p)
		local height = UiHeight() 
		local w = UiWidth()
		UiPush()
			if dist > 0 then
				-- DebugWatch("dist ",dist)
				-- DebugWatch("xy ",x)
				-- DebugWatch("w",w)
				-- DebugWatch("Y",y)
				-- DebugWatch("height",height)
				UiTranslate(x, y)
				if(TARGET_LOCKED=="true") then 
					UiColor(0,1,0,1)
				else
					UiColor(1,1,1,1)
				end
				UiImageBox("MOD/avf/gfx/jav_marker.png",UiWidth()*1,UiHeight()*1,1,1)
			end
	UiPop()
						
end
