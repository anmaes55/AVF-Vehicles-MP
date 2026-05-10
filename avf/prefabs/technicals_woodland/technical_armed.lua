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
		["secondary_GPMG"] = {	
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
					template = "KSP_88_2",
					custom_sight_script = true,

				},	
		["mainCannon2"] = {	
					cfgWeapon = {
						component="gun", 
						weaponType="customMG",
						group="1",
						interact="mountedGun",
						commander = true,
						avf_barrel_coords_true = true

					},
					template = "KSP_88_2"
				},	
		["igla"] = {	
					cfgWeapon = {
						component="gun", 
						weaponType="customcannon",
						group="1",
						interact="mountedGun",
						commander = true,
						avf_barrel_coords_true = true,
					},
					template = "igla",
					custom_sight_script = true,

				},	
	},
}
	

	---- magazine num _ val
	---- barrels num value

vehicle = {

}

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
				if(HasTag(focus_gun,"avf.databus.loaded_magazine")) then  
					-- DebugWatch("loaded magazine",GetTagValue(focus_gun,"avf.databus.loaded_magazine"))
					local loaded_magazine =tonumber(GetTagValue(focus_gun,"avf.databus.loaded_magazine"))		 	
					gun_vel = val.magazines[loaded_magazine].velocity
					grav_coef = 1
					grav_g = 10

					-- DebugWatch("barrelcoords",retrieve_first_barrel_coord(val,focus_gun))
					-- DebugCross(retrieve_first_barrel_coord(val,focus_gun).pos)

					local t = retrieve_first_barrel_coord(val,focus_gun)
					local bodyPoint = Vec(0, 0, -0.5)
					local p = TransformToParentPoint(t, bodyPoint)
					-- DebugCross(p,1,0,0)

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
					local gravity = (grav_g * grav_coef)
					for i =50,400,50 do 
						local flight_time = (i  / gun_vel )
						-- DebugWatch(
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

				end
			end

			-- DebugWatch("CUSTOM SIGHT",val.custom_sight_script)
			if(HasTag(focus_gun,key) and val.custom_sight_script) then
				draw_custom_sight(focus_gun,key,val)
			 -- (22 m/s)² × sin(2 × 35°)/9.81 m/s²
			 -- d = V₀² × sin(2 × α)/g

				-- DebugPrint(key.." | added")
				break
			end
		end

	end

end

function draw_custom_sight(gun,gun_key,gun_values)
	if(gun_key=="igla") then 
		igla_scope()
	end
end