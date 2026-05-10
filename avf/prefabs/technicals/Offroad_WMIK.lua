--[[
#include "../weapon_templates/weapon_templates.lua"
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
					template = "GPMG"
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
		["GMG"] = {	
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
		["mainCannon"] = {	
					cfgWeapon = {
						component="gun", 
						weaponType="customMG",
						group="1",
						interact="mountedGun",
						commander = true,
						avf_barrel_coords_true = true

					},
					template = "L1A1_2"
				},	
	},
}
	

	---- magazine num _ val
	---- barrels num value

vehicle = {

}

