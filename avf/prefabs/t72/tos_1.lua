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
					name 	= "BM-13",
					weaponType 				= "rocket",
					caliber 				= 132,
					magazines 					= {
											[1] = {
									name = "220m MO.1.01.04",
									caliber 				= 220,
									velocity				= 90,
									explosionSize			= 3.5,
									maxPenDepth 			= 0.1,
									gravityCoef 			= 2,
									timeToLive 				= 12,
									launcher				= "rocket",
									payload					= "HE",
									shellWidth				= 1.5,
									shellHeight				= 5,
									r						= 0.7,
									g						= 1.2, 
									b						= 0.7, 
									shellSpriteName			= "MOD/gfx/rocketModel2.png",
									shellSpriteRearName		= "MOD/gfx/rocketRear.png",
									flightLoop				= "MOD/sounds/rocketFlightLoop0",
									magazineCapacity = 14,
									ammoCount = 0,
									magazineCount = 150,



												},
											},
					loadedMagazine 			= 1,
					barrels 				= 
												{
													[1] = {x=0.2,y=0.5,z=-0.6},
												
												},
					multiBarrel 			= 1,
					backBlast				= 
												{
													[1] = {z=3.0,force=5},
												},
					sight					= {
												[1] = {
												x = 2.3,
												y = 1.3,
												z = 0.3,
													},


												},
					canZoom					= true,
					highVelocityShells		= true,
					RPM 					= 150,
					reload 					= 5,
					recoil 					= 0.3,
					weapon_recoil 			= 75,
					cannonBlast 			= 0.2,
					dispersion 				= 20,
					gunRange				= 500,
					gunBias 				= -1,
					elevationSpeed			= .5,
					smokeFactor 			= 2,
					smokeMulti				= 10,
					soundFile				= "MOD/sounds/rockets/rocket_launcher_06",

				},		
			},
	
	
}
	

	---- magazine num _ val
	---- barrels num value

vehicle = {

}

