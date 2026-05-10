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
		["mainCannon"] = {	
					cfgWeapon = {
						component="gun", 
						weaponType="customMG",
						group="primary",
						interact="mountedGun",
						commander = true,
						avf_barrel_coords_true = true

					},
					template = "GMG"
				},	
	},
}
	

	---- magazine num _ val
	---- barrels num value

vehicle = {

}

