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
					name 	= "Type 63",
					weaponType 				= "rocket",
					caliber 				= 106.7,
					magazines 					= {
											[1] = {
							magazineCapacity = 14,
							ammoCount = 0,
							magazineCount = 150,
							name = "107mm Type 63 rocket HE Mid",
							caliber 				= 106.7,
							velocity				= 50,
							explosionSize			= 1.5,
							maxPenDepth 			= 0.1,
							timeToLive 				= 20,
							launcher				= "rocket",
							payload					= "HE",
							shellWidth				= 1,
							shellHeight				= 3,
							r						= 0.1,
							g						= .3, 
							b						= 0.1, 
							shellSpriteName			= "MOD/gfx/rocketModel2.png",
							shellSpriteRearName		= "MOD/gfx/rocketRear.png",
									flightLoop				= "MOD/sounds/rocketFlightLoop0",

												},
											[2] = {
							magazineCapacity = 14,
							ammoCount = 0,
							magazineCount = 150,
							name = "107mm Type 63 rocket HE Far",
							caliber 				= 106.7,
							velocity				= 60,
							explosionSize			= 1.5,
							maxPenDepth 			= 0.1,
							timeToLive 				= 20,
							launcher				= "rocket",
							payload					= "HE",
							shellWidth				= 1,
							shellHeight				= 3,
							r						= 0.1,
							g						= .5, 
							b						= 0.1, 
							shellSpriteName			= "MOD/gfx/rocketModel2.png",
							shellSpriteRearName		= "MOD/gfx/rocketRear.png",
									flightLoop				= "MOD/sounds/rocketFlightLoop0",
												},
											[3] = {
							magazineCapacity = 14,
							ammoCount = 0,
							magazineCount = 150,
							name = "122mm rocket HE Close",
							caliber 				= 122,
							velocity				= 45,
							explosionSize			= 1.8,
							maxPenDepth 			= 0.1,
							timeToLive 				= 12,
							launcher				= "rocket",
							payload					= "HE",
							shellWidth				= 1,
							shellHeight				= 3,
							r						= 0.1,
							g						= .8, 
							b						= 0.1, 
							shellSpriteName			= "MOD/gfx/rocketModel2.png",
							shellSpriteRearName		= "MOD/gfx/rocketRear.png",
									flightLoop				= "MOD/sounds/rocketFlightLoop0",

												},
											},
					loadedMagazine 			= 1,
					barrels 				= 
												{
													[1] = {x=0.2,y=0.2,z=-0.3},
												},
					multiBarrel 			= 1,
					backBlast				= 
												{
													[1] = {z=1.45,force=10},
												},
					sight					= {
												[1] = {
												x = 2.2,
												y = 1.3,
												z = 0.3,
											},


												},
					canZoom					= true,
					highVelocityShells		= true,
					RPM 					= 90,
					reload 					= 5,
					recoil 					= 0.3,
					weapon_recoil 			= 100,
					cannonBlast 			= 0,
					dispersion 				= 10,
					gunRange				= 500,
					gunBias 				= -1,
					elevationSpeed			= .5,
					smokeFactor 			= 2,
					smokeMulti				= 10,
					soundFile				= "MOD/sounds/rockets/rocket_launcher_01",

				},		
			},
	
	
}
	

	---- magazine num _ val
	---- barrels num value

vehicle = {

}

