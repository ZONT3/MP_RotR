// Export of '11.egl_laghisola' by [FL] COM Gru Anez on v0.9

///////////////////////////////////////////////////////////////////////////////////////////
// Init
params [["_layerWhiteList",[],[[]]],["_layerBlacklist",[],[[]]],["_posCenter",[0,0,0],[[]]],["_dir",0,[0]],["_idBlacklist",[],[[]]]];
private _allWhitelisted = _layerWhiteList isEqualTo [];
private _layerRoot = (_allWhitelisted || {true in _layerWhiteList}) && {!(true in _layerBlackList)};
private _layer3166 = (_allWhitelisted || {"base_sl" in _layerWhiteList}) && {!("base_sl" in _layerBlackList)};


///////////////////////////////////////////////////////////////////////////////////////////
// Markers
private _markers = [];
private _markerIDs = [];

private _item3167 = "";
if (_layerRoot) then {
	_item3167 = createMarker ["marker_0",[6124.72,3567.15,0]];
	_this = _item3167;
	_markers pushback _this;
	_markerIDs pushback 3167;
	_this setMarkerType "mil_flag";
	_this setMarkerText "Аванпост ВАР";
	_this setMarkerShape "ICON";
	_this setMarkerColor "ColorWEST";
};


///////////////////////////////////////////////////////////////////////////////////////////
// Groups
private _groups = [];
private _groupIDs = [];


///////////////////////////////////////////////////////////////////////////////////////////
// Objects
private _objects = [];
private _objectIDs = [];

private _item3140 = objNull;
if (_layerRoot) then {
	_item3140 = createVehicle ["3AS_HeavyRepeater_Armoured",[6063.48,3526.07,5.1711],[],0,"CAN_COLLIDE"];
	_this = _item3140;
	_objects pushback _this;
	_objectIDs pushback 3140;
	_this setPosWorld [6063.44,3526.01,7.63077];
	_this setVectorDirAndUp [[0.959737,0.280901,0],[0,0,1]];
	[_this,2] call ace_cargo_fnc_setSize;;
};

private _item3141 = objNull;
if (_layerRoot) then {
	_item3141 = createVehicle ["3AS_HeavyRepeater_Armoured",[6067.43,3579.11,8.87965],[],0,"CAN_COLLIDE"];
	_this = _item3141;
	_objects pushback _this;
	_objectIDs pushback 3141;
	_this setPosWorld [6067.39,3579.05,9.87752];
	_this setVectorDirAndUp [[0.999439,-0.0334947,0],[0,0,1]];
	[_this,2] call ace_cargo_fnc_setSize;;
};

private _item3142 = objNull;
if (_layerRoot) then {
	_item3142 = createVehicle ["3AS_HeavyRepeater_Unarmoured",[6144.23,3604.83,8.88308],[],0,"CAN_COLLIDE"];
	_this = _item3142;
	_objects pushback _this;
	_objectIDs pushback 3142;
	_this setPosWorld [6144.2,3604.84,11.4895];
	_this setVectorDirAndUp [[-0.317649,-0.948206,-0.00195322],[-0.0359782,0.00999423,0.999303]];
	[_this,2] call ace_cargo_fnc_setSize;;
};

private _item3143 = objNull;
if (_layerRoot) then {
	_item3143 = createVehicle ["3AS_HeavyRepeater_Armoured",[6190.68,3583.31,5.17551],[],0,"CAN_COLLIDE"];
	_this = _item3143;
	_objects pushback _this;
	_objectIDs pushback 3143;
	_this setPosWorld [6190.64,3583.25,8.25174];
	_this setVectorDirAndUp [[-0.774142,-0.633012,0],[0,0,1]];
	[_this,2] call ace_cargo_fnc_setSize;;
};

private _item3144 = objNull;
if (_layerRoot) then {
	_item3144 = createVehicle ["3AS_HeavyRepeater_Armoured",[6189.82,3526.37,8.88221],[],0,"CAN_COLLIDE"];
	_this = _item3144;
	_objects pushback _this;
	_objectIDs pushback 3144;
	_this setPosWorld [6189.78,3526.31,10.6501];
	_this setVectorDirAndUp [[-0.703176,0.711015,0.00145556],[-0.00399675,-0.00599978,0.999974]];
	[_this,2] call ace_cargo_fnc_setSize;;
};

private _item3145 = objNull;
if (_layerRoot) then {
	_item3145 = createVehicle ["3AS_HeavyRepeater_Armoured",[6146.34,3499.04,8.88304],[],0,"CAN_COLLIDE"];
	_this = _item3145;
	_objects pushback _this;
	_objectIDs pushback 3145;
	_this setPosWorld [6146.3,3498.99,9.70085];
	_this setVectorDirAndUp [[-0.619175,0.785251,-0.00147746],[-0.00999474,-0.00599953,0.999932]];
	[_this,2] call ace_cargo_fnc_setSize;;
};

private _item3146 = objNull;
if (_layerRoot) then {
	_item3146 = createVehicle ["3as_FOB_Banner_prop",[6118.34,3558.5,1.19209e-007],[],0,"CAN_COLLIDE"];
	_this = _item3146;
	_objects pushback _this;
	_objectIDs pushback 3146;
	_this setPosWorld [6118.34,3558.5,2.7086];
	_this setVectorDirAndUp [[0.996823,-0.0769976,0.0203975],[-0.0199947,0.00599887,0.999782]];
};

private _item3147 = objNull;
if (_layerRoot) then {
	_item3147 = createVehicle ["3as_FOB_Banner_prop",[6120.98,3558.28,-1.19209e-007],[],0,"CAN_COLLIDE"];
	_this = _item3147;
	_objects pushback _this;
	_objectIDs pushback 3147;
	_this setPosWorld [6120.98,3558.28,2.75874];
	_this setVectorDirAndUp [[0.996894,-0.0770215,0.0164125],[-0.0159977,0.00599931,0.999854]];
};

private _item3148 = objNull;
if (_layerRoot) then {
	_item3148 = createVehicle ["3as_FOB_Banner_prop",[6123.53,3558.45,-1.19209e-007],[],0,"CAN_COLLIDE"];
	_this = _item3148;
	_objects pushback _this;
	_objectIDs pushback 3148;
	_this setPosWorld [6123.53,3558.45,2.81045];
	_this setVectorDirAndUp [[0.996781,-0.0771186,0.0219275],[-0.021993,0,0.999758]];
};

private _item3149 = objNull;
if (_layerRoot) then {
	_item3149 = createVehicle ["3as_FOB_Banner_prop",[6126.34,3558.43,0],[],0,"CAN_COLLIDE"];
	_this = _item3149;
	_objects pushback _this;
	_objectIDs pushback 3149;
	_this setPosWorld [6126.34,3558.43,2.86689];
	_this setVectorDirAndUp [[0.99686,-0.0771186,0.0179427],[-0.0179963,0,0.999838]];
};

private _item3156 = objNull;
if (_layerRoot) then {
	_item3156 = createVehicle ["3as_Barricade_3_prop",[6069.1,3543.98,0],[],0,"CAN_COLLIDE"];
	_this = _item3156;
	_objects pushback _this;
	_objectIDs pushback 3156;
	_this setPosWorld [6069.1,3543.98,2.12029];
	_this setVectorDirAndUp [[0.867081,-0.498167,-0.000669271],[0.0179961,0.0299804,0.999388]];
};

private _item3157 = objNull;
if (_layerRoot) then {
	_item3157 = createVehicle ["3as_Barricade_2_C_prop",[6070.93,3560.64,0],[],0,"CAN_COLLIDE"];
	_this = _item3157;
	_objects pushback _this;
	_objectIDs pushback 3157;
	_this setPosWorld [6070.93,3560.64,1.57234];
	_this setVectorDirAndUp [[0.78976,-0.613396,0.004888],[0.0139988,0.0259891,0.999564]];
};

private _item3158 = objNull;
if (_layerRoot) then {
	_item3158 = createVehicle ["3as_shield_5_prop",[6068.67,3556.92,0.289613],[],0,"CAN_COLLIDE"];
	_this = _item3158;
	_objects pushback _this;
	_objectIDs pushback 3158;
	_this setPosWorld [6068.67,3556.92,2.61213];
	_this setVectorDirAndUp [[-0.646234,-0.763139,0],[0,0,1]];
};

private _item3159 = objNull;
if (_layerRoot) then {
	_item3159 = createVehicle ["3as_shield_5_prop",[6068.91,3540.36,0],[],0,"CAN_COLLIDE"];
	_this = _item3159;
	_objects pushback _this;
	_objectIDs pushback 3159;
	_this setPosWorld [6068.91,3540.36,2.77991];
	_this setVectorDirAndUp [[0.483358,-0.875247,0.0175524],[0.0179961,0.0299804,0.999388]];
};

private _item3162 = objNull;
if (_layerRoot) then {
	_item3162 = createVehicle ["3as_FOB_Building_1_prop",[6116.7,3531.98,0.0116882],[],0,"CAN_COLLIDE"];
	_this = _item3162;
	_objects pushback _this;
	_objectIDs pushback 3162;
	_this setPosWorld [6116.7,3531.98,6.13694];
	_this setVectorDirAndUp [[0,0.99995,0.00999474],[0.00600007,-0.00999456,0.999932]];
};

private _item3101 = objNull;
if (_layer3166) then {
	_item3101 = createVehicle ["3as_large_crate_stack_3_prop",[6133.73,3531.17,0],[],0,"CAN_COLLIDE"];
	_this = _item3101;
	_objects pushback _this;
	_objectIDs pushback 3101;
	_this setPosWorld [6133.73,3531.17,3.52048];
	_this setVectorDirAndUp [[0,0.999712,0.023991],[0,-0.023991,0.999712]];
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	[_this,0] call JLTS_fnc_jumpAddRecharger;
};

private _item3103 = objNull;
if (_layer3166) then {
	_item3103 = createVehicle ["land_3as_Republic_Container_prop",[6084.97,3532.15,0.0449796],[],0,"CAN_COLLIDE"];
	_this = _item3103;
	_objects pushback _this;
	_objectIDs pushback 3103;
	_this setPosWorld [6084.97,3532.15,3.19625];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	[_this,0] call JLTS_fnc_jumpAddRecharger;
};

private _item3102 = objNull;
if (_layer3166) then {
	_item3102 = createVehicle ["land_3as_Republic_Container_prop",[6091.11,3532.08,0.133255],[],0,"CAN_COLLIDE"];
	_this = _item3102;
	_objects pushback _this;
	_objectIDs pushback 3102;
	_this setPosWorld [6091.11,3532.08,3.19625];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	[_this,0] call JLTS_fnc_jumpAddRecharger;
};

private _item3104 = objNull;
if (_layer3166) then {
	_item3104 = createVehicle ["3as_crate5_3",[6094.22,3534.31,-1.19209e-007],[],0,"CAN_COLLIDE"];
	_this = _item3104;
	_objects pushback _this;
	_objectIDs pushback 3104;
	_this setPosWorld [6094.22,3534.31,2.11695];
	_this setVectorDirAndUp [[0,0.999902,-0.0139947],[0.0119949,0.0139937,0.99983]];
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	[_this,0] call JLTS_fnc_jumpAddRecharger;
};

private _item3105 = objNull;
if (_layer3166) then {
	_item3105 = createVehicle ["3as_Big_Box_2_prop",[6088.08,3539.32,0],[],0,"CAN_COLLIDE"];
	_this = _item3105;
	_objects pushback _this;
	_objectIDs pushback 3105;
	_this setPosWorld [6088.08,3539.32,3.00187];
	_this setVectorDirAndUp [[0,0.999838,-0.0179963],[0.00800059,0.0179957,0.999806]];
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	[_this,0] call JLTS_fnc_jumpAddRecharger;
};

private _item3106 = objNull;
if (_layer3166) then {
	_item3106 = createVehicle ["3as_Landingpad_R3_prop",[6160.47,3555.33,-0.0195568],[],0,"CAN_COLLIDE"];
	_this = _item3106;
	_objects pushback _this;
	_objectIDs pushback 3106;
	_this setPosWorld [6160.47,3555.33,3.74193];
	_this setVectorDirAndUp [[0,0.9998,0.0199947],[-0.00201323,-0.0199947,0.999798]];
};

private _item3107 = objNull;
if (_layer3166) then {
	_item3107 = createVehicle ["land_3as_Republic_Forward_Command_prop",[6136.74,3559.76,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item3107;
	_objects pushback _this;
	_objectIDs pushback 3107;
	_this setPosWorld [6136.74,3559.76,5.33318];
	_this setVectorDirAndUp [[-0.560293,0.828287,-0.00345813],[-0.0179963,-0.0079993,0.999806]];
};

private _item3111 = objNull;
if (_layer3166) then {
	_item3111 = createVehicle ["3as_prop_fob_modular_wall_watchtower",[6063.23,3525.88,7.15256e-007],[],0,"CAN_COLLIDE"];
	_this = _item3111;
	_objects pushback _this;
	_objectIDs pushback 3111;
	_this setPosWorld [6063.23,3525.88,8.21496];
	_this setVectorDirAndUp [[-0.952911,-0.301887,0.0287269],[0.0199947,0.0319766,0.999289]];
};

private _item3115 = objNull;
if (_layer3166) then {
	_item3115 = createVehicle ["3as_FOB_Building_2_prop",[6123.37,3566.26,2.38419e-007],[],0,"CAN_COLLIDE"];
	_this = _item3115;
	_objects pushback _this;
	_objectIDs pushback 3115;
	_this setPosWorld [6123.37,3566.26,4.57082];
	_this setVectorDirAndUp [[0,0.999872,-0.0159977],[-0.0239937,0.0159931,0.999584]];
};

private _item3116 = objNull;
if (_layer3166) then {
	_item3116 = createVehicle ["3as_FOB_Hangar_Prop",[6098.24,3564.06,0.499454],[],0,"CAN_COLLIDE"];
	_this = _item3116;
	_objects pushback _this;
	_objectIDs pushback 3116;
	_this setPosWorld [6098.24,3564.06,5.39329];
	_this setVectorDirAndUp [[0,1,-0.00077204],[0,0.00077204,1]];
};

private _item3117 = objNull;
if (_layer3166) then {
	_item3117 = createVehicle ["3as_prop_fob_modular_wall_watchtower",[6067.16,3579.18,-4.82798e-006],[],0,"CAN_COLLIDE"];
	_this = _item3117;
	_objects pushback _this;
	_objectIDs pushback 3117;
	_this setPosWorld [6067.16,3579.18,6.74628];
	_this setVectorDirAndUp [[-0.997843,0.0639149,0.0149445],[0.0159975,0.0159956,0.999744]];
};

private _item3118 = objNull;
if (_layer3166) then {
	_item3118 = createVehicle ["3as_prop_fob_modular_wall_watchtower",[6146.39,3499.08,-2.563e-006],[],0,"CAN_COLLIDE"];
	_this = _item3118;
	_objects pushback _this;
	_objectIDs pushback 3118;
	_this setPosWorld [6146.39,3499.08,6.56618];
	_this setVectorDirAndUp [[0.606192,-0.795318,0.00128729],[-0.00999474,-0.00599953,0.999932]];
};

private _item3119 = objNull;
if (_layer3166) then {
	_item3119 = createVehicle ["3as_prop_fob_modular_wall_watchtower",[6144.21,3604.88,-5.24521e-006],[],0,"CAN_COLLIDE"];
	_this = _item3119;
	_objects pushback _this;
	_objectIDs pushback 3119;
	_this setPosWorld [6144.21,3604.88,7.3604];
	_this setVectorDirAndUp [[0.401671,0.915769,0.00530205],[-0.0359766,0.00999423,0.999303]];
};

private _item3120 = objNull;
if (_layer3166) then {
	_item3120 = createVehicle ["3as_prop_fob_modular_wall_watchtower",[6190.75,3583.38,-3.57628e-006],[],0,"CAN_COLLIDE"];
	_this = _item3120;
	_objects pushback _this;
	_objectIDs pushback 3120;
	_this setPosWorld [6190.75,3583.38,8.82815];
	_this setVectorDirAndUp [[0.724954,0.688172,0.0293494],[-0.012,-0.0299848,0.999478]];
};

private _item3121 = objNull;
if (_layer3166) then {
	_item3121 = createVehicle ["3as_prop_fob_modular_wall_watchtower",[6189.83,3526.35,-1.19209e-007],[],0,"CAN_COLLIDE"];
	_this = _item3121;
	_objects pushback _this;
	_objectIDs pushback 3121;
	_this setPosWorld [6189.83,3526.35,7.5152];
	_this setVectorDirAndUp [[0.790523,-0.612432,-0.000514952],[-0.00399675,-0.00599978,0.999974]];
};

private _item3122 = objNull;
if (_layer3166) then {
	_item3122 = createVehicle ["3as_saber_m1",[6093.17,3570.91,0.687562],[],0,"CAN_COLLIDE"];
	_this = _item3122;
	_objects pushback _this;
	_objectIDs pushback 3122;
	_this setPosWorld [6092.97,3571.12,1.80192];
	_this setVectorDirAndUp [[0,0.999999,-0.00154408],[0,0.00154408,0.999999]];
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	_this setVariable ['s',1];;
	[_this,4] call ace_cargo_fnc_setSpace;;
	[_this,0] call JLTS_fnc_jumpAddRecharger;
};

private _item3123 = objNull;
if (_layer3166) then {
	_item3123 = createVehicle ["3as_saber_super",[6103.68,3570.43,0.539742],[],0,"CAN_COLLIDE"];
	_this = _item3123;
	_objects pushback _this;
	_objectIDs pushback 3123;
	_this setPosWorld [6103.49,3570.64,1.81922];
	_this setVectorDirAndUp [[0,0.999999,-0.00154408],[0,0.00154408,0.999999]];
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	_this setVariable ['s',1];;
	[_this,4] call ace_cargo_fnc_setSpace;;
	[_this,0] call JLTS_fnc_jumpAddRecharger;
};

private _item3124 = objNull;
if (_layer3166) then {
	_item3124 = createVehicle ["3AS_Barc",[6097.82,3534.97,0],[],0,"CAN_COLLIDE"];
	_this = _item3124;
	_objects pushback _this;
	_objectIDs pushback 3124;
	_this setPosWorld [6097.84,3534.55,1.68716];
	_this setVectorDirAndUp [[0.429324,0.903088,-0.0106608],[0.00800059,0.00800064,0.999936]];
	[_this,"[[[[""RD501_DC_15s_shield""],[2]],[[""SW_SquadShield_Mag"",""SW_halfshield_Mag"",""JLTS_DC15X_mag"",""DCStun_Mag"",""SWOP_DC15ABlasterRifle_Full_Mag"",""SWLW_plx1_at_mag"",""SWLW_plx1_ap_mag"",""SWLW_DC15A_UGL_huntir_Mag"",""RD501_DC15s_x60_mag"",""SWOP_DC15_Mag"",""SWOP_dc15xBlasterRifle_Mag"",""RD501_DC15x_x6_mag"",""212th_45Rnd_DC15S_mag"",""212th_15rnd_Energy_dc15XM_mag"",""212th_3rnd_Plasma_dc15XM_mag""],[20,40,50,10,20,10,10,10,20,20,30,30,20,20,20]],[[""SWOP_DC15S_HoloScope"",""ACE_Clacker"",""MineDetector"",""ACE_epinephrine"",""ACE_personalAidKit"",""ACE_tourniquet"",""ACE_CableTie"",""ACE_DefusalKit"",""ACE_bloodIV"",""ACE_bloodIV_250"",""ACE_bloodIV_500"",""ACE_bodyBag"",""ACE_morphine"",""ACE_Tripod"",""ACE_splint"",""SWLB_comlink"",""ACE_packingBandage"",""ACE_elasticBandage"",""SWLB_CEE_91st_BARC_Helmet"",""ACE_HuntIR_monitor"",""FirstAidKit""],[2,2,2,15,2,6,10,2,20,20,20,6,16,2,16,2,100,100,2,2,4]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	_this setVariable ['s',1];;
	[_this,4] call ace_cargo_fnc_setSpace;;
	[_this,0] call JLTS_fnc_jumpAddRecharger;
};

private _item3125 = objNull;
if (_layer3166) then {
	_item3125 = createVehicle ["3AS_BarcSideCar",[6102.33,3532.17,0],[],0,"CAN_COLLIDE"];
	_this = _item3125;
	_objects pushback _this;
	_objectIDs pushback 3125;
	_this setPosWorld [6101.91,3531.75,1.6693];
	_this setVectorDirAndUp [[-0.0347117,0.999369,-0.0075797],[0.0119949,0.00800032,0.999896]];
	[_this,"[[[[""RD501_DC_15s_shield""],[2]],[[""SW_SquadShield_Mag"",""SW_halfshield_Mag"",""JLTS_DC15X_mag"",""DCStun_Mag"",""SWOP_DC15ABlasterRifle_Full_Mag"",""SWLW_plx1_at_mag"",""SWLW_plx1_ap_mag"",""SWLW_DC15A_UGL_huntir_Mag"",""RD501_DC15s_x60_mag"",""SWOP_DC15_Mag"",""SWOP_dc15xBlasterRifle_Mag"",""RD501_DC15x_x6_mag"",""212th_45Rnd_DC15S_mag"",""212th_15rnd_Energy_dc15XM_mag"",""212th_3rnd_Plasma_dc15XM_mag""],[20,40,50,10,20,10,10,10,20,20,30,30,20,20,20]],[[""SWOP_DC15S_HoloScope"",""ACE_Clacker"",""MineDetector"",""ACE_epinephrine"",""ACE_personalAidKit"",""ACE_tourniquet"",""ACE_CableTie"",""ACE_DefusalKit"",""ACE_bloodIV"",""ACE_bloodIV_250"",""ACE_bloodIV_500"",""ACE_bodyBag"",""ACE_morphine"",""ACE_Tripod"",""ACE_splint"",""SWLB_comlink"",""ACE_packingBandage"",""ACE_elasticBandage"",""SWLB_CEE_91st_BARC_Helmet"",""ACE_HuntIR_monitor"",""FirstAidKit""],[2,2,2,15,2,6,10,2,20,20,20,6,16,2,16,2,100,100,2,2,4]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	_this setVariable ['s',1];;
	[_this,4] call ace_cargo_fnc_setSpace;;
	[_this,0] call JLTS_fnc_jumpAddRecharger;
};

private _item3127 = objNull;
if (_layer3166) then {
	_item3127 = createVehicle ["3as_MB_Platform_Support_Prop",[6097.6,3569.69,34.6333],[],0,"CAN_COLLIDE"];
	_this = _item3127;
	_objects pushback _this;
	_objectIDs pushback 3127;
	_this setPosWorld [6097.6,3569.69,29.5707];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
};

private _item3128 = objNull;
if (_layer3166) then {
	_item3128 = createVehicle ["3as_FOB_Light_Tall_Prop",[6144.29,3605.4,11.5005],[],0,"CAN_COLLIDE"];
	_this = _item3128;
	_objects pushback _this;
	_objectIDs pushback 3128;
	_this setPosWorld [6144.29,3605.4,19.1314];
	_this setVectorDirAndUp [[0.365518,-0.930804,0],[0,0,1]];
};

private _item3129 = objNull;
if (_layer3166) then {
	_item3129 = createVehicle ["3as_FOB_Light_Tall_Prop",[6066.67,3578.47,11.4958],[],0,"CAN_COLLIDE"];
	_this = _item3129;
	_objects pushback _this;
	_objectIDs pushback 3129;
	_this setPosWorld [6066.67,3578.47,18.534];
	_this setVectorDirAndUp [[0.672334,-0.740248,0],[0,0,1]];
};

private _item3130 = objNull;
if (_layer3166) then {
	_item3130 = createVehicle ["3as_FOB_Light_Tall_Prop",[6062.86,3525.6,8.88261],[],0,"CAN_COLLIDE"];
	_this = _item3130;
	_objects pushback _this;
	_objectIDs pushback 3130;
	_this setPosWorld [6062.86,3525.6,17.3867];
	_this setVectorDirAndUp [[-0.459898,-0.887972,0],[0,0,1]];
};

private _item3131 = objNull;
if (_layer3166) then {
	_item3131 = createVehicle ["3as_FOB_Light_Tall_Prop",[6146.66,3498.77,11.4978],[],0,"CAN_COLLIDE"];
	_this = _item3131;
	_objects pushback _this;
	_objectIDs pushback 3131;
	_this setPosWorld [6146.66,3498.77,18.3376];
	_this setVectorDirAndUp [[-0.128316,-0.991733,0],[0,0,1]];
};

private _item3132 = objNull;
if (_layer3166) then {
	_item3132 = createVehicle ["3as_FOB_Light_Tall_Prop",[6190.42,3526.11,11.4355],[],0,"CAN_COLLIDE"];
	_this = _item3132;
	_objects pushback _this;
	_objectIDs pushback 3132;
	_this setPosWorld [6190.42,3526.11,19.2252];
	_this setVectorDirAndUp [[0.137403,-0.990515,0],[0,0,1]];
};

private _item3133 = objNull;
if (_layer3166) then {
	_item3133 = createVehicle ["3as_FOB_Light_Tall_Prop",[6191.18,3583.83,11.4966],[],0,"CAN_COLLIDE"];
	_this = _item3133;
	_objects pushback _this;
	_objectIDs pushback 3133;
	_this setPosWorld [6191.18,3583.83,20.6163];
	_this setVectorDirAndUp [[0.00896195,-0.99996,0],[0,0,1]];
};

private _item3134 = objNull;
if (_layer3166) then {
	_item3134 = createVehicle ["Land_OPTRE_Holotable",[6122.29,3565.47,0.444847],[],0,"CAN_COLLIDE"];
	_this = _item3134;
	_objects pushback _this;
	_objectIDs pushback 3134;
	_this setPosWorld [6122.29,3565.47,2.7378];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
};

private _item3135 = objNull;
if (_layer3166) then {
	_item3135 = createVehicle ["land_Pantalla",[6118.17,3571.08,0.443332],[],0,"CAN_COLLIDE"];
	_this = _item3135;
	_objects pushback _this;
	_objectIDs pushback 3135;
	_this setPosWorld [6118.17,3571.08,3.46353];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
};

private _item3136 = objNull;
if (_layer3166) then {
	_item3136 = createVehicle ["land_Pantalla",[6121.94,3571.07,0.449105],[],0,"CAN_COLLIDE"];
	_this = _item3136;
	_objects pushback _this;
	_objectIDs pushback 3136;
	_this setPosWorld [6121.94,3571.07,3.5543];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
};

private _item3396 = objNull;
if (_layerRoot) then {
	_item3396 = createVehicle ["Land_OPTRE_vidphone_terminal",[6133.63,3538.63,0],[],0,"CAN_COLLIDE"];
	_this = _item3396;
	_objects pushback _this;
	_objectIDs pushback 3396;
	_this setPosWorld [6133.63,3538.63,2.74012];
	_this setVectorDirAndUp [[-0.999741,-0.0227746,0],[0,0,1]];
};


///////////////////////////////////////////////////////////////////////////////////////////
// Triggers
private _triggers = [];
private _triggerIDs = [];


///////////////////////////////////////////////////////////////////////////////////////////
// Group attributes (applied only once group units exist)


///////////////////////////////////////////////////////////////////////////////////////////
// Waypoints
private _waypoints = [];
private _waypointIDs = [];


///////////////////////////////////////////////////////////////////////////////////////////
// Logics
private _logics = [];
private _logicIDs = [];

private _item0 = objNull;
if (_layerRoot) then {
	_item0 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["ModuleHideTerrainObjects_F",[6121.86,3570.15,0],[],0,"CAN_COLLIDE"];
	_this = _item0;
	_logics pushback _this;
	_logicIDs pushback 0;
	_this setPosWorld [6121.86,3570.15,1.62159];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setVariable ["objectArea",[100,100,0,false,-1]];
	_this setVariable ["#filter",15];
	_this setVariable ["#hideLocally",false];
	_this setvariable ["BIS_fnc_initModules_disableAutoActivation",true];
};


///////////////////////////////////////////////////////////////////////////////////////////
// Layers
if (_layer3166) then {missionNamespace setVariable ["11_BASE_SL",[[_item3101,_item3103,_item3102,_item3104,_item3105,_item3106,_item3107,_item3111,_item3115,_item3116,_item3117,_item3118,_item3119,_item3120,_item3121,_item3122,_item3123,_item3124,_item3125,_item3127,_item3128,_item3129,_item3130,_item3131,_item3132,_item3133,_item3134,_item3135,_item3136],[]]];};


///////////////////////////////////////////////////////////////////////////////////////////
// Crews


///////////////////////////////////////////////////////////////////////////////////////////
// Vehicle cargo


///////////////////////////////////////////////////////////////////////////////////////////
// Connections


///////////////////////////////////////////////////////////////////////////////////////////
// Inits (executed only once all entities exist; isNil used to ensure non-scheduled environment)
isNil {
	if !(isnull _item3396) then {
		this = _item3396;
		call{[this, "Переместиться на Аванпост", [], "#1b9be0", "side player == west", 7] call ZONT_fnc_addTeleportTerminal};
	};
};


///////////////////////////////////////////////////////////////////////////////////////////
// Module activations (only once everything is spawned and connected)
if !(isNull _item0) then {_item0 setvariable ["BIS_fnc_initModules_activate",true];};


///////////////////////////////////////////////////////////////////////////////////////////
[[_objects,_groups,_triggers,_waypoints,_logics,_markers],[_objectIDs,_groupIDs,_triggerIDs,_waypointIDs,_logicIDs,_markerIDs]];


deleteVehicle outpost_spawn;

deleteMarker "marker_9"