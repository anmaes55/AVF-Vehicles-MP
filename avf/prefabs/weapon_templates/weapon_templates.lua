#version 2

--[[
	use this file to config the parameters for your tank

	Feel free to rename this to the name of your tank



]]

templates = {


--[[


	Tank Cannons


]]

		["2A46"] = {


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
								RHAe 					= 550,
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
								RHAe 					= 454,
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
								RHAe 					= 42,
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
					RPM 					= 12,
					reload 					= 6,
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



		["2A46M"] = {
					name 	= "2A46M 125 mm gun",
					weaponType 				= "cannon",
					caliber 				= 125,
					default = "125mm_HEAT",
					magazines 					= {
						[1] = {
								name = "125mm HEAT",
								caliber 				= 125,
								velocity				= 200,
								explosionSize			= 1.0,
								RHAe 					= 550,
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
								velocity				= 250,
								explosionSize			= 0.4,
								RHAe 					= 454,
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
								velocity				= 180,
								explosionSize			= 1.35,
								RHAe 					= 42,
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
					RPM 					= 8,
					reload 					= 8,
					recoil 					= 1.8,
					dispersion 				= 1,
					gunRange				= 500,
					gunBias 				= -1,
					elevationSpeed			= .5,
					smokeFactor 			= 2,
					smokeMulti				= 3,
					soundFile				= "MOD/sounds/tankshot0",
					reloadSound				= "MOD/sounds/AltTankReload",


				},


		["2A46M1"] = {

					name 	= "2A46M-1 125 mm gun",
					weaponType 				= "cannon",
					caliber 				= 125,
					default = "125mm_HEAT",
					magazines 					= {
						[1] = {
								name = "125mm HEAT",
								caliber 				= 125,
								velocity				= 220,
								explosionSize			= 1.2,
								RHAe 					= 550,
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
								RHAe 					= 454,
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
								RHAe 					= 42,
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
					RPM 					= 15,
					reload 					= 4.5,
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

--[[

	#############################################################################


							AUTOCANNONS
		

	#############################################################################



]]




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
										RHAe 					= 2,
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
										RHAe 					= 48,
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


--[[

	#############################################################################


							ARTILLERY
		

	#############################################################################



]]



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
										gravityCoef				= 12,
										explosionSize			= 3.5,
										RHAe 					= 12,
										timeToLive 				= 7,
										launcher				= "cannon",
										payload					= "HE",
										shellWidth				= .5,
										shellHeight				= 1,
										r						= 0.8,
										g						= 0.3, 
										b						= 0.3, 
										shellSpriteName			= "MOD/gfx/shellModel2.png",
										shellSpriteRearName		= "MOD/gfx/shellRear2.png",
								},
								[2] =  {
										name = "BK-6M HEAT",
										magazineCapacity = 1,
										ammoCount = 0,
										magazineCount = 50,
										caliber 				= 152,
										velocity				= 150,
										explosionSize			= 1.2,
										RHAe 					= 510,
										timeToLive 				= 7,
										gravityCoef 			= 14,--0.3,
										launcher				= "cannon",
										payload					= "HEAT",
										shellWidth				= .5,
										shellHeight				= 1,
										r						= 0.3,
										g						= 0.8, 
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
		cannonBlast 			= 1,
		RPM 					= 10,
		reload 					= 2,
		recoil 					= 0.05,
		weapon_recoil 			= 750,
		dispersion 				= 15,
		gunRange				= 500,
		gunBias 				= -1,
		elevationSpeed			= .3,
		smokeFactor 			= 3,
		smokeMulti				= 20,
		soundFile				= "MOD/sounds/Relic_700_KV2Fire",
	},





--[[

	#############################################################################


							Anti Tank rockets and ATGMS
		

	#############################################################################



]]
		["SPG9"] = {
			name 	= "SPG-9",
					weaponType 				= "rocket",
					caliber 				= 73,
					magazines 					= {
											[1] = {
													name = "PG9_AT",
													magazineCapacity = 1,
													ammoCount = 0,
													magazineCount = 100,
													caliber 				= 73,
													velocity				= 430,
													explosionSize			= 1,
													gravityCoef 			= 1.25,
													RHAe 					= 400,
													timeToLive 				= 12,
													launcher				= "rocket",
													payload					= "HEAT",
													shellWidth				= 0.8,
													shellHeight				= 1.5,
													r						= 0.3,
													g						= 0.8, 
													b						= 0.3, 
													shellSpriteName			= "MOD/gfx/rocketModel.png",
													shellSpriteRearName		= "MOD/gfx/rocketRear.png",

												},
											[2] = {
													name = "OG9_HE",
													magazineCapacity = 1,
													ammoCount = 0,
													magazineCount = 100,
													velocity				= 400,
													explosionSize			= 1.2,
													RHAe 					= 5,

													gravityCoef 			= 1.5,
													timeToLive 				= 12,
													launcher				= "rocket",
													payload					= "HE",
													shellWidth				= 0.8,
													shellHeight				= 1.5,
													r						= 0.3,
													g						= 0.8, 
													b						= 0.3, 
													shellSpriteName			= "MOD/gfx/rocketModel.png",
													shellSpriteRearName		= "MOD/gfx/rocketRear.png",
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
												x = 0.6,
												y = 1.8,
												z = 0.2,
													},


												},
					backBlast				= 
												{
													[1] = {z=4.3,force=5},
												},
					canZoom					= true,
					zoomSight 				= "MOD/gfx/spg9-sight.png",
					highVelocityShells		= true,
					RPM 					= 20,
					reload 					= 2,
					recoil 					= 0.1,
					weapon_recoil 			= 333,
					cannonBlast 			= 2.5,
					dispersion 				= 20,
					gunRange				= 500,
					gunBias 				= -1,
					elevationSpeed			= .5,
					smokeFactor 			= 1,
					smokeMulti				= 5,
					soundFile				= "MOD/sounds/recoilessRifle0",
				},


		["9M133"]  = {
					name 	= "9M133 Kornet",
					weaponType 				= "atgm",
					caliber 				= 73,
					magazines 					= {
											[1] = {
										name = "9M133M-2",
										magazineCapacity = 1,
										ammoCount = 0,
										magazineCount = 60,
										caliber 				= 152,
										velocity				= 20,
										gravityCoef 			= 0,
										dispersionCoef 			= 0,
										explosionSize			= 1.2,
										RHAe 					= 1100,
										timeToLive 				= 12,
										launcher				= "guided",
										payload					= "HEAT",
										shellWidth				= 0.8,
										shellHeight				= 1.5,
										r						= 0.9,
										g						= 0.3, 
										b						= 0.3, 
										shellSpriteName			= "MOD/gfx/rocketModel.png",
										shellSpriteRearName		= "MOD/gfx/rocketRear.png",
										flightLoop				= "MOD/sounds/rocketFlightLoop0",

												},
											},
					loadedMagazine 			= 1,
					barrels 				= 
												{
													[1] = {x=0.3,y=0.2,z=-0.3},
												},
					multiBarrel 			= 1,
					sight					= {
												[1] = {
												x = 0.6,
												y = 1.2,
												z = -.7,
													},


												},
					backBlast				= 
												{
													[1] = {z=1.3,force=5},
												},
					canZoom					= true,
					aimForwards				= true,
					zoomSight 				= "MOD/gfx/KORNETsight.png",
					highVelocityShells		= true,
					RPM 					= 20,
					reload 					= 2,
					recoil 					= 0,
					dispersion 				= 20,
					gunRange				= 500,
					gunBias 				= -1,
					elevationSpeed			= 0.4,
					smokeFactor 			= 2,
					smokeMulti				= 10,
					soundFile				= "MOD/sounds/atgm00",
				},

		["MILAN"]  = {
					name 	= "MILAN ",
					weaponType 				= "atgm",
					caliber 				= 73,
					magazines 					= {
											[1] = {
										name = "MILAN-2 ",
										magazineCapacity = 1,
										ammoCount = 0,
										magazineCount = 60,
										caliber 				= 125,
										velocity				= 40,
										gravityCoef 			= 0,
										dispersionCoef 			= 0,
										explosionSize			= 1.45,
										maxPenDepth 			= 1.8,
										RHAe 					= 1000,
										timeToLive 				= 12,
										launcher				= "guided",
										payload					= "HEAT",
										chargeType					= "tandem",
										shellWidth				= 0.5,
										shellHeight				= 1.25,
										r						= 0.9,
										g						= 0.3, 
										b						= 0.3, 
										shellSpriteName			= "MOD/gfx/rocketModel.png",
										shellSpriteRearName		= "MOD/gfx/rocketRear.png",
										flightLoop				= "MOD/sounds/rocketFlightLoop0",

												},
											},
					loadedMagazine 			= 1,
					barrels 				= 
												{
													[1] = {x=0.3,y=0.2,z=-0.3},
												},
					multiBarrel 			= 1,
					sight					= {
												[1] = {
												x = 0.6,
												y = 1.2,
												z = -.7,
													},
					scope_offset 			= {
												[1] = {
													x = 0.00,
													y = 0.01
													},
											},


												},
					backBlast				= 
												{
													[1] = {z=1.3,force=5},
												},
					canZoom					= true,
					aimForwards				= true,
					zoomSight 				= "MOD/gfx/KORNETsight.png",
					highVelocityShells		= true,
					RPM 					= 20,
					reload 					= 2,
					cannonBlast				= 0.1,
					recoil 					= 0,
					dispersion 				= 20,
					gunRange				= 500,
					gunBias 				= -1,
					elevationSpeed			= 0.2,
					smokeFactor 			= 2,
					smokeMulti				= 10,
					soundFile				= "MOD/sounds/atgm00",
				},

		["MILAN_02"]  = {
					name 	= "MILAN ",
					weaponType 				= "atgm",
					caliber 				= 73,
					magazines 					= {
											[1] = {
										name = "MILAN-2 ",
										magazineCapacity = 1,
										ammoCount = 0,
										magazineCount = 60,
										caliber 				= 125,
										velocity				= 60,
										gravityCoef 			= 0,
										dispersionCoef 			= 0,
										explosionSize			= 1.45,
										maxPenDepth 			= 1.8,
										RHAe 					= 1000,
										timeToLive 				= 12,
										launcher				= "guided",
										payload					= "HEAT",
										shellWidth				= 0.5,
										shellHeight				= 1.25,
										r						= 0.9,
										g						= 0.3, 
										b						= 0.3, 
										shellSpriteName			= "MOD/gfx/rocketModel.png",
										shellSpriteRearName		= "MOD/gfx/rocketRear.png",
										flightLoop				= "MOD/sounds/rocketFlightLoop0",

												},
											},
					loadedMagazine 			= 1,
					barrels 				= 
												{
													[1] = {x=0.3,y=0.2,z=-0.3},
												},
					multiBarrel 			= 1,
					sight					= {
												[1] = {
												x = 0.6,
												y = 1.2,
												z = -.7,
													},
					scope_offset 			= {
												[1] = {
													x = 0.00,
													y = 0.00
													},
											},


												},
					backBlast				= 
												{
													[1] = {z=1.3,force=5},
												},
					canZoom					= true,
					aimForwards				= true,
					zoomSight 				= "MOD/gfx/KORNETsight.png",
					highVelocityShells		= true,
					RPM 					= 20,
					reload 					= 2,
					cannonBlast				= 0.1,
					recoil 					= 0,
					dispersion 				= 20,
					gunRange				= 500,
					gunBias 				= -1,
					elevationSpeed			= 0.2,
					smokeFactor 			= 2,
					smokeMulti				= 10,
					soundFile				= "MOD/sounds/atgm00",
				},





		["igla"]  = {
					name 	= "9K38 Igla",
					weaponType 				= "atgm",
					caliber 				= 73,
					magazines 					= {
											[1] = {
										name = "9M39 TOP DOWN",
										magazineCapacity = 1,
										ammoCount = 0,
										magazineCount = 60,
										caliber 				= 72,
										velocity				= 60,
										gravityCoef 			= 0,
										dispersionCoef 			= 0,
										explosionSize			= 1.0,
										RHAe		 			= 760,
										timeToLive 				= 12,
										launcher				= "guided",
										guidance 				= "homing",
										attack_pattern 				= "top_down",
										missile_ramp_speed = 0.85,
										guidance_peak_dist = 50,
										guidance_height_ratio = 0.8,
										payload					= "HEAT",
										chargeType=				'tandem',
										shellWidth				= 0.8,
										shellHeight				= 1.5,
										r						= 0.9,
										g						= 0.3, 
										b						= 0.3, 
										shellSpriteName			= "MOD/gfx/rocketModel.png",
										shellSpriteRearName		= "MOD/gfx/rocketRear.png",
										flightLoop				= "MOD/sounds/rocketFlightLoop0",

												},
											[2] = {
										name = "9M39 DIRECT",
										magazineCapacity = 1,
										ammoCount = 0,
										magazineCount = 60,
										caliber 				= 72,
										velocity				= 60,
										gravityCoef 			= 0,
										dispersionCoef 			= 0,
										explosionSize			= 1.0,
										RHAe		 			= 760,
										timeToLive 				= 12,
										launcher				= "guided",
										guidance 				= "homing",
										attack_pattern 				= "direct",
										missile_ramp_speed = 0.85,
										guidance_peak_dist = 50,
										guidance_height_ratio = 0.8,
										payload					= "HEAT",
										chargeType=				'tandem',
										shellWidth				= 0.8,
										shellHeight				= 1.5,
										r						= 0.9,
										g						= 0.3, 
										b						= 0.3, 
										shellSpriteName			= "MOD/gfx/rocketModel.png",
										shellSpriteRearName		= "MOD/gfx/rocketRear.png",
										flightLoop				= "MOD/sounds/rocketFlightLoop0",

												},
											[3] = {
										name = "9M39 TOP DOWN_close",
										magazineCapacity = 1,
										ammoCount = 0,
										magazineCount = 60,
										caliber 				= 72,
										velocity				= 60,
										gravityCoef 			= 0,
										dispersionCoef 			= 0,
										explosionSize			= 1.0,
										RHAe		 			= 760,
										timeToLive 				= 12,
										launcher				= "guided",
										guidance 				= "homing",
										attack_pattern 				= "top_down",
										missile_ramp_speed = 0.85,
										guidance_peak_dist = 25,
										guidance_height_ratio = 1.8,
										payload					= "HEAT",
										chargeType=				'tandem',
										shellWidth				= 0.8,
										shellHeight				= 1.5,
										r						= 0.9,
										g						= 0.3, 
										b						= 0.3, 
										shellSpriteName			= "MOD/gfx/rocketModel.png",
										shellSpriteRearName		= "MOD/gfx/rocketRear.png",
										flightLoop				= "MOD/sounds/rocketFlightLoop0",

												},
										[4] = {
												name = "PG9_AT",
												magazineCapacity = 1,
												ammoCount = 0,
												magazineCount = 100,
												caliber 				= 73,
												velocity				= 430,
												explosionSize			= 1,
												gravityCoef 			= 1.25,
												RHAe 					= 400,
												timeToLive 				= 12,
												launcher				= "rocket",
												payload					= "HEAT",
												shellWidth				= 0.8,
												shellHeight				= 1.5,
												r						= 0.3,
												g						= 0.8, 
												b						= 0.3, 
												shellSpriteName			= "MOD/gfx/rocketModel.png",
												shellSpriteRearName		= "MOD/gfx/rocketRear.png",

											},
											},
					loadedMagazine 			= 1,
					barrels 				= 
												{
													[1] = {x=0.3,y=0.2,z=-0.3},
												},
					multiBarrel 			= 1,
					sight					= {
												[1] = {
												x = 0.6,
												y = 1.2,
												z = -.7,
													},


												},

					backBlast				= 
												{
													[1] = {z=1.3,force=5},
												},
					canZoom					= true,
					aimForwards				= true,
					zoomSight 				= "MOD/gfx/KORNETsight.png",
					highVelocityShells		= true,
					RPM 					= 20,
					reload 					= 2,
					recoil 					= 0,
					dispersion 				= 20,
					gunRange				= 500,
					gunBias 				= -1,
					elevationSpeed			= 0.4,
					smokeFactor 			= 2,
					smokeMulti				= 10,
					soundFile				= "MOD/sounds/atgm00",
				},







		["javelin"]  = {
					name 	= "FGM-148 Javelin",
					weaponType 				= "atgm",
					caliber 				= 73,
					magazines 					= {
											[1] = {
										name = "TOP DOWN",
										magazineCapacity = 1,
										ammoCount = 0,
										magazineCount = 60,
										caliber 				= 72,
										velocity				= 60,
										gravityCoef 			= 0,
										dispersionCoef 			= 0,
										explosionSize			= 1.0,
										RHAe		 			= 760,
										timeToLive 				= 12,
										launcher				= "guided",
										guidance 				= "homing",
										attack_pattern 				= "top_down",
										missile_ramp_speed = 0.85,
										guidance_peak_dist = 50,
										guidance_height_ratio = 0.8,
										payload					= "HEAT",
										chargeType=				'tandem',
										shellWidth				= 0.8,
										shellHeight				= 1.5,
										r						= 0.9,
										g						= 0.3, 
										b						= 0.3, 
										shellSpriteName			= "MOD/gfx/rocketModel.png",
										shellSpriteRearName		= "MOD/gfx/rocketRear.png",
										flightLoop				= "MOD/sounds/rocketFlightLoop0",

												},
											[2] = {
										name = "DIRECT",
										magazineCapacity = 1,
										ammoCount = 0,
										magazineCount = 60,
										caliber 				= 72,
										velocity				= 60,
										gravityCoef 			= 0,
										dispersionCoef 			= 0,
										explosionSize			= 1.0,
										RHAe		 			= 760,
										timeToLive 				= 12,
										launcher				= "guided",
										guidance 				= "homing",
										attack_pattern 				= "direct",
										missile_ramp_speed = 0.85,
										guidance_peak_dist = 50,
										guidance_height_ratio = 0.8,
										payload					= "HEAT",
										chargeType=				'tandem',
										shellWidth				= 0.8,
										shellHeight				= 1.5,
										r						= 0.9,
										g						= 0.3, 
										b						= 0.3, 
										shellSpriteName			= "MOD/gfx/rocketModel.png",
										shellSpriteRearName		= "MOD/gfx/rocketRear.png",
										flightLoop				= "MOD/sounds/rocketFlightLoop0",

												},
											[3] = {
										name = "TOP DOWN_close",
										magazineCapacity = 1,
										ammoCount = 0,
										magazineCount = 60,
										caliber 				= 72,
										velocity				= 60,
										gravityCoef 			= 0,
										dispersionCoef 			= 0,
										explosionSize			= 1.0,
										RHAe		 			= 760,
										timeToLive 				= 12,
										launcher				= "guided",
										guidance 				= "homing",
										attack_pattern 				= "top_down",
										missile_ramp_speed = 0.85,
										guidance_peak_dist = 25,
										guidance_height_ratio = 1.8,
										payload					= "HEAT",
										chargeType=				'tandem',
										shellWidth				= 0.8,
										shellHeight				= 1.5,
										r						= 0.9,
										g						= 0.3, 
										b						= 0.3, 
										shellSpriteName			= "MOD/gfx/rocketModel.png",
										shellSpriteRearName		= "MOD/gfx/rocketRear.png",
										flightLoop				= "MOD/sounds/rocketFlightLoop0",

												},
											},
					loadedMagazine 			= 1,
					barrels 				= 
												{
													[1] = {x=0.3,y=0.2,z=-0.3},
												},
					multiBarrel 			= 1,
					sight					= {
												[1] = {
												x = 0.6,
												y = 1.2,
												z = -.7,
													},


												},

					backBlast				= 
												{
													[1] = {z=1.3,force=5},
												},
					canZoom					= true,
					aimForwards				= true,
					zoomSight 				= "MOD/gfx/KORNETsight.png",
					highVelocityShells		= true,
					RPM 					= 20,
					reload 					= 2,
					recoil 					= 0,
					dispersion 				= 20,
					gunRange				= 500,
					gunBias 				= -1,
					elevationSpeed			= 0.4,
					smokeFactor 			= 2,
					smokeMulti				= 10,
					soundFile				= "MOD/sounds/atgm00",
				},

--[[

	#############################################################################


							MACHINE GUNS / Grenade Machine Guns
		

	#############################################################################



]]


	["GMG"] = {
					name 	= "L134A1",
					caliber 				= 30,
					weaponType 				= "GMGun",
					loadedMagazine 			= 1,
					magazines 					= {
											[1] = {
									name = "40 mm grenade",
									magazineCapacity = 60,
									ammoCount = 0,
									magazineCount = 50,
									caliber 				= 40,
									velocity				= 180,
									gravityCoef 			= 1.7,
									explosionSize			= .7,
									maxPenDepth 			= 0.17,
									RHAe 					= 50,
									timeToLive 				= 20,
									launcher				= "cannon",
									payload					= "HE",
									shellWidth				= 0.3,
									shellHeight				= .55,
									r						= 0.6,
									g						= 0.3, 
									b						= 0.3, 
									shellSpriteName			= "MOD/gfx/shellModel2.png",
									shellSpriteRearName		= "MOD/gfx/shellRear2.png",
			},
											},

				barrels 				= 
											{
												[1] = {x=0.65,y=0.3,z=-0.1},
											},
				multiBarrel 			= 1,

				sight					= {
												[1] = {
											x = 0.15,
											y = 0.9,
											z = 1.68,
												},


											},
				canZoom					= false,
				aimForwards				= true,
				RPM 					= 340 ,
				cannonBlast				= 0.1,
				reload 					= 4,
				magazineCapacity 		= 100,
				recoil 					= 0.1,

				weapon_recoil 					= 0.0005,
				dispersion 				= 10,
				gunRange				= 3000,
				elevationSpeed			= .5,
				smokeFactor 			= .1,
				smokeMulti				= 1,
				soundFile 				=	"MOD/sounds/grenade_mg/single_shot_01",
				mouseDownSoundFile 		=	"MOD/sounds/grenade_mg/auto_01",
				loopSoundFile			= 	"MOD/sounds/grenade_mg/auto_01",
				tailOffSound	 		=	"MOD/sounds/grenade_mg/auto_tail_off_01",				
				},
	["GMG_02"] = {
					name 	= "40 KRKK 2005",
					caliber 				= 30,
					weaponType 				= "GMGun",
					loadedMagazine 			= 1,
					magazines 					= {
											[1] = {
									name = "40 mm grenade",
									magazineCapacity = 60,
									ammoCount = 0,
									magazineCount = 50,
									caliber 				= 40,
									velocity				= 180,
									gravityCoef 			= 1.7,
									explosionSize			= .7,
									maxPenDepth 			= 0.17,
									RHAe 					= 50,
									timeToLive 				= 20,
									launcher				= "cannon",
									payload					= "HE",
									shellWidth				= 0.3,
									shellHeight				= .55,
									r						= 0.6,
									g						= 0.3, 
									b						= 0.3, 
									shellSpriteName			= "MOD/gfx/shellModel2.png",
									shellSpriteRearName		= "MOD/gfx/shellRear2.png",
			},
											},

				barrels 				= 
											{
												[1] = {x=0.65,y=0.3,z=-0.1},
											},
				multiBarrel 			= 1,

				sight					= {
												[1] = {
											x = 0.15,
											y = 0.9,
											z = 1.68,
												},


											},
				canZoom					= false,
				aimForwards				= true,
				RPM 					= 340 ,
				cannonBlast				= 0.1,
				reload 					= 4,
				magazineCapacity 		= 100,
				recoil 					= 0.1,

				weapon_recoil 					= 0.0005,
				dispersion 				= 10,
				gunRange				= 3000,
				elevationSpeed			= .5,
				smokeFactor 			= .1,
				smokeMulti				= 1,
				soundFile 				=	"MOD/sounds/grenade_mg/single_shot_01",
				mouseDownSoundFile 		=	"MOD/sounds/grenade_mg/auto_01",
				loopSoundFile			= 	"MOD/sounds/grenade_mg/auto_01",
				tailOffSound	 		=	"MOD/sounds/grenade_mg/auto_tail_off_01",				
				},

		["PKT"]		= {
					name 	= "PKT",
					caliber 				= 7.62,
					weaponType 				= "MGun",
					loadedMagazine 			= 1,
					magazines 					= {
											[1] = {
													name = "B_762x54_Ball",
													magazineCapacity = 250,
													RHAe 					= 12,
													ammoCount = 0,
													magazineCount = 20,
												},
											},

				barrels 				= 
											{
												[1] = {x=0,y=0.2,z=-0.6},
											},
				multiBarrel 			= 1,
				sight					= {
												[1] = {
											x = 3,
											y = 1.3,
											z = 0.3,
												},


											},
				canZoom					= false,
				RPM 					= 750,
				reload 					= 4,
				magazineCapacity 		= 100,
				recoil 					= 0.02,
				dispersion 				= 3,
				gunRange				= 1000,
				elevationSpeed			= 3,
				smokeFactor 			= .25,
				smokeMulti				= 1,
				soundFile 				=	"MOD/sounds/lmgSingle0",
				mouseDownSoundFile 		=	"MOD/sounds/lmgBurst0",

				},


	["DSHK"]	= {	
					name 	= "DSHK",
					caliber 				= 12.7,
					weaponType 				= "MGun",
					loadedMagazine 			= 1,
					magazines 					= {
											[1] = {
													name = "B_127x107_Ball",
													magazineCapacity = 50,
													ammoCount = 0,
													magazineCount = 50,
													caliber 				= 12.7,
													velocity				= 240,
													hit 					=3,
													maxPenDepth 			= 0.33,
													RHAe 					= 27.5,
													timeToLive 				= 7,
													launcher				= "mgun",
													payload					= "AP",
													gravityCoef 			= 1.3,
													shellWidth				= 0.1,
													shellHeight				= 0.3,
													r						= 0.8,
													g						= 0.8, 
													b						= 0.5, 
													tracer 					= 2,
													tracerL					= 7,
													tracerW					= 2,
													tracerR					= 1.8,
													tracerG					= 1.0, 
													tracerB					= 1.0, 
													shellSpriteName			= "MOD/gfx/shellModel2.png",
													shellSpriteRearName		= "MOD/gfx/shellRear2.png",
											},
										},

				barrels 				= 
											{
												[1] = {x=0,y=0.2,z=-0.6},
											},
				multiBarrel 			= 1,

				sight					= {
												[1] = {
											x = .25,
											y = 2.,
											z = 1.8,
												},


											},
				canZoom					= false,
				RPM 					= 360,
				reload 					= 4,
				magazineCapacity 		= 100,
				recoil 					= 0.05,
				weapon_recoil 			= 200,
				dispersion 				= 6,
				gunRange				= 3000,
				elevationSpeed			= .5,
				smokeFactor 			= .1,
				smokeMulti				= 1,
				soundFile 				=	"MOD/sounds/HeavySingleShot",
				mouseDownSoundFile 		=	"MOD/sounds/HeavyAutoFire",
				loopSoundFile			= 	"MOD/sounds/HeavyAutoFire",			
				},


	["NSV"]	= {	
					name 	= "NSV",
					caliber 				= 12.7,
					weaponType 				= "MGun",
					loadedMagazine 			= 1,
					magazines 					= {
											[1] = {
													name = "12.7×108mm",
													magazineCapacity = 100,
													ammoCount = 0,
													magazineCount = 50,
													caliber 				= 12.7,
													velocity				= 240,
													hit 					=3,
													maxPenDepth 			= 0.36,
													RHAe 					= 27.5,
													timeToLive 				= 7,
													launcher				= "mgun",
													payload					= "AP",
													gravityCoef 			= 1.2,
													shellWidth				= 0.1,
													shellHeight				= 0.3,
													r						= 0.8,
													g						= 0.8, 
													b						= 0.5, 
													tracer 					= 2,
													tracerL					= 7,
													tracerW					= 2,
													tracerR					= 1.8,
													tracerG					= 1.0, 
													tracerB					= 1.0, 
													shellSpriteName			= "MOD/gfx/shellModel2.png",
													shellSpriteRearName		= "MOD/gfx/shellRear2.png",
											},
										},

				barrels 				= 
											{
												[1] = {x=0,y=0.2,z=-0.6},
											},
				multiBarrel 			= 1,

				sight					= {
												[1] = {
											x = .25,
											y = 2.,
											z = 1.8,
												},


											},
				canZoom					= false,
				RPM 					= 370,
				reload 					= 4,
				magazineCapacity 		= 100,
				recoil 					= 0.05,
				weapon_recoil 			= 50,
				dispersion 				= 6,
				gunRange				= 3000,
				elevationSpeed			= .9,
				smokeFactor 			= .1,
				smokeMulti				= 1,
				soundFile 				=	"MOD/sounds/HeavySingleShot",
				mouseDownSoundFile 		=	"MOD/sounds/HeavyAutoFire",
				loopSoundFile			= 	"MOD/sounds/HeavyAutoFire",			
				},

	["PKT"]		= {
					name 	= "PKT",
					caliber 				= 7.62,
					weaponType 				= "MGun",
					loadedMagazine 			= 1,
					magazines 					= {
											[1] = {
								name = "B_762x54_Ball",
								magazineCapacity = 250,
								ammoCount = 0,
								magazineCount = 20,
								caliber 				= 7.62,
								velocity				= 350,
								maxPenDepth 			= 0.15,
								RHAe 					= 12,
								timeToLive 				= 7,
								launcher				= "mgun",
								payload					= "AP",
								shellWidth				= 0.1,
								shellHeight				= 0.3,
								r						= 0.8,
								g						= 0.8, 
								b						= 0.5, 
								tracer 					= 5,
								tracerL					= 6,
								tracerW					= 2,
								tracerR					= 1.8,
								tracerG					= 1.0, 
								tracerB					= 1.0, 
								shellSpriteName			= "MOD/gfx/shellModel2.png",
								shellSpriteRearName		= "MOD/gfx/shellRear2.png",
	},
											},

				barrels 				= 
											{
												[1] = {x=0,y=0.2,z=-0.6},
											},
				multiBarrel 			= 1,
				sight					= {
												[1] = {
											x = 3,
											y = 1.3,
											z = 0.3,
												},


											},
				canZoom					= false,
				RPM 					= 750,
				reload 					= 4,
				magazineCapacity 		= 100,
				recoil 					= 0.02,
				dispersion 				= 3,
				gunRange				= 1000,
				elevationSpeed			= 3,
				smokeFactor 			= .25,
				smokeMulti				= 1,
				soundFile 				=	"MOD/sounds/lmgSingle0",
				mouseDownSoundFile 		=	"MOD/sounds/lmgBurst0",

				},



	["L1A1"]	= {	
					name 	= "L111A1 HMG",
					caliber 				= 12.7,
					weaponType 				= "MGun",
					loadedMagazine 			= 1,
					magazines 					= {
											[1] = {
													name = ".50 BMG",
													magazineCapacity = 100,
													ammoCount = 0,
													magazineCount = 50,
													caliber 				= 12.7,
													velocity				= 250,
													hit 					=3,
													maxPenDepth 			= 0.31,
													RHAe 					= 27.5,
													timeToLive 				= 7,
													launcher				= "mgun",
													payload					= "AP",
													gravityCoef 			= 1.6,
													shellWidth				= 0.1,
													shellHeight				= 0.3,
													r						= 0.8,
													g						= 0.8, 
													b						= 0.5, 
													tracer 					= 2,
													tracerL					= 7,
													tracerW					= 2,
													tracerR					= 1.8,
													tracerG					= 1.0, 
													tracerB					= 1.0, 
													shellSpriteName			= "MOD/gfx/shellModel2.png",
													shellSpriteRearName		= "MOD/gfx/shellRear2.png",
											},
										},

				barrels 				= 
											{
												[1] = {x=0,y=0.2,z=-0.6},
											},
				multiBarrel 			= 1,

				sight					= {
												[1] = {
											x = .25,
											y = 2.,
											z = 1.8,
												},


											},
				canZoom					= false,
				RPM 					= 360,
				reload 					= 4,
				magazineCapacity 		= 100,
				weapon_recoil 			= 5,
				dispersion 				= 6,
				gunRange				= 3000,
				elevationSpeed			= .5,
				smokeFactor 			= .1,
				smokeMulti				= 1,
				soundFile 				=	"MOD/sounds/machine_gun/m2_single_01",
				mouseDownSoundFile 		=	"MOD/sounds/machine_gun/m2_burst_01",
				loopSoundFile 		=	"MOD/sounds/machine_gun/m2_loop_03",		
				},



	["L1A1_2"]	= {	
					name 	= "L111A1 HMG",
					caliber 				= 12.7,
					weaponType 				= "MGun",
					loadedMagazine 			= 1,
					magazines 					= {
											[1] = {
													name = ".50 BMG",
													magazineCapacity = 100,
													ammoCount = 0,
													magazineCount = 50,
													caliber 				= 12.7,
													velocity				= 250,
													hit 					=3,
													maxPenDepth 			= 0.31,
													RHAe 					= 27.5,
													timeToLive 				= 7,
													launcher				= "mgun",
													payload					= "AP",
													gravityCoef 			= 1.6,
													shellWidth				= 0.1,
													shellHeight				= 0.3,
													r						= 0.8,
													g						= 0.8, 
													b						= 0.5, 
													tracer 					= 2,
													tracerL					= 7,
													tracerW					= 2,
													tracerR					= 1.8,
													tracerG					= 1.0, 
													tracerB					= 1.0, 
													shellSpriteName			= "MOD/gfx/shellModel2.png",
													shellSpriteRearName		= "MOD/gfx/shellRear2.png",
											},
										},

				barrels 				= 
											{
												[1] = {x=0,y=0.2,z=-0.6},
											},
				multiBarrel 			= 1,

				sight					= {
												[1] = {
											x = .25,
											y = 2.,
											z = 1.8,
												},


											},
				canZoom					= false,
				RPM 					= 360,
				reload 					= 4,
				magazineCapacity 		= 100,
				weapon_recoil 			= 50,
				dispersion 				= 6,
				gunRange				= 3000,
				elevationSpeed			= .5,
				smokeFactor 			= .1,
				smokeMulti				= 1,
				soundFile 				=	"MOD/sounds/machine_gun/m2_single_01",
				mouseDownSoundFile 		=	"MOD/sounds/machine_gun/m2_burst_01",
				loopSoundFile 		=	"MOD/sounds/machine_gun/m2_loop_03",		
				},






	["M2"]	= {	
					name 	= "M2 HMG",
					caliber 				= 12.7,
					weaponType 				= "MGun",
					loadedMagazine 			= 1,
					magazines 					= {
											[1] = {
													name = ".50 BMG",
													magazineCapacity = 100,
													ammoCount = 0,
													magazineCount = 50,
													caliber 				= 12.7,
													velocity				= 250,
													hit 					=3,
													maxPenDepth 			= 0.31,
													RHAe 					= 27.7,
													timeToLive 				= 7,
													launcher				= "mgun",
													payload					= "AP",
													gravityCoef 			= 1.6,
													shellWidth				= 0.1,
													shellHeight				= 0.3,
													r						= 0.8,
													g						= 0.8, 
													b						= 0.5, 
													tracer 					= 2,
													tracerL					= 7,
													tracerW					= 2,
													tracerR					= 1.8,
													tracerG					= 1.0, 
													tracerB					= 1.0, 
													shellSpriteName			= "MOD/gfx/shellModel2.png",
													shellSpriteRearName		= "MOD/gfx/shellRear2.png",
											},
										},

				barrels 				= 
											{
												[1] = {x=0,y=0.2,z=-0.6},
											},
				multiBarrel 			= 1,

				sight					= {
												[1] = {
											x = .25,
											y = 2.,
											z = 1.8,
												},


											},
				canZoom					= false,
				RPM 					= 360,
				reload 					= 4,
				magazineCapacity 		= 100,
				weapon_recoil 			= 25,
				dispersion 				= 6,
				gunRange				= 3000,
				elevationSpeed			= .8,
				smokeFactor 			= .1,
				smokeMulti				= 1,
				soundFile 				=	"MOD/sounds/machine_gun/m2_single_01",
				mouseDownSoundFile 		=	"MOD/sounds/machine_gun/m2_burst_01",
				loopSoundFile 		=	"MOD/sounds/machine_gun/m2_loop_03",		
				},




	["Tksp"]	= {	
					name 	= "Tksp 12,7 mm",
					caliber 				= 12.7,
					weaponType 				= "MGun",
					loadedMagazine 			= 1,
					magazines 					= {
											[1] = {
													name = "12.7×99mm NATO",
													magazineCapacity = 100,
													ammoCount = 0,
													magazineCount = 50,
													caliber 				= 12.7,
													velocity				= 250,
													hit 					=3,
													maxPenDepth 			= 0.31,
													RHAe 					= 27.7,
													RHAe 					= 25,
													timeToLive 				= 7,
													launcher				= "mgun",
													payload					= "AP",
													gravityCoef 			= 1.6,
													shellWidth				= 0.1,
													shellHeight				= 0.3,
													r						= 0.8,
													g						= 0.8, 
													b						= 0.5, 
													tracer 					= 2,
													tracerL					= 7,
													tracerW					= 2,
													tracerR					= 1.8,
													tracerG					= 1.0, 
													tracerB					= 1.0, 
													shellSpriteName			= "MOD/gfx/shellModel2.png",
													shellSpriteRearName		= "MOD/gfx/shellRear2.png",
											},
										},

				barrels 				= 
											{
												[1] = {x=0,y=0.2,z=-0.6},
											},
				multiBarrel 			= 1,

				sight					= {
												[1] = {
											x = .25,
											y = 2.,
											z = 1.8,
												},


											},
				canZoom					= false,
				RPM 					= 360,
				reload 					= 4,
				magazineCapacity 		= 100,
				weapon_recoil 			= 25,
				dispersion 				= 6,
				gunRange				= 3000,
				elevationSpeed			= .8,
				smokeFactor 			= .1,
				smokeMulti				= 1,
				soundFile 				=	"MOD/sounds/machine_gun/m2_single_01",
				mouseDownSoundFile 		=	"MOD/sounds/machine_gun/m2_burst_01",
				loopSoundFile 		=	"MOD/sounds/machine_gun/m2_loop_03",		
				},



	["KSP_88"]	= {	
					name 	= "Ksp 88",
					caliber 				= 12.7,
					weaponType 				= "MGun",
					loadedMagazine 			= 1,
					magazines 					= {
											[1] = {
													name = "12.7×99mm NATO",
													magazineCapacity = 100,
													ammoCount = 0,
													magazineCount = 50,
													caliber 				= 12.7,
													velocity				= 250,
													hit 					=3,
													maxPenDepth 			= 0.31,
													RHAe 					= 27.8,
													timeToLive 				= 7,
													launcher				= "mgun",
													payload					= "AP",
													gravityCoef 			= 1.6,
													shellWidth				= 0.1,
													shellHeight				= 0.3,
													r						= 0.8,
													g						= 0.8, 
													b						= 0.5, 
													tracer 					= 2,
													tracerL					= 7,
													tracerW					= 2,
													tracerR					= 1.8,
													tracerG					= 1.0, 
													tracerB					= 1.0, 
													shellSpriteName			= "MOD/gfx/shellModel2.png",
													shellSpriteRearName		= "MOD/gfx/shellRear2.png",
											},
										},

				barrels 				= 
											{
												[1] = {x=0,y=0.2,z=-0.6},
											},
				multiBarrel 			= 1,

				sight					= {
												[1] = {
											x = .25,
											y = 2.,
											z = 1.8,
												},


											},
				canZoom					= false,
				RPM 					= 360,
				reload 					= 4,
				magazineCapacity 		= 100,
				weapon_recoil 			= 25,
				dispersion 				= 6,
				gunRange				= 3000,
				elevationSpeed			= .8,
				smokeFactor 			= .1,
				smokeMulti				= 1,
				soundFile 				=	"MOD/sounds/machine_gun/m2_single_01",
				mouseDownSoundFile 		=	"MOD/sounds/machine_gun/m2_burst_01",
				loopSoundFile 		=	"MOD/sounds/machine_gun/m2_loop_03",		
				},


	["KSP_88_2"]	= {	
					name 	= "KSP_88_2",
					caliber 				= 12.7,
					weaponType 				= "MGun",
					loadedMagazine 			= 1,
					magazines 					= {
											[1] = {
													name = "12.7×99mm NATO 50m",
													magazineCapacity = 100,
													ammoCount = 0,
													magazineCount = 50,
													caliber 				= 12.7,
													velocity				= 50,
													hit 					=3,
													maxPenDepth 			= 0.31,
													RHAe 					= 27.8,
													timeToLive 				= 7,
													launcher				= "mgun",
													payload					= "AP",
													gravityCoef 			= 1,
													shellWidth				= 0.1,
													shellHeight				= 0.3,
													r						= 0.8,
													g						= 0.8, 
													b						= 0.5, 
													tracer 					= 2,
													tracerL					= 7,
													tracerW					= 2,
													tracerR					= 1.8,
													tracerG					= 1.0, 
													tracerB					= 1.0, 
													shellSpriteName			= "MOD/gfx/shellModel2.png",
													shellSpriteRearName		= "MOD/gfx/shellRear2.png",
											},
											[2] = {
													name = "12.7×99mm NATO 100m",
													magazineCapacity = 100,
													ammoCount = 0,
													magazineCount = 50,
													caliber 				= 12.7,
													velocity				= 100,
													hit 					=3,
													maxPenDepth 			= 0.31,
													RHAe 					= 27.8,
													timeToLive 				= 7,
													launcher				= "mgun",
													payload					= "AP",
													gravityCoef 			= 1,
													shellWidth				= 0.1,
													shellHeight				= 0.3,
													r						= 0.8,
													g						= 0.8, 
													b						= 0.5, 
													tracer 					= 2,
													tracerL					= 7,
													tracerW					= 2,
													tracerR					= 1.8,
													tracerG					= 1.0, 
													tracerB					= 1.0, 
													shellSpriteName			= "MOD/gfx/shellModel2.png",
													shellSpriteRearName		= "MOD/gfx/shellRear2.png",
											},
											[3] = {
													name = "12.7×99mm NATO 200m",
													magazineCapacity = 100,
													ammoCount = 0,
													magazineCount = 50,
													caliber 				= 12.7,
													velocity				= 200,
													hit 					=3,
													maxPenDepth 			= 0.31,
													RHAe 					= 27.8,
													timeToLive 				= 7,
													launcher				= "mgun",
													payload					= "AP",
													gravityCoef 			= 1,
													shellWidth				= 0.1,
													shellHeight				= 0.3,
													r						= 0.8,
													g						= 0.8, 
													b						= 0.5, 
													tracer 					= 2,
													tracerL					= 7,
													tracerW					= 2,
													tracerR					= 1.8,
													tracerG					= 1.0, 
													tracerB					= 1.0, 
													shellSpriteName			= "MOD/gfx/shellModel2.png",
													shellSpriteRearName		= "MOD/gfx/shellRear2.png",
											},
										},

				barrels 				= 
											{
												[1] = {x=0,y=0.2,z=-0.6},
											},
				multiBarrel 			= 1,

				sight					= {
												[1] = {
											x = .25,
											y = 2.,
											z = 1.8,
												},


											},
				canZoom					= false,
				RPM 					= 360,
				reload 					= 4,
				magazineCapacity 		= 100,
				weapon_recoil 			= 25,
				dispersion 				= 6,
				gunRange				= 3000,
				elevationSpeed			= .8,
				smokeFactor 			= .1,
				smokeMulti				= 1,
				soundFile 				=	"MOD/sounds/machine_gun/m2_single_01",
				mouseDownSoundFile 		=	"MOD/sounds/machine_gun/m2_burst_01",
				loopSoundFile 		=	"MOD/sounds/machine_gun/m2_loop_03",		
				},



	["KSP_88_CROWS"]	= {	
					name 	= "KSP_88_CROWS",
					caliber 				= 12.7,
					weaponType 				= "MGun",
					loadedMagazine 			= 1,
					magazines 					= {
						[1] = {
													name = "12.7×99mm NATO 50m",
													magazineCapacity = 150,
													ammoCount = 0,
													magazineCount = 50,
													caliber 				= 12.7,
													velocity				= 350,
													hit 					=3,
													maxPenDepth 			= 0.31,
													RHAe 					= 27.8,
													timeToLive 				= 7,
													launcher				= "mgun",
													payload					= "AP",
													gravityCoef 			= 1,
													shellWidth				= 0.1,
													shellHeight				= 0.3,
													r						= 0.8,
													g						= 0.8, 
													b						= 0.5, 
													tracer 					= 2,
													tracerL					= 7,
													tracerW					= 2,
													tracerR					= 1.8,
													tracerG					= 1.0, 
													tracerB					= 1.0, 
													shellSpriteName			= "MOD/gfx/shellModel2.png",
													shellSpriteRearName		= "MOD/gfx/shellRear2.png",
											},
											-- [1] = {
											-- 		name = "12.7×99mm NATO 50m",
											-- 		magazineCapacity = 10,
											-- 		ammoCount = 0,
											-- 		magazineCount = 50,
											-- 		caliber 				= 12.7,
											-- 		velocity				= 50,
											-- 		hit 					=3,
											-- 		maxPenDepth 			= 0.31,
											-- 		RHAe 					= 27.8,
											-- 		timeToLive 				= 7,
											-- 		launcher				= "mgun",
											-- 		payload					= "AP",
											-- 		gravityCoef 			= 1,
											-- 		shellWidth				= 0.1,
											-- 		shellHeight				= 0.3,
											-- 		r						= 0.8,
											-- 		g						= 0.8, 
											-- 		b						= 0.5, 
											-- 		tracer 					= 2,
											-- 		tracerL					= 7,
											-- 		tracerW					= 2,
											-- 		tracerR					= 1.8,
											-- 		tracerG					= 1.0, 
											-- 		tracerB					= 1.0, 
											-- 		shellSpriteName			= "MOD/gfx/shellModel2.png",
											-- 		shellSpriteRearName		= "MOD/gfx/shellRear2.png",
											-- },
											-- [2] = {
											-- 		name = "12.7×99mm NATO 100m",
											-- 		magazineCapacity = 100,
											-- 		ammoCount = 0,
											-- 		magazineCount = 50,
											-- 		caliber 				= 12.7,
											-- 		velocity				= 100,
											-- 		hit 					=3,
											-- 		maxPenDepth 			= 0.31,
											-- 		RHAe 					= 27.8,
											-- 		timeToLive 				= 7,
											-- 		launcher				= "mgun",
											-- 		payload					= "AP",
											-- 		gravityCoef 			= 1,
											-- 		shellWidth				= 0.1,
											-- 		shellHeight				= 0.3,
											-- 		r						= 0.8,
											-- 		g						= 0.8, 
											-- 		b						= 0.5, 
											-- 		tracer 					= 2,
											-- 		tracerL					= 7,
											-- 		tracerW					= 2,
											-- 		tracerR					= 1.8,
											-- 		tracerG					= 1.0, 
											-- 		tracerB					= 1.0, 
											-- 		shellSpriteName			= "MOD/gfx/shellModel2.png",
											-- 		shellSpriteRearName		= "MOD/gfx/shellRear2.png",
											-- },
											-- [3] = {
											-- 		name = "12.7×99mm NATO 200m",
											-- 		magazineCapacity = 100,
											-- 		ammoCount = 0,
											-- 		magazineCount = 50,
											-- 		caliber 				= 12.7,
											-- 		velocity				= 200,
											-- 		hit 					=3,
											-- 		maxPenDepth 			= 0.31,
											-- 		RHAe 					= 27.8,
											-- 		timeToLive 				= 7,
											-- 		launcher				= "mgun",
											-- 		payload					= "AP",
											-- 		gravityCoef 			= 1,
											-- 		shellWidth				= 0.1,
											-- 		shellHeight				= 0.3,
											-- 		r						= 0.8,
											-- 		g						= 0.8, 
											-- 		b						= 0.5, 
											-- 		tracer 					= 2,
											-- 		tracerL					= 7,
											-- 		tracerW					= 2,
											-- 		tracerR					= 1.8,
											-- 		tracerG					= 1.0, 
											-- 		tracerB					= 1.0, 
											-- 		shellSpriteName			= "MOD/gfx/shellModel2.png",
											-- 		shellSpriteRearName		= "MOD/gfx/shellRear2.png",
											-- },
										},

				barrels 				= 
											{
												[1] = {x=0,y=0.2,z=-0.6},
											},
				multiBarrel 			= 1,

				sight					= {
												[1] = {
											x = .25,
											y = 2.,
											z = 1.8,
												},


											},
				canZoom					= false,
				RPM 					= 360,
				zeroing 				= 100,
				reload 					= 4,
				magazineCapacity 		= 10,
				weapon_recoil 			= 25,
				dispersion 				= 6,
				gunRange				= 3000,
				elevationSpeed			= .8,
				smokeFactor 			= .1,
				smokeMulti				= 1,
				soundFile 				=	"MOD/sounds/machine_gun/m2_single_01",
				mouseDownSoundFile 		=	"MOD/sounds/machine_gun/m2_burst_01",
				loopSoundFile 		=	"MOD/sounds/machine_gun/m2_loop_03",
				custom_fire_sound		= {
										num_sounds = 6,
										file_name = "MOD/avf/snd/nsv/nsv_shot_"
											},
				custom_mouse_down		= true,
				custom_loop_sound_file	= {
										num_sounds = 1,
										file_name = "MOD/avf/snd/nsv/nsv_loop_"
											},
				custom_tail_off			= true,
				custom_reload			= true,
				special_custom_sounds = 
										{
											reload_sounds			= {
												reload_type 	= "loop_and_sound",
												reload_loop = "MOD/avf/snd/nsv/nsv_reload_loop",
												reloaded_sound = "MOD/avf/snd/nsv/nsv_reloaded",
											},
										}

				},


	["GPMG"]		= {
					name 	= "L7A2 GPMG",
					caliber 				= 7.62,
					weaponType 				= "MGun",
					loadedMagazine 			= 1,
					magazines 					= {
											[1] = {
								name = "B_762x54_Ball",
								magazineCapacity = 200,
								ammoCount = 0,
								magazineCount = 20,
								caliber 				= 7.62,
								velocity				= 350,
								maxPenDepth 			= 0.05,
								RHAe 					= 13,
								timeToLive 				= 7,
								launcher				= "mgun",
								payload					= "AP",
								gravityCoef 			= 2,
								shellWidth				= 0.1,
								shellHeight				= 0.3,
								r						= 0.8,
								g						= 0.8, 
								b						= 0.5, 
								tracer 					= 5,
								tracerL					= 6,
								tracerW					= 2,
								tracerR					= 1.8,
								tracerG					= 1.0, 
								tracerB					= 1.0, 
								shellSpriteName			= "MOD/gfx/shellModel2.png",
								shellSpriteRearName		= "MOD/gfx/shellRear2.png",
	},
											},

				barrels 				= 
											{
												[1] = {x=0,y=0.2,z=-0.6},
											},
				multiBarrel 			= 1,
				sight					= {
												[1] = {
											x = 3,
											y = 1.3,
											z = 0.3,
												},


											},
				canZoom					= false,
				RPM 					= 750,
				reload 					= 4,
				magazineCapacity 		= 100,
				weapon_recoil 			= 5,
				dispersion 				= 3,
				gunRange				= 1000,
				elevationSpeed			= .5,
				smokeFactor 			= .05,
				smokeMulti				= 1,
				soundFile 				=	"MOD/sounds/machine_gun/gpmg_single_02",
				loopSoundFile 		=	"MOD/sounds/machine_gun/gpmg_loop_02",

				},



	["GPMG_02"]		= {
					name 	= "KSP 58",
					caliber 				= 7.62,
					weaponType 				= "MGun",
					loadedMagazine 			= 1,
					magazines 					= {
											[1] = {
								name = "7.62x51 NATO",
								magazineCapacity = 200,
								ammoCount = 0,
								magazineCount = 20,
								caliber 				= 7.62,
								velocity				= 350,
								maxPenDepth 			= 0.05,
								RHAe 					= 13,
								timeToLive 				= 7,
								launcher				= "mgun",
								payload					= "AP",
								gravityCoef 			= 2,
								shellWidth				= 0.1,
								shellHeight				= 0.3,
								r						= 0.8,
								g						= 0.8, 
								b						= 0.5, 
								tracer 					= 5,
								tracerL					= 6,
								tracerW					= 2,
								tracerR					= 1.8,
								tracerG					= 1.0, 
								tracerB					= 1.0, 
								shellSpriteName			= "MOD/gfx/shellModel2.png",
								shellSpriteRearName		= "MOD/gfx/shellRear2.png",
	},
											},

				barrels 				= 
											{
												[1] = {x=0,y=0.2,z=-0.6},
											},
				multiBarrel 			= 1,
				sight					= {
												[1] = {
											x = 3,
											y = 1.3,
											z = 0.3,
												},


											},
				canZoom					= false,
				RPM 					= 750,
				reload 					= 4,
				magazineCapacity 		= 100,
				weapon_recoil 			= 5,
				dispersion 				= 3,
				gunRange				= 1000,
				elevationSpeed			= .5,
				smokeFactor 			= .05,
				smokeMulti				= 1,
				soundFile 				=	"MOD/sounds/machine_gun/gpmg_single_02",
				loopSoundFile 		=	"MOD/sounds/machine_gun/gpmg_loop_02",

				},



	["GPMG_custom_sound"]		= {
					name 	= "KSP 58",
					caliber 				= 7.62,
					weaponType 				= "MGun",
					loadedMagazine 			= 1,
					magazines 					= {
											[1] = {
								name = "7.62x51 NATO",
								magazineCapacity = 200,
								ammoCount = 0,
								magazineCount = 20,
								caliber 				= 7.62,
								velocity				= 350,
								maxPenDepth 			= 0.05,
								RHAe 					= 13,
								timeToLive 				= 7,
								launcher				= "mgun",
								payload					= "AP",
								gravityCoef 			= 2,
								shellWidth				= 0.1,
								shellHeight				= 0.3,
								r						= 0.8,
								g						= 0.8, 
								b						= 0.5, 
								tracer 					= 5,
								tracerL					= 6,
								tracerW					= 2,
								tracerR					= 1.8,
								tracerG					= 1.0, 
								tracerB					= 1.0, 
								shellSpriteName			= "MOD/gfx/shellModel2.png",
								shellSpriteRearName		= "MOD/gfx/shellRear2.png",


	},
											},

				barrels 				= 
											{
												[1] = {x=0,y=0.2,z=-0.6},
											},
				multiBarrel 			= 1,
				sight					= {
												[1] = {
											x = 3,
											y = 1.3,
											z = 0.3,
												},


											},
				canZoom					= false,
				RPM 					= 750,
				reload 					= 4,
				magazineCapacity 		= 100,
				weapon_recoil 			= 5,
				dispersion 				= 3,
				gunRange				= 1000,
				elevationSpeed			= .5,
				smokeFactor 			= .05,
				smokeMulti				= 1,
				soundFile 				=	"MOD/sounds/machine_gun/gpmg_single_02",
				loopSoundFile 		=	"MOD/sounds/machine_gun/gpmg_loop_02",
				custom_fire_sound		= {
										num_sounds = 6,
										file_name = "MOD/avf/snd/nsv/nsv_shot_"
											},
				custom_mouse_down		= true,
				custom_loop_sound_file	= true,
				custom_tail_off			= true,
				custom_reload			= true,

				},
}
	

