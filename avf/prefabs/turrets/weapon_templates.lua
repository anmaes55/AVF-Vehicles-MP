#include "../../scripts/avf_custom.lua"


--[[

	use this file to config the parameters for your tank

	Feel free to rename this to the name of your tank



]]

templates = {

	["2A13"] = {
		name = "23 mm 2A13 autocannons",
		weaponType 				= "cannon",
		caliber 				= 23,
		default = "B_23mm_AA",
		magazines 					= {
								[1] = {
										name = "B_23mm_AA",
										magazineCapacity = 100,
										ammoCount = 0,
										magazineCount = 50,
										caliber 				= 23,
										velocity				= 220,
										explosionSize 			= .55,
										maxPenDepth 			= 0.1,
										timeToLive 				= 7,
										launcher				= "cannon",
										payload					= "HE",
										shellWidth				= 0.1,
										shellHeight				= 0.7,
										r						= 0.5,
										g						= 0.5, 
										b						= 0.5, 
										tracer 					= 1,
										tracerL					= 5,
										tracerW					= 2,
										tracerR					= 1.8,
										tracerG					= 1.0, 
										tracerB					= 1.0, 
										shellSpriteName			= "MOD/gfx/shellModel2.png",
										shellSpriteRearName		= "MOD/gfx/shellRear2.png",
																						
									},
								[2] = {
										name = "B_23mm_AA_AP",
										magazineCapacity = 200,
										ammoCount = 0,
										magazineCount = 10,			
										caliber 				= 23,
										velocity				= 220,
										explosionSize 			= .6,
										maxPenDepth 			= 0.5,
										timeToLive 				= 7,
										launcher				= "cannon",
										payload					= "AP",
										shellWidth				= 0.1,
										shellHeight				= 0.7,
										r						= 0.5,
										g						= 0.5, 
										b						= 0.5, 
										tracer 					= 1,
										tracerL					= 5,
										tracerW					= 2,
										tracerR					= 1.8,
										tracerG					= 1.0, 
										tracerB					= 1.0, 
										shellSpriteName			= "MOD/gfx/shellModel2.png",
										shellSpriteRearName		= "MOD/gfx/shellRear2.png",

									},
								},
		loadedMagazine 			= 1,
		barrels = 
					{
						[1] = {x=0.2,y=.1,z=-1.2},
						[2] = {x=0.6,y=.1,z=-1.2},
					},
		multiBarrel 			= 1,
		sight					= {
									[1] = {
									x = 1.2,
									y = 1.3,
									z = 0.3,
									},


									},
		canZoom					= false,
		highVelocityShells		= true,
		RPM 					= 350,
		reload 					= 4,
		cannonBlast				= 0.1,
		recoil 					= 0.05,
		weapon_recoil 			= 2400,
		dispersion 				= 20,
		gunRange				= 500,
		gunBias 				= -1,
		smokeFactor 			= .5,
		smokeMulti				= 1,
		soundFile   = "MOD/sounds/autocannons/zsu_23_2_single",
		mouseDownSoundFile 			=	"MOD/sounds/autocannons/zsu_23_2_sub_burst_02",
	},

	["D-30"] = {
		name = "D-30 Artillary",
		weaponType 				= "cannon",
		caliber 				= 152,
		default = "152mm_HE",
		magazines 					= {
								[1] = {
										name = "152mm_HE",
										magazineCapacity = 1,
										ammoCount = 0,
										magazineCount = 300,
										caliber 				= 152,
										velocity				= 200,
										gravityCoef				= 3,
										explosionSize			= 3.5,
										maxPenDepth 			= 0.25,
										timeToLive 				= 7,
										launcher				= "cannon",
										payload					= "HE",
										shellWidth				= 1.5,
										shellHeight				= 3,
										r						= 0.8,
										g						= 0.3, 
										b						= 0.3, 
										shellSpriteName			= "MOD/gfx/shellModel2.png",
										shellSpriteRearName		= "MOD/gfx/shellRear2.png",
								},
							},
		loadedMagazine 			= 1,
		barrels 				= 
									{
										[1] = {x=0.2,y=0.2,z=-0.3},
									},
		multiBarrel 			= 1,
		sight					= {
									[1] = {
									x = 3,
									y = 1.3,
									z = 0.3,
										},

									},
		canZoom					= true,
		highVelocityShells		= true,
		cannonBlast 			= 10,
		RPM 					= 10,
		reload 					= 2,
		recoil 					= 2.5,
		dispersion 				= 20,
		gunRange				= 500,
		gunBias 				= -1,
		elevationSpeed			= .5,
		smokeFactor 			= 3,
		smokeMulti				= 20,
		soundFile				= "MOD/sounds/Relic_700_KV2Fire",
	},

}
	


