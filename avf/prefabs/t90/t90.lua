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
					name 	= "2A46 125 mm gun",
					weaponType 				= "cannon",
					caliber 				= 125,
					default = "125mm_HEAT",
					magazines 					= {
						[1] = {
								name = "125mm HEAT",
								caliber 				= 125,
								velocity				= 220,
								explosionSize			= 1.2,
								maxPenDepth 			= 2.2,
								timeToLive 				= 7,
								gravityCoef 			= 0.9,--0.3,
								launcher				= "cannon",
								payload					= "HEAT",
								shellWidth				= 0.5,
								shellHeight				= 1.5,
								r						= 0.3,
								g						= 0.6, 
								b						= 0.3, 
								shellSpriteName			= "MOD/gfx/shellModel2.png",
								shellSpriteRearName		= "MOD/gfx/shellRear2.png",
								magazineCapacity = 1,
								ammoCount = 0,
								magazineCount = 500,

							},
						[2] = {
								name = "125mm APFSDS",
								caliber 				= 125,
								velocity				= 270,
								explosionSize			= 0.5,
								maxPenDepth 			= 1.2,
								timeToLive 				= 7,
								gravityCoef 			= 0.9,
								launcher				= "cannon",
								payload					= "kinetic",
								shellWidth				= 0.5,
								shellHeight				= 1.5,
								r						= 1.7,
								g						= 1.7, 
								b						= 1.7, 
								shellSpriteName			= "MOD/gfx/sabot.png",
								shellSpriteRearName		= "MOD/gfx/sabotRear.png",
								magazineCapacity = 1,
								ammoCount = 0,
								magazineCount = 500,
							},
						[3] = {
								name = "125mm HE",
								caliber 				= 125,
								velocity				= 200,
								explosionSize			= 1.5,
								maxPenDepth 			= 0.1,
								timeToLive 				= 7,
								gravityCoef 			= 1,
								launcher				= "cannon",
								payload					= "HE",
								shellWidth				= 0.5,
								shellHeight				= 1.5,
								r						= 0.8,
								g						= 0.3, 
								b						= 0.3, 
								shellSpriteName			= "MOD/gfx/shellModel2.png",
								shellSpriteRearName		= "MOD/gfx/shellRear2.png",
								magazineCapacity = 1,
								ammoCount = 0,
								magazineCount = 500,
							}, 
						},
					loadedMagazine 			= 1,
					barrels 				= 
												{
													[1] = {x=0.2,y=0.2,z=-0.3},
												},
					sight					= {
												[1] = {
												x=3,
												y=1.3,
												z=0.3,
													},
												},

					scope_offset 			= {
												[1] = {
													x = 0.01,
													y = -0.02
													},
											},
					canZoom					= true,
					zoomSight 				= "MOD/gfx/1G46Sight.png",
					multiBarrel 			= 1,
					highVelocityShells		= true,
					cannonBlast 			= 10,
					RPM 					= 30,
					reload 					= 2,
					recoil 					= 1.6,
					dispersion 				= 1,
					gunRange				= 500,
					gunBias 				= -1,
					elevationSpeed			= .5,
					smokeFactor 			= 2,
					smokeMulti				= 3,
					soundFile				= "MOD/sounds/tankshot0",
					reloadSound				= "MOD/sounds/AltTankReload",

				},

	},
}
	

	---- magazine num _ val
	---- barrels num value

vehicle = {

}

