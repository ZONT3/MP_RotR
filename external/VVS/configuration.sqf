//	edited by [TF]def 2015 09 20 (0.4.1)
/**/
//Only display vehicles for that players side, if true Opfor can only spawn Opfor vehicles and so on.
VVS_SideOnly = false;

//Only set to true if you are making pre-made vehicle lists with VVS_x (i.e VVS_Car)
VVS_Premade_List = false;

/*
									Pre-set VVS Vehicles
		This is similar to VAS's functionality, using these variables will only make those vehicles available.
		Leave them the way they are if you want to auto-fetch the entire vehicle config and list every vehicle.

		Example:
		VVS_Car = ["C_Offroad_01_F","C_Quadbike_01_F"];
		VVS_Air = ["B_Heli_Light_01_armed_F"];
*/

VVS_Car = [
	"RD501_Warhammer_Republic",
	"RD501_warden_tank_field",
	"RD501_bantha_501st_MkI",
	"rd501_sw_barc",
	"OPTRE_M812_TT",
	"Shadow_TX130",
	"OPTRE_M813_TT",
	"RD501_Longbow_Republic",
	"3as_saber_m1",
	"3as_saber_m1Recon",
	"3as_saber_super",
	"3as_saber_m1G",
	"3as_UTAT",
	"3AS_Barc",
	"3AS_BarcSideCar",
	"3as_Jug",
	"3as_RTT",
	"3as_AV7",
	"3as_ATAP_base",
	"SWLG_tanks_tx130",
	"RD501_saber_republic_super_saber_MkII",
	"B_mako_Edessan_Tur_F",
	"C_mako_m32_FCW_F",
	"C_M080apc1_FCW_F",
	"O_SWOP_HoverT_1",
	"O_SWOP_HoverTa_1",
	"Corp99_Dagor_unarmed",
	"Corp99_DAGOR_AT"
	];

VVS_Air = [
	"RD501_LAAT_Mk3",
	"RD501_LAAT_cargo_Mk2",
	"RD501_eta_black_Mk2",
	"RD501_eta_blue_Mk2",
	"RD501_eta_yellow_Mk2",
	"RD501_eta_red_Mk2",
	"RD501_eta_green_Mk2",
	"RD501_LAAT_spec_ops",
	"RD501_LAAT_muunilinst",
	"RD501_delta_7a_Mk2",
	"212th_LAAT_MK3_Unmarked",
	"212th_3AS_Reaper_Z95_Headhunter",
	"212th_3AS_Reaper_ARC170",
	"ls_laat_medevac",
	"ls_laat",
	"O_T_VTOL_02_infantry_dynamicLoadout_F",
	"O_OCISHumanDivision_Local_Militial_Air_Transport_01",
	"RD501_Y_wing_MkII",
	"RD501_v_wing_MKII",
	"MEOP_veh_kodiakArm_old",
	"MEOP_veh_turKod_hier",
	"3as_LAAT_Mk1",
	"3as_LAAT_Mk3",
	"3as_LAAT_Mk2",
	"3as_LAAT_Mk2Lights",
	"3as_arc_170_red",
	"3as_arc_170_razor",
	"3as_arc_170_blue",
	"3as_arc_170_green",
	"3as_arc_170_yellow",
	"3as_arc_170_Orange",
	"lsd_air_v19",
	"3as_Z95_Republic"
	];

VVS_Car_Mercenary = [
	"OPTRE_M12_FAV",
	"OPTRE_M12_LRV",
	"OPTRE_M12A1_LRV",
	"OPTRE_M12G1_LRV",
	"OPTRE_M12R_AA",
	"B_Quadbike_01_F",
	"B_G_Offroad_01_AT_F",
	"O_OKalani_CIS_Plasma_Artillery_01",
	"O_OKalani_CIS_Rocket_Artillery_01",
	"O_OKalani_CIS_Plasma_Mortar_01",
	"SW_SpeederBike",
	"JMM_212th_O_AAT",
	"RD501_AAT_Medium_MkII",
	"O_JM_TX130m1r_1",
	"O_JM_TX130m2r_1",
	"SW_BARC",
	"B_BSCI212thAB_Mobile_Rocket_Artillery_01",
	"RD501_mortar_republic",
	"B_BSCI212thAB_Mobile_Plasma_Artillery_01",
	"212th_B_APC_Wheeled_01_cannon_F",
	"C_SUV_01_F",
	"O_SWOP_landspeeder_1",
	"RD501_warden_tank_field",
	"C_Van_01_box_F",
	"C_Van_02_transport_F",
	"C_Van_02_vehicle_F",
	"C_Hatchback_01_sport_F",
	"C_Truck_02_transport_F",
	"C_Van_01_transport_F",
	"B_mako_Edessan_Tur_F",
	"C_mako_m32_FCW_F",
	"C_M080apc1_FCW_F"
	];

VVS_Air_Mercenary = [
	"OPTRE_AV22_Sparrowhawk",
	"OPTRE_AV22A_Sparrowhawk",
	"OPTRE_UNSC_hornet",
	"OPTRE_UNSC_falcon",
	"OPTRE_UNSC_falcon_unarmed",
	"OPTRE_Pelican_unarmed",
	"212_Reaper_V_Wing",
	"RD501_Y_wing_MkII",
	"swop_eta2_c1",
	"RD501_delta_7a_Mk2",
	"swop_LAAT_cargo",
	"ls_laat_ab",
	"swop_LAATmk2",
	"RD501_LAAT_Mk3",
	"RD501_LAAT_Mk4",
	"swop_awrz2",
	"RD501_u_wing_MKII",
	"RD501_X_wing_T_70_MkII",
	"3as_LAAT_Mk1",
	"3as_LAAT_Mk3",
	"3as_LAAT_Mk2",
	"3as_LAAT_Mk2Lights",
	"3AS_Nuclass",
	"3as_arc_170_red",
	"3as_arc_170_razor",
	"3as_arc_170_blue",
	"3as_arc_170_green",
	"3as_arc_170_yellow",
	"3as_arc_170_Orange",
	"MEOP_veh_kodiakArm_old",
	"MEOP_veh_turKod_hier",
	"MEOP_veh_a61_BS",
	"MEOP_veh_ta62_BS",
	"MEOP_f61fighter_veh_BS_F",
	"MEOP_SX3fighter_veh_BS_F",
	"lsd_air_v19",
	"MEOP_veh_aerocar_Civ"
	];

VVS_Ship = [];
VVS_Armored = [];
VVS_Autonomous = [];
VVS_Support = [];

/*
									Vehicle restriction
		Again, similar to VAS's functionality. If you want to restrict a specific vehicle you can do it or
		you can restrict an entire vehicle set by using its base class.

		Example:
		VVS_Car = ["Quadbike_01_base_F"]; //Completely removes all quadbikes for all sides
		VVS_Air = ["B_Heli_Light_01_armed_F"]; //Removes the Pawnee
*/
VVS_R_Car = [
	"RD501_Warhammer_Republic",
	"Barc_91",
	"RD501_warden_tank_field",
	"RD501_bantha_501st_MkI",
	"rd501_sw_barc",
	"OPTRE_M812_TT",
	"Shadow_TX130",
	"OPTRE_M813_TT",
	"RD501_Longbow_Republic",
	"RD501_fast_infantry_transport_republic_medic",
	"RD501_light_infantry_transport_Rep_MkII",
	"3as_saber_m1",
	"3as_saber_m1Recon",
	"3as_saber_super",
	"3as_saber_m1G",
	"3as_UTAT",
	"3AS_Barc",
	"3AS_BarcSideCar",
	"3as_Jug",
	"3as_RTT",
	"3as_AV7",
	"SWLG_tanks_tx130",
	"RD501_saber_republic_super_saber_MkII",
	"B_mako_Edessan_Tur_F",
	"C_mako_m32_FCW_F",
	"C_M080apc1_FCW_F"	,
	"Corp99_Dagor_unarmed",
	"Corp99_DAGOR_AT"
			];
VVS_R_Air = [
	"RD501_LAAT_Mk3",
	"RD501_LAAT_spec_ops",
	"B_BSCI212thWampalead_GAR_LAAT_IMK1_01",
	"RD501_delta_7a_Mk2",
	"O_T_VTOL_02_infantry_dynamicLoadout_F",
	"O_OCISHumanDivision_Local_Militial_Air_Transport_01",
	"RD501_Y_wing_MkII",
	"RD501_ARC_170_MKII",
	"RD501_v_wing_MKII",
	"MEOP_veh_kodiakArm_old",
	"MEOP_veh_turKod_hier",
	"3as_LAAT_Mk1",
	"3as_LAAT_Mk3",
	"3as_LAAT_Mk2",
	"3as_LAAT_Mk2Lights",
	"3AS_Nuclass",
	"3as_arc_170_red",
	"3as_arc_170_razor",
	"3as_arc_170_blue",
	"3as_arc_170_green",
	"3as_arc_170_yellow",
	"3as_arc_170_Orange",
	"3as_Z95_Republic"
];
VVS_R_Ship = [];
VVS_R_Armored = [];
VVS_R_Autonomous = [];
VVS_R_Support = [];
