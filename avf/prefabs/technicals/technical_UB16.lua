#include "../../scripts/avf_custom.lua"


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
					name 	= "UB-16-57",
					weaponType 				= "rocket",
					caliber 				= 55,
					magazines 					= {
											[1] = {
													name = "S-5M",
													magazineCapacity = 16,
													ammoCount = 0,
													magazineCount = 100,
													caliber 				= 55,
													velocity				= 200,
													explosionSize			= 1.25,
													maxPenDepth 			= 0.2,
													timeToLive 				= 12,
													launcher				= "rocket",
													payload					= "HE",
													shellWidth				= 0.5,
													shellHeight				= 1.2,
													r						= 0.25,
													g						= 0.3, 
													b						= 0.3, 
														shellSpriteName			= "MOD/gfx/rocketModel2.png",
													shellSpriteRearName		= "MOD/gfx/rocketRear.png",

												},
											},
					loadedMagazine 			= 1,
					barrels 				= 
												{
													[1] = {x=0.2,y=0.1,z=-0.5},
												},
					multiBarrel 			= 1,
					backBlast				= 
												{
													[1] = {z=1.45,force=5},
												},
					sight					= {
												[1] = {
												x = 0 ,
												y = 0,
												z = -0.6,
											},


												},
					canZoom					= true,
					zoomSight 				= "MOD/gfx/chopperScope9.png",
					highVelocityShells		= true,
					RPM 					= 300,
					reload 					= 5,
					recoil 					= 0.5,
					weapon_recoil 			= 50,
					cannonBlast 			= 1.5,
					dispersion 				= 150,
					gunRange				= 500,
					gunBias 				= -1,
					elevationSpeed			= .5,
					smokeFactor 			= 1,
					smokeMulti				= 3,
					soundFile				= "MOD/sounds/recoilessRifle0",

				},		
			},
	
	
}
	

	---- magazine num _ val
	---- barrels num value

vehicle = {

}

