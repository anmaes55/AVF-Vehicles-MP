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
				name="2A46 125 mm gun",
			magazines = {
						[1] = {
				name = "125mm APHE",
				caliber 				= 125,
				velocity				= 240,
				explosionSize			= 1.2,
				maxPenDepth 			= 0.1,
				timeToLive 				= 7,
				gravityCoef 			= 0.3,
				launcher				= "cannon",
				payload					= "APHE",
				shellWidth				= 0.5,
				shellHeight				= 1.5,
				r						= 0.1,
				g						= 0.5, 
				b						= 0.2, 
				shellSpriteName			= "MOD/gfx/shellModel2.png",
				shellSpriteRearName		= "MOD/gfx/shellRear2.png",
				magazineCount = 999999,
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
					smokeMulti				= 5,
					soundFile				= "MOD/sounds/tankshot0",
					reloadSound				= "MOD/sounds/AltTankReload",
	
			
		},
		["hull_mg"] = 	{
			name="MG34 Coax",
			sight					= {
										[1] = {
										x=2.12,
										y=1.7,
										z=-0.05,
											},
										},
			barrels		= {
							[1] = {
								x = 0.2,
								y = 0.1,
								z = -0.5,
								}
							},

			-- 				},
			
			magazines = {
						[1] = {name="7.92×57mm Mauser",
					},
				},
			},
	},
}
	

	---- magazine num _ val
	---- barrels num value

vehicle = {

}

