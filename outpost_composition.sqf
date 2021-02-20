// Export of '555.OPTRE_Madrigal' by [FL] COM Gru Anez on v0.9

///////////////////////////////////////////////////////////////////////////////////////////
// Init
params [["_layerWhiteList",[],[[]]],["_layerBlacklist",[],[[]]],["_posCenter",[0,0,0],[[]]],["_dir",0,[0]],["_idBlacklist",[],[[]]]];
private _allWhitelisted = _layerWhiteList isEqualTo [];
private _layerRoot = (_allWhitelisted || {true in _layerWhiteList}) && {!(true in _layerBlackList)};


///////////////////////////////////////////////////////////////////////////////////////////
// Markers
private _markers = [];
private _markerIDs = [];


///////////////////////////////////////////////////////////////////////////////////////////
// Groups
private _groups = [];
private _groupIDs = [];

private _item92 = grpNull;
if (_layerRoot) then {
	_item92 = createGroup east;
	_this = _item92;
	_groups pushback _this;
	_groupIDs pushback 92;
};

private _item97 = grpNull;
if (_layerRoot) then {
	_item97 = createGroup east;
	_this = _item97;
	_groups pushback _this;
	_groupIDs pushback 97;
};

private _item102 = grpNull;
if (_layerRoot) then {
	_item102 = createGroup east;
	_this = _item102;
	_groups pushback _this;
	_groupIDs pushback 102;
};

private _item110 = grpNull;
if (_layerRoot) then {
	_item110 = createGroup east;
	_this = _item110;
	_groups pushback _this;
	_groupIDs pushback 110;
};

private _item111 = grpNull;
if (_layerRoot) then {
	_item111 = createGroup east;
	_this = _item111;
	_groups pushback _this;
	_groupIDs pushback 111;
};

private _item112 = grpNull;
if (_layerRoot) then {
	_item112 = createGroup east;
	_this = _item112;
	_groups pushback _this;
	_groupIDs pushback 112;
};

private _item306 = grpNull;
if (_layerRoot) then {
	_item306 = createGroup east;
	_this = _item306;
	_groups pushback _this;
	_groupIDs pushback 306;
};

private _item308 = grpNull;
if (_layerRoot) then {
	_item308 = createGroup east;
	_this = _item308;
	_groups pushback _this;
	_groupIDs pushback 308;
};

private _item310 = grpNull;
if (_layerRoot) then {
	_item310 = createGroup east;
	_this = _item310;
	_groups pushback _this;
	_groupIDs pushback 310;
};

private _item312 = grpNull;
if (_layerRoot) then {
	_item312 = createGroup east;
	_this = _item312;
	_groups pushback _this;
	_groupIDs pushback 312;
};

private _item314 = grpNull;
if (_layerRoot) then {
	_item314 = createGroup east;
	_this = _item314;
	_groups pushback _this;
	_groupIDs pushback 314;
};

private _item316 = grpNull;
if (_layerRoot) then {
	_item316 = createGroup east;
	_this = _item316;
	_groups pushback _this;
	_groupIDs pushback 316;
};

private _item318 = grpNull;
if (_layerRoot) then {
	_item318 = createGroup east;
	_this = _item318;
	_groups pushback _this;
	_groupIDs pushback 318;
};

private _item320 = grpNull;
if (_layerRoot) then {
	_item320 = createGroup east;
	_this = _item320;
	_groups pushback _this;
	_groupIDs pushback 320;
};

private _item322 = grpNull;
if (_layerRoot) then {
	_item322 = createGroup east;
	_this = _item322;
	_groups pushback _this;
	_groupIDs pushback 322;
};

private _item324 = grpNull;
if (_layerRoot) then {
	_item324 = createGroup east;
	_this = _item324;
	_groups pushback _this;
	_groupIDs pushback 324;
};

private _item326 = grpNull;
if (_layerRoot) then {
	_item326 = createGroup east;
	_this = _item326;
	_groups pushback _this;
	_groupIDs pushback 326;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Objects
private _objects = [];
private _objectIDs = [];

private _item94 = objNull;
if (_layerRoot) then {
	_item94 = _item92 createUnit ["RD501_opfor_unit_B1_crew",[2913.68,5973.28,-4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item94;
	_objects pushback _this;
	_objectIDs pushback 94;
	_this setPosWorld [2913.6,5972.42,4.58404];
	_this setVectorDirAndUp [[-0.994583,0.10287,-0.0149143],[-0.0149939,0,0.999888]];
	_this setname "B1 - 08064";;
	_this setface "SWLB_JH_Head_C";;
	_this setspeaker "male04eng";;
	_this setpitch 0.966861;;
	_this setUnitTrait ['Medic',false];
	_this setUnitTrait ['Engineer',false];
	_this setUnitTrait ['ExplosiveSpecialist',false];
	_this setUnitTrait ['UAVHacker',false];
	if !(0 == ([0,1] select (_this getUnitTrait 'engineer'))|| {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor",1,true];
	_this setVariable ['ACE_isEOD',false,true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
};

private _item95 = objNull;
if (_layerRoot) then {
	_item95 = _item92 createUnit ["RD501_opfor_unit_B1_crew",[2913.68,5973.28,-9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item95;
	_objects pushback _this;
	_objectIDs pushback 95;
	_this setPosWorld [2913.6,5972.42,4.58404];
	_this setVectorDirAndUp [[-0.994583,0.10287,-0.0149143],[-0.0149939,0,0.999888]];
	_this setname "B1 - 55286";;
	_this setface "WhiteHead_12";;
	_this setspeaker "male08eng";;
	_this setpitch 0.972947;;
	_this setUnitTrait ['Medic',false];
	_this setUnitTrait ['Engineer',false];
	_this setUnitTrait ['ExplosiveSpecialist',false];
	_this setUnitTrait ['UAVHacker',false];
	if !(0 == ([0,1] select (_this getUnitTrait 'engineer'))|| {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor",1,true];
	_this setVariable ['ACE_isEOD',false,true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
};

private _item96 = objNull;
if (_layerRoot) then {
	_item96 = _item92 createUnit ["RD501_opfor_unit_B1_crew",[2913.68,5973.28,0],[],0,"CAN_COLLIDE"];
	_item92 selectLeader _item96;
	_this = _item96;
	_objects pushback _this;
	_objectIDs pushback 96;
	_this setPosWorld [2913.6,5972.42,4.58404];
	_this setVectorDirAndUp [[-0.994584,0.102862,-0.0149123],[-0.0149918,0,0.999888]];
	_this setname "B1 - 449310";;
	_this setface "Clone_face_tup";;
	_this setspeaker "Male10ENG";;
	_this setpitch 0.98;;
	_this setUnitTrait ['Medic',false];
	_this setUnitTrait ['Engineer',false];
	_this setUnitTrait ['ExplosiveSpecialist',false];
	_this setUnitTrait ['UAVHacker',false];
	if !(0 == ([0,1] select (_this getUnitTrait 'engineer'))|| {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor",1,true];
	_this setVariable ['ACE_isEOD',false,true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
};

private _item93 = objNull;
if (_layerRoot) then {
	_item93 = createVehicle ["RD501_AAT_Blue",[2913.68,5973.28,-4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item93;
	_objects pushback _this;
	_objectIDs pushback 93;
	_this setPosWorld [2913.6,5972.42,4.58404];
	_this setVectorDirAndUp [[-0.994583,0.10287,-0.0149143],[-0.0149939,0,0.999888]];
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	_this setVariable ['s',1];;
	[_this,4] call ace_cargo_fnc_setSpace;;
	[_this,0] call JLTS_fnc_jumpAddRecharger;
};

private _item99 = objNull;
if (_layerRoot) then {
	_item99 = _item97 createUnit ["RD501_opfor_unit_B1_crew",[2766.27,5898.45,2.76566e-005],[],0,"CAN_COLLIDE"];
	_this = _item99;
	_objects pushback _this;
	_objectIDs pushback 99;
	_this setPosWorld [2766.17,5897.58,6.85796];
	_this setVectorDirAndUp [[-0.796038,0.603526,0.0456055],[0.0797452,0.0298917,0.996367]];
	_this setname "B1 - 46570";;
	_this setface "SWLB_JH_Head_Nerf";;
	_this setspeaker "male10eng";;
	_this setpitch 0.954779;;
	_this setUnitTrait ['Medic',false];
	_this setUnitTrait ['Engineer',false];
	_this setUnitTrait ['ExplosiveSpecialist',false];
	_this setUnitTrait ['UAVHacker',false];
	if !(0 == ([0,1] select (_this getUnitTrait 'engineer'))|| {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor",1,true];
	_this setVariable ['ACE_isEOD',false,true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
};

private _item100 = objNull;
if (_layerRoot) then {
	_item100 = _item97 createUnit ["RD501_opfor_unit_B1_crew",[2766.27,5898.45,2.71797e-005],[],0,"CAN_COLLIDE"];
	_this = _item100;
	_objects pushback _this;
	_objectIDs pushback 100;
	_this setPosWorld [2766.17,5897.58,6.85796];
	_this setVectorDirAndUp [[-0.796038,0.603526,0.0456055],[0.0797452,0.0298917,0.996367]];
	_this setname "B1 - 657436";;
	_this setface "SWLB_JH_Head_C";;
	_this setspeaker "male10eng";;
	_this setpitch 1.0447;;
	_this setUnitTrait ['Medic',false];
	_this setUnitTrait ['Engineer',false];
	_this setUnitTrait ['ExplosiveSpecialist',false];
	_this setUnitTrait ['UAVHacker',false];
	if !(0 == ([0,1] select (_this getUnitTrait 'engineer'))|| {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor",1,true];
	_this setVariable ['ACE_isEOD',false,true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
};

private _item101 = objNull;
if (_layerRoot) then {
	_item101 = _item97 createUnit ["RD501_opfor_unit_B1_crew",[2766.27,5898.45,2.71797e-005],[],0,"CAN_COLLIDE"];
	_item97 selectLeader _item101;
	_this = _item101;
	_objects pushback _this;
	_objectIDs pushback 101;
	_this setPosWorld [2766.17,5897.58,6.85796];
	_this setVectorDirAndUp [[-0.796038,0.603526,0.0456055],[0.0797452,0.0298917,0.996367]];
	_this setname "B1 - 89707";;
	_this setface "Anakin_face";;
	_this setspeaker "male09eng";;
	_this setpitch 0.9852;;
	_this setUnitTrait ['Medic',false];
	_this setUnitTrait ['Engineer',false];
	_this setUnitTrait ['ExplosiveSpecialist',false];
	_this setUnitTrait ['UAVHacker',false];
	if !(0 == ([0,1] select (_this getUnitTrait 'engineer'))|| {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor",1,true];
	_this setVariable ['ACE_isEOD',false,true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
};

private _item98 = objNull;
if (_layerRoot) then {
	_item98 = createVehicle ["RD501_AAT_Blue",[2766.27,5898.45,0.00431108],[],0,"CAN_COLLIDE"];
	_this = _item98;
	_objects pushback _this;
	_objectIDs pushback 98;
	_this setPosWorld [2766.17,5897.58,6.85796];
	_this setVectorDirAndUp [[-0.796038,0.603526,0.0456055],[0.0797452,0.0298917,0.996367]];
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	_this setVariable ['s',1];;
	[_this,4] call ace_cargo_fnc_setSpace;;
	[_this,0] call JLTS_fnc_jumpAddRecharger;
};

private _item104 = objNull;
if (_layerRoot) then {
	_item104 = _item102 createUnit ["RD501_opfor_unit_B1_crew",[2975.34,5921.72,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item104;
	_objects pushback _this;
	_objectIDs pushback 104;
	_this setPosWorld [2975.27,5920.86,6.62341];
	_this setVectorDirAndUp [[0.82471,0.56554,-0.00436582],[-0.00499145,0.0149977,0.999875]];
	_this setname "B1 - 827338";;
	_this setface "SWLB_JH_Head_Shiv";;
	_this setspeaker "male05eng";;
	_this setpitch 1.03708;;
	_this setUnitTrait ['Medic',false];
	_this setUnitTrait ['Engineer',false];
	_this setUnitTrait ['ExplosiveSpecialist',false];
	_this setUnitTrait ['UAVHacker',false];
	if !(0 == ([0,1] select (_this getUnitTrait 'engineer'))|| {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor",1,true];
	_this setVariable ['ACE_isEOD',false,true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
};

private _item105 = objNull;
if (_layerRoot) then {
	_item105 = _item102 createUnit ["RD501_opfor_unit_B1_crew",[2975.34,5921.72,4.29153e-006],[],0,"CAN_COLLIDE"];
	_this = _item105;
	_objects pushback _this;
	_objectIDs pushback 105;
	_this setPosWorld [2975.27,5920.86,6.62341];
	_this setVectorDirAndUp [[0.82471,0.56554,-0.00436582],[-0.00499145,0.0149977,0.999875]];
	_this setname "B1 - 62872";;
	_this setface "Clone_face_kix";;
	_this setspeaker "male11eng";;
	_this setpitch 0.994115;;
	_this setUnitTrait ['Medic',false];
	_this setUnitTrait ['Engineer',false];
	_this setUnitTrait ['ExplosiveSpecialist',false];
	_this setUnitTrait ['UAVHacker',false];
	if !(0 == ([0,1] select (_this getUnitTrait 'engineer'))|| {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor",1,true];
	_this setVariable ['ACE_isEOD',false,true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
};

private _item106 = objNull;
if (_layerRoot) then {
	_item106 = _item102 createUnit ["RD501_opfor_unit_B1_crew",[2975.34,5921.72,4.29153e-006],[],0,"CAN_COLLIDE"];
	_item102 selectLeader _item106;
	_this = _item106;
	_objects pushback _this;
	_objectIDs pushback 106;
	_this setPosWorld [2975.27,5920.86,6.62341];
	_this setVectorDirAndUp [[0.82471,0.56554,-0.00436582],[-0.00499145,0.0149977,0.999875]];
	_this setname "B1 - 42099";;
	_this setface "Clone_face_tup";;
	_this setspeaker "male01eng";;
	_this setpitch 1.02021;;
	_this setUnitTrait ['Medic',false];
	_this setUnitTrait ['Engineer',false];
	_this setUnitTrait ['ExplosiveSpecialist',false];
	_this setUnitTrait ['UAVHacker',false];
	if !(0 == ([0,1] select (_this getUnitTrait 'engineer'))|| {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor",1,true];
	_this setVariable ['ACE_isEOD',false,true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
};

private _item103 = objNull;
if (_layerRoot) then {
	_item103 = createVehicle ["RD501_AAT_Blue",[2975.34,5921.72,4.29153e-006],[],0,"CAN_COLLIDE"];
	_this = _item103;
	_objects pushback _this;
	_objectIDs pushback 103;
	_this setPosWorld [2975.27,5920.86,6.62341];
	_this setVectorDirAndUp [[0.82471,0.56554,-0.00436582],[-0.00499145,0.0149977,0.999875]];
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	_this setVariable ['s',1];;
	[_this,4] call ace_cargo_fnc_setSpace;;
	[_this,0] call JLTS_fnc_jumpAddRecharger;
};

private _item109 = objNull;
if (_layerRoot) then {
	_item109 = _item110 createUnit ["ls_cis_b1At_standard",[2910.5,5916.27,-3.8147e-006],[],0,"CAN_COLLIDE"];
	_item110 selectLeader _item109;
	_this = _item109;
	_objects pushback _this;
	_objectIDs pushback 109;
	_this setPosWorld [2910.5,5916.32,5.12098];
	_this setVectorDirAndUp [[-0.256564,0.966527,0],[0,0,1]];
	_this setname "B1- 4456";;
	_this setface "WhiteHead_04";;
	_this setspeaker "male07eng";;
	_this setpitch 1.0395;;
	_this setUnitTrait ['Medic',false];
	_this setUnitTrait ['Engineer',false];
	_this setUnitTrait ['ExplosiveSpecialist',false];
	_this setUnitTrait ['UAVHacker',false];
	if !(0 == ([0,1] select (_this getUnitTrait 'engineer'))|| {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor",1,true];
	_this setVariable ['ACE_isEOD',false,true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
};

private _item108 = objNull;
if (_layerRoot) then {
	_item108 = _item111 createUnit ["ls_cis_b1At_standard",[2917.23,5918.56,4.29153e-006],[],0,"CAN_COLLIDE"];
	_item111 selectLeader _item108;
	_this = _item108;
	_objects pushback _this;
	_objectIDs pushback 108;
	_this setPosWorld [2917.23,5918.61,5.42293];
	_this setVectorDirAndUp [[-0.224387,0.9745,0],[0,0,1]];
	_this setname "B1- 1222";;
	_this setface "SWLB_JH_Head_Bald";;
	_this setspeaker "male11eng";;
	_this setpitch 1.03244;;
	_this setUnitTrait ['Medic',false];
	_this setUnitTrait ['Engineer',false];
	_this setUnitTrait ['ExplosiveSpecialist',false];
	_this setUnitTrait ['UAVHacker',false];
	if !(0 == ([0,1] select (_this getUnitTrait 'engineer'))|| {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor",1,true];
	_this setVariable ['ACE_isEOD',false,true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
};

private _item113 = objNull;
if (_layerRoot) then {
	_item113 = _item112 createUnit ["ls_cis_b1SquadLead_standard",[2867.19,5978.08,1.90735e-006],[],0,"CAN_COLLIDE"];
	_item112 selectLeader _item113;
	_this = _item113;
	_objects pushback _this;
	_objectIDs pushback 113;
	_this setPosWorld [2867.19,5978.13,4.50301];
	_this setVectorDirAndUp [[-0.991108,0.13306,0],[0,0,1]];
	_this setRank "SERGEANT";
	_this setname "B1- 06357";;
	_this setface "SWLB_JH_Head_I";;
	_this setspeaker "male10eng";;
	_this setpitch 1.01285;;
	_this setUnitTrait ['Medic',false];
	_this setUnitTrait ['Engineer',false];
	_this setUnitTrait ['ExplosiveSpecialist',false];
	_this setUnitTrait ['UAVHacker',false];
	if !(0 == ([0,1] select (_this getUnitTrait 'engineer'))|| {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor",1,true];
	_this setVariable ['ACE_isEOD',false,true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
};

private _item114 = objNull;
if (_layerRoot) then {
	_item114 = _item112 createUnit ["ls_cis_b1Heavy_standard",[2872.82,5982.37,1.43051e-006],[],0,"CAN_COLLIDE"];
	_this = _item114;
	_objects pushback _this;
	_objectIDs pushback 114;
	_this setPosWorld [2872.82,5982.42,4.57881];
	_this setVectorDirAndUp [[-0.991108,0.13306,0],[0,0,1]];
	_this setSkill 0.4;
	_this setname "B1- 24832";;
	_this setface "Sturrock";;
	_this setspeaker "male07eng";;
	_this setpitch 0.989348;;
	_this setUnitTrait ['Medic',false];
	_this setUnitTrait ['Engineer',false];
	_this setUnitTrait ['ExplosiveSpecialist',false];
	_this setUnitTrait ['UAVHacker',false];
	if !(0 == ([0,1] select (_this getUnitTrait 'engineer'))|| {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor",1,true];
	_this setVariable ['ACE_isEOD',false,true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
};

private _item115 = objNull;
if (_layerRoot) then {
	_item115 = _item112 createUnit ["ls_cis_b1_standard",[2871.49,5972.46,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item115;
	_objects pushback _this;
	_objectIDs pushback 115;
	_this setPosWorld [2871.49,5972.51,4.41602];
	_this setVectorDirAndUp [[-0.991108,0.13306,0],[0,0,1]];
	_this setSkill 0.45;
	_this setRank "CORPORAL";
	_this setname "RB- 93";;
	_this setface "GreekHead_A3_08";;
	_this setspeaker "male02eng";;
	_this setpitch 1.00515;;
	_this setUnitTrait ['Medic',false];
	_this setUnitTrait ['Engineer',false];
	_this setUnitTrait ['ExplosiveSpecialist',false];
	_this setUnitTrait ['UAVHacker',false];
	if !(0 == ([0,1] select (_this getUnitTrait 'engineer'))|| {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor",1,true];
	_this setVariable ['ACE_isEOD',false,true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
};

private _item116 = objNull;
if (_layerRoot) then {
	_item116 = _item112 createUnit ["ls_cis_b1At_standard",[2878.44,5986.66,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item116;
	_objects pushback _this;
	_objectIDs pushback 116;
	_this setPosWorld [2878.44,5986.71,4.65462];
	_this setVectorDirAndUp [[-0.991108,0.13306,0],[0,0,1]];
	_this setSkill 0.4;
	_this setname "BD- SQQS";;
	_this setface "SWLB_JH_Head_Khaos";;
	_this setspeaker "male09eng";;
	_this setpitch 1.03994;;
	_this setUnitTrait ['Medic',false];
	_this setUnitTrait ['Engineer',false];
	_this setUnitTrait ['ExplosiveSpecialist',false];
	_this setUnitTrait ['UAVHacker',false];
	if !(0 == ([0,1] select (_this getUnitTrait 'engineer'))|| {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor",1,true];
	_this setVariable ['ACE_isEOD',false,true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
};

private _item117 = objNull;
if (_layerRoot) then {
	_item117 = _item112 createUnit ["ls_cis_b1Marksman_standard",[2875.78,5966.84,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item117;
	_objects pushback _this;
	_objectIDs pushback 117;
	_this setPosWorld [2875.78,5966.89,4.3645];
	_this setVectorDirAndUp [[-0.991108,0.13306,0],[0,0,1]];
	_this setRank "SERGEANT";
	_this setname "B1- 840";;
	_this setface "SWLB_JH_Head_Whiplash";;
	_this setspeaker "male04eng";;
	_this setpitch 0.967811;;
	_this setUnitTrait ['Medic',false];
	_this setUnitTrait ['Engineer',false];
	_this setUnitTrait ['ExplosiveSpecialist',false];
	_this setUnitTrait ['UAVHacker',false];
	if !(0 == ([0,1] select (_this getUnitTrait 'engineer'))|| {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor",1,true];
	_this setVariable ['ACE_isEOD',false,true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
};

private _item118 = objNull;
if (_layerRoot) then {
	_item118 = _item112 createUnit ["ls_cis_b1Heavy_standard",[2884.06,5990.95,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item118;
	_objects pushback _this;
	_objectIDs pushback 118;
	_this setPosWorld [2884.06,5991,4.74071];
	_this setVectorDirAndUp [[-0.991108,0.13306,0],[0,0,1]];
	_this setSkill 0.45;
	_this setRank "CORPORAL";
	_this setname "BH- 8093";;
	_this setface "WhiteHead_04";;
	_this setspeaker "male06eng";;
	_this setpitch 0.993001;;
	_this setUnitTrait ['Medic',false];
	_this setUnitTrait ['Engineer',false];
	_this setUnitTrait ['ExplosiveSpecialist',false];
	_this setUnitTrait ['UAVHacker',false];
	if !(0 == ([0,1] select (_this getUnitTrait 'engineer'))|| {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor",1,true];
	_this setVariable ['ACE_isEOD',false,true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
};

private _item119 = objNull;
if (_layerRoot) then {
	_item119 = _item112 createUnit ["ls_cis_b1_standard",[2880.07,5961.22,2.86102e-006],[],0,"CAN_COLLIDE"];
	_this = _item119;
	_objects pushback _this;
	_objectIDs pushback 119;
	_this setPosWorld [2880.07,5961.27,4.35785];
	_this setVectorDirAndUp [[-0.991108,0.13306,0],[0,0,1]];
	_this setSkill 0.4;
	_this setname "BD- ZJQ3";;
	_this setface "Anakin_face";;
	_this setspeaker "male10eng";;
	_this setpitch 0.998183;;
	_this setUnitTrait ['Medic',false];
	_this setUnitTrait ['Engineer',false];
	_this setUnitTrait ['ExplosiveSpecialist',false];
	_this setUnitTrait ['UAVHacker',false];
	if !(0 == ([0,1] select (_this getUnitTrait 'engineer'))|| {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor",1,true];
	_this setVariable ['ACE_isEOD',false,true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
};

private _item120 = objNull;
if (_layerRoot) then {
	_item120 = _item112 createUnit ["ls_cis_b1_standard",[2889.68,5995.24,2.38419e-006],[],0,"CAN_COLLIDE"];
	_this = _item120;
	_objects pushback _this;
	_objectIDs pushback 120;
	_this setPosWorld [2889.68,5995.29,4.83624];
	_this setVectorDirAndUp [[-0.991108,0.13306,0],[0,0,1]];
	_this setSkill 0.4;
	_this setname "RB- 6944";;
	_this setface "WhiteHead_11";;
	_this setspeaker "male07eng";;
	_this setpitch 1.02163;;
	_this setUnitTrait ['Medic',false];
	_this setUnitTrait ['Engineer',false];
	_this setUnitTrait ['ExplosiveSpecialist',false];
	_this setUnitTrait ['UAVHacker',false];
	if !(0 == ([0,1] select (_this getUnitTrait 'engineer'))|| {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor",1,true];
	_this setVariable ['ACE_isEOD',false,true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
};

private _item307 = objNull;
if (_layerRoot) then {
	_item307 = _item306 createUnit ["ls_cis_b1_standard",[2939.04,5974.53,-1.43051e-006],[],0,"CAN_COLLIDE"];
	_item306 selectLeader _item307;
	_this = _item307;
	_objects pushback _this;
	_objectIDs pushback 307;
	_this setPosWorld [2939.04,5974.58,5.38477];
	_this setVectorDirAndUp [[-0.136525,-0.990637,0],[0,0,1]];
	_this setname "B1- 5425";;
	_this setface "Barklem";;
	_this setspeaker "Male05ENG";;
	_this setpitch 1.01;;
	_this setUnitTrait ['Medic',false];
	_this setUnitTrait ['Engineer',false];
	_this setUnitTrait ['ExplosiveSpecialist',false];
	_this setUnitTrait ['UAVHacker',false];
	if !(0 == ([0,1] select (_this getUnitTrait 'engineer'))|| {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor",1,true];
	_this setVariable ['ACE_isEOD',false,true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
};

private _item309 = objNull;
if (_layerRoot) then {
	_item309 = _item308 createUnit ["ls_cis_b1_standard",[2707.52,5980.74,8.58307e-006],[],0,"CAN_COLLIDE"];
	_item308 selectLeader _item309;
	_this = _item309;
	_objects pushback _this;
	_objectIDs pushback 309;
	_this setPosWorld [2707.52,5980.79,7.40167];
	_this setVectorDirAndUp [[-0.992211,0.124567,0],[0,0,1]];
	_this setname "BH- 6803";;
	_this setface "Clone_face_rex";;
	_this setspeaker "Male10ENG";;
	_this setpitch 1.03;;
	_this setUnitTrait ['Medic',false];
	_this setUnitTrait ['Engineer',false];
	_this setUnitTrait ['ExplosiveSpecialist',false];
	_this setUnitTrait ['UAVHacker',false];
	if !(0 == ([0,1] select (_this getUnitTrait 'engineer'))|| {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor",1,true];
	_this setVariable ['ACE_isEOD',false,true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
};

private _item311 = objNull;
if (_layerRoot) then {
	_item311 = _item310 createUnit ["ls_cis_b1_standard",[2707.6,5983.91,9.05991e-006],[],0,"CAN_COLLIDE"];
	_item310 selectLeader _item311;
	_this = _item311;
	_objects pushback _this;
	_objectIDs pushback 311;
	_this setPosWorld [2707.6,5983.96,7.27088];
	_this setVectorDirAndUp [[-0.998776,0.0494688,0],[0,0,1]];
	_this setname "B1- 8317";;
	_this setface "WhiteHead_07";;
	_this setspeaker "male09eng";;
	_this setpitch 1.00464;;
	_this setUnitTrait ['Medic',false];
	_this setUnitTrait ['Engineer',false];
	_this setUnitTrait ['ExplosiveSpecialist',false];
	_this setUnitTrait ['UAVHacker',false];
	if !(0 == ([0,1] select (_this getUnitTrait 'engineer'))|| {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor",1,true];
	_this setVariable ['ACE_isEOD',false,true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
};

private _item313 = objNull;
if (_layerRoot) then {
	_item313 = _item312 createUnit ["ls_cis_oomSecurity_standard",[2709.06,5977.36,3.24249e-005],[],0,"CAN_COLLIDE"];
	_item312 selectLeader _item313;
	_this = _item313;
	_objects pushback _this;
	_objectIDs pushback 313;
	_this setPosWorld [2709.06,5977.41,7.51346];
	_this setVectorDirAndUp [[-0.999981,-0.00616402,0],[0,0,1]];
	_this setname "B1- 1566";;
	_this setface "SWLB_JH_Head_Dutch";;
	_this setspeaker "male06eng";;
	_this setpitch 1.0002;;
	_this setUnitTrait ['Medic',false];
	_this setUnitTrait ['Engineer',false];
	_this setUnitTrait ['ExplosiveSpecialist',false];
	_this setUnitTrait ['UAVHacker',false];
	if !(0 == ([0,1] select (_this getUnitTrait 'engineer'))|| {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor",1,true];
	_this setVariable ['ACE_isEOD',false,true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
};

private _item315 = objNull;
if (_layerRoot) then {
	_item315 = _item314 createUnit ["ls_cis_oomSecurity_standard",[2930.8,5976.39,-2.38419e-006],[],0,"CAN_COLLIDE"];
	_item314 selectLeader _item315;
	_this = _item315;
	_objects pushback _this;
	_objectIDs pushback 315;
	_this setPosWorld [2930.8,5976.44,5.1915];
	_this setVectorDirAndUp [[-0.181227,-0.983441,0],[0,0,1]];
	_this setname "OR- 1637";;
	_this setface "WhiteHead_07";;
	_this setspeaker "male12eng";;
	_this setpitch 1.00036;;
	_this setUnitTrait ['Medic',false];
	_this setUnitTrait ['Engineer',false];
	_this setUnitTrait ['ExplosiveSpecialist',false];
	_this setUnitTrait ['UAVHacker',false];
	if !(0 == ([0,1] select (_this getUnitTrait 'engineer'))|| {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor",1,true];
	_this setVariable ['ACE_isEOD',false,true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
};

private _item317 = objNull;
if (_layerRoot) then {
	_item317 = _item316 createUnit ["ls_cis_oomSecurity_standard",[3003.95,5960.35,3.33786e-006],[],0,"CAN_COLLIDE"];
	_item316 selectLeader _item317;
	_this = _item317;
	_objects pushback _this;
	_objectIDs pushback 317;
	_this setPosWorld [3003.95,5960.4,6.80865];
	_this setVectorDirAndUp [[0.946453,-0.322842,0],[0,0,1]];
	_this setname "B1- 1817";;
	_this setface "WhiteHead_21";;
	_this setspeaker "male04eng";;
	_this setpitch 1.04476;;
	_this setUnitTrait ['Medic',false];
	_this setUnitTrait ['Engineer',false];
	_this setUnitTrait ['ExplosiveSpecialist',false];
	_this setUnitTrait ['UAVHacker',false];
	if !(0 == ([0,1] select (_this getUnitTrait 'engineer'))|| {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor",1,true];
	_this setVariable ['ACE_isEOD',false,true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
};

private _item319 = objNull;
if (_layerRoot) then {
	_item319 = _item318 createUnit ["ls_cis_oomSecurity_standard",[2700.11,5980.77,-3.95775e-005],[],0,"CAN_COLLIDE"];
	_item318 selectLeader _item319;
	_this = _item319;
	_objects pushback _this;
	_objectIDs pushback 319;
	_this setPosWorld [2700.11,5980.82,7.55042];
	_this setVectorDirAndUp [[-0.991385,0.130978,0],[0,0,1]];
	_this setname "BH- 339";;
	_this setface "Barklem";;
	_this setspeaker "male01eng";;
	_this setpitch 0.997884;;
	_this setUnitTrait ['Medic',false];
	_this setUnitTrait ['Engineer',false];
	_this setUnitTrait ['ExplosiveSpecialist',false];
	_this setUnitTrait ['UAVHacker',false];
	if !(0 == ([0,1] select (_this getUnitTrait 'engineer'))|| {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor",1,true];
	_this setVariable ['ACE_isEOD',false,true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
};

private _item321 = objNull;
if (_layerRoot) then {
	_item321 = _item320 createUnit ["ls_cis_b1_standard",[3007.54,5955.58,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_item320 selectLeader _item321;
	_this = _item321;
	_objects pushback _this;
	_objectIDs pushback 321;
	_this setPosWorld [3007.54,5955.63,6.90215];
	_this setVectorDirAndUp [[0.999911,-0.0133381,0],[0,0,1]];
	_this setname "B1- 0792";;
	_this setface "SWLB_JH_Head_Dutch";;
	_this setspeaker "male10eng";;
	_this setpitch 0.95553;;
	_this setUnitTrait ['Medic',false];
	_this setUnitTrait ['Engineer',false];
	_this setUnitTrait ['ExplosiveSpecialist',false];
	_this setUnitTrait ['UAVHacker',false];
	if !(0 == ([0,1] select (_this getUnitTrait 'engineer'))|| {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor",1,true];
	_this setVariable ['ACE_isEOD',false,true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
};

private _item323 = objNull;
if (_layerRoot) then {
	_item323 = _item322 createUnit ["ls_cis_b1_standard",[3009.06,5961.17,4.76837e-007],[],0,"CAN_COLLIDE"];
	_item322 selectLeader _item323;
	_this = _item323;
	_objects pushback _this;
	_objectIDs pushback 323;
	_this setPosWorld [3009.06,5961.21,6.92793];
	_this setVectorDirAndUp [[0.999999,-0.00148336,0],[0,0,1]];
	_this setname "B1- SZNY";;
	_this setface "SWLB_JH_Head_H";;
	_this setspeaker "male08eng";;
	_this setpitch 1.0311;;
	_this setUnitTrait ['Medic',false];
	_this setUnitTrait ['Engineer',false];
	_this setUnitTrait ['ExplosiveSpecialist',false];
	_this setUnitTrait ['UAVHacker',false];
	if !(0 == ([0,1] select (_this getUnitTrait 'engineer'))|| {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor",1,true];
	_this setVariable ['ACE_isEOD',false,true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
};

private _item325 = objNull;
if (_layerRoot) then {
	_item325 = _item324 createUnit ["ls_cis_b1_standard",[2938.6,5964.72,-1.90735e-006],[],0,"CAN_COLLIDE"];
	_item324 selectLeader _item325;
	_this = _item325;
	_objects pushback _this;
	_objectIDs pushback 325;
	_this setPosWorld [2938.6,5964.77,5.43281];
	_this setVectorDirAndUp [[0.0420163,0.999117,0],[0,0,1]];
	_this setname "B1- 44054";;
	_this setface "SWLB_JH_Head_Purge_Lance";;
	_this setspeaker "male01eng";;
	_this setpitch 0.982081;;
	_this setUnitTrait ['Medic',false];
	_this setUnitTrait ['Engineer',false];
	_this setUnitTrait ['ExplosiveSpecialist',false];
	_this setUnitTrait ['UAVHacker',false];
	if !(0 == ([0,1] select (_this getUnitTrait 'engineer'))|| {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor",1,true];
	_this setVariable ['ACE_isEOD',false,true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
};

private _item327 = objNull;
if (_layerRoot) then {
	_item327 = _item326 createUnit ["ls_cis_oomOfficer_standard",[2888.59,5900.49,4.76837e-007],[],0,"CAN_COLLIDE"];
	_item326 selectLeader _item327;
	_this = _item327;
	_objects pushback _this;
	_objectIDs pushback 327;
	_this setPosWorld [2888.59,5900.54,4.78622];
	_this setVectorDirAndUp [[-0.933298,0.359104,0],[0,0,1]];
	_this setname "B1- GAZN";;
	_this setface "Clone_face_zero";;
	_this setspeaker "male07eng";;
	_this setpitch 1.01826;;
	_this setUnitTrait ['Medic',false];
	_this setUnitTrait ['Engineer',false];
	_this setUnitTrait ['ExplosiveSpecialist',false];
	_this setUnitTrait ['UAVHacker',false];
	if !(0 == ([0,1] select (_this getUnitTrait 'engineer'))|| {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor",1,true];
	_this setVariable ['ACE_isEOD',false,true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
};


///////////////////////////////////////////////////////////////////////////////////////////
// Triggers
private _triggers = [];
private _triggerIDs = [];


///////////////////////////////////////////////////////////////////////////////////////////
// Group attributes (applied only once group units exist)
_this = _item92;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	[_this, "Альфа 1-1"] call CBA_fnc_setCallsign;
				if (!is3DEN && {!(["","ColorEAST","Альфа 1-1",true] isEqualTo ['','','',true])}) then			{				[_this,["","ColorEAST","Альфа 1-1",true]] spawn				{					params ['_group','["","ColorEAST","Альфа 1-1",true]'];					["","ColorEAST","Альфа 1-1",true] params ['_type','_color','_text','_showGroupSize'];					private _leader = leader _group;					private _marker = createMarker					[						format ['ENH_GroupMarker_["","ColorEAST","Альфа 1-1",true]',str floor random 10e5],						_leader					];					_marker setMarkerType _type;					_marker setMarkerColor _color;					_marker setMarkerText _text;					while {true} do					{						sleep 1;						if (units _group isEqualTo []) exitWith {deleteMarker _marker};						if (_group getVariable ['ENH_GroupMarker_Update',true]) then						{							_marker setMarkerPos _leader;							if (_showGroupSize) then							{								_marker setMarkerText format ['["","ColorEAST","Альфа 1-1",true] ()',groupId _group, count units _group];							};						};					};				};			};;
};
_this = _item97;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	[_this, "Альфа 1-2"] call CBA_fnc_setCallsign;
				if (!is3DEN && {!(["","ColorEAST","Альфа 1-2",true] isEqualTo ['','','',true])}) then			{				[_this,["","ColorEAST","Альфа 1-2",true]] spawn				{					params ['_group','["","ColorEAST","Альфа 1-2",true]'];					["","ColorEAST","Альфа 1-2",true] params ['_type','_color','_text','_showGroupSize'];					private _leader = leader _group;					private _marker = createMarker					[						format ['ENH_GroupMarker_["","ColorEAST","Альфа 1-2",true]',str floor random 10e5],						_leader					];					_marker setMarkerType _type;					_marker setMarkerColor _color;					_marker setMarkerText _text;					while {true} do					{						sleep 1;						if (units _group isEqualTo []) exitWith {deleteMarker _marker};						if (_group getVariable ['ENH_GroupMarker_Update',true]) then						{							_marker setMarkerPos _leader;							if (_showGroupSize) then							{								_marker setMarkerText format ['["","ColorEAST","Альфа 1-2",true] ()',groupId _group, count units _group];							};						};					};				};			};;
};
_this = _item102;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	[_this, "Альфа 1-3"] call CBA_fnc_setCallsign;
				if (!is3DEN && {!(["","ColorEAST","Альфа 1-3",true] isEqualTo ['','','',true])}) then			{				[_this,["","ColorEAST","Альфа 1-3",true]] spawn				{					params ['_group','["","ColorEAST","Альфа 1-3",true]'];					["","ColorEAST","Альфа 1-3",true] params ['_type','_color','_text','_showGroupSize'];					private _leader = leader _group;					private _marker = createMarker					[						format ['ENH_GroupMarker_["","ColorEAST","Альфа 1-3",true]',str floor random 10e5],						_leader					];					_marker setMarkerType _type;					_marker setMarkerColor _color;					_marker setMarkerText _text;					while {true} do					{						sleep 1;						if (units _group isEqualTo []) exitWith {deleteMarker _marker};						if (_group getVariable ['ENH_GroupMarker_Update',true]) then						{							_marker setMarkerPos _leader;							if (_showGroupSize) then							{								_marker setMarkerText format ['["","ColorEAST","Альфа 1-3",true] ()',groupId _group, count units _group];							};						};					};				};			};;
};
_this = _item110;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	[_this, "Альфа 1-4"] call CBA_fnc_setCallsign;
				if (!is3DEN && {!(["","ColorEAST","Альфа 1-4",true] isEqualTo ['','','',true])}) then			{				[_this,["","ColorEAST","Альфа 1-4",true]] spawn				{					params ['_group','["","ColorEAST","Альфа 1-4",true]'];					["","ColorEAST","Альфа 1-4",true] params ['_type','_color','_text','_showGroupSize'];					private _leader = leader _group;					private _marker = createMarker					[						format ['ENH_GroupMarker_["","ColorEAST","Альфа 1-4",true]',str floor random 10e5],						_leader					];					_marker setMarkerType _type;					_marker setMarkerColor _color;					_marker setMarkerText _text;					while {true} do					{						sleep 1;						if (units _group isEqualTo []) exitWith {deleteMarker _marker};						if (_group getVariable ['ENH_GroupMarker_Update',true]) then						{							_marker setMarkerPos _leader;							if (_showGroupSize) then							{								_marker setMarkerText format ['["","ColorEAST","Альфа 1-4",true] ()',groupId _group, count units _group];							};						};					};				};			};;
};
_this = _item111;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	[_this, "Альфа 1-5"] call CBA_fnc_setCallsign;
				if (!is3DEN && {!(["","ColorEAST","Альфа 1-5",true] isEqualTo ['','','',true])}) then			{				[_this,["","ColorEAST","Альфа 1-5",true]] spawn				{					params ['_group','["","ColorEAST","Альфа 1-5",true]'];					["","ColorEAST","Альфа 1-5",true] params ['_type','_color','_text','_showGroupSize'];					private _leader = leader _group;					private _marker = createMarker					[						format ['ENH_GroupMarker_["","ColorEAST","Альфа 1-5",true]',str floor random 10e5],						_leader					];					_marker setMarkerType _type;					_marker setMarkerColor _color;					_marker setMarkerText _text;					while {true} do					{						sleep 1;						if (units _group isEqualTo []) exitWith {deleteMarker _marker};						if (_group getVariable ['ENH_GroupMarker_Update',true]) then						{							_marker setMarkerPos _leader;							if (_showGroupSize) then							{								_marker setMarkerText format ['["","ColorEAST","Альфа 1-5",true] ()',groupId _group, count units _group];							};						};					};				};			};;
};
_this = _item112;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	[_this, "Альфа 1-6"] call CBA_fnc_setCallsign;
				if (!is3DEN && {!(["","ColorEAST","Альфа 1-6",true] isEqualTo ['','','',true])}) then			{				[_this,["","ColorEAST","Альфа 1-6",true]] spawn				{					params ['_group','["","ColorEAST","Альфа 1-6",true]'];					["","ColorEAST","Альфа 1-6",true] params ['_type','_color','_text','_showGroupSize'];					private _leader = leader _group;					private _marker = createMarker					[						format ['ENH_GroupMarker_["","ColorEAST","Альфа 1-6",true]',str floor random 10e5],						_leader					];					_marker setMarkerType _type;					_marker setMarkerColor _color;					_marker setMarkerText _text;					while {true} do					{						sleep 1;						if (units _group isEqualTo []) exitWith {deleteMarker _marker};						if (_group getVariable ['ENH_GroupMarker_Update',true]) then						{							_marker setMarkerPos _leader;							if (_showGroupSize) then							{								_marker setMarkerText format ['["","ColorEAST","Альфа 1-6",true] ()',groupId _group, count units _group];							};						};					};				};			};;
};
_this = _item306;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	[_this, "Альфа 2-1"] call CBA_fnc_setCallsign;
				if (!is3DEN && {!(["","ColorEAST","Альфа 2-1",true] isEqualTo ['','','',true])}) then			{				[_this,["","ColorEAST","Альфа 2-1",true]] spawn				{					params ['_group','["","ColorEAST","Альфа 2-1",true]'];					["","ColorEAST","Альфа 2-1",true] params ['_type','_color','_text','_showGroupSize'];					private _leader = leader _group;					private _marker = createMarker					[						format ['ENH_GroupMarker_["","ColorEAST","Альфа 2-1",true]',str floor random 10e5],						_leader					];					_marker setMarkerType _type;					_marker setMarkerColor _color;					_marker setMarkerText _text;					while {true} do					{						sleep 1;						if (units _group isEqualTo []) exitWith {deleteMarker _marker};						if (_group getVariable ['ENH_GroupMarker_Update',true]) then						{							_marker setMarkerPos _leader;							if (_showGroupSize) then							{								_marker setMarkerText format ['["","ColorEAST","Альфа 2-1",true] ()',groupId _group, count units _group];							};						};					};				};			};;
};
_this = _item308;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	[_this, "Альфа 2-2"] call CBA_fnc_setCallsign;
				if (!is3DEN && {!(["","ColorEAST","Альфа 2-2",true] isEqualTo ['','','',true])}) then			{				[_this,["","ColorEAST","Альфа 2-2",true]] spawn				{					params ['_group','["","ColorEAST","Альфа 2-2",true]'];					["","ColorEAST","Альфа 2-2",true] params ['_type','_color','_text','_showGroupSize'];					private _leader = leader _group;					private _marker = createMarker					[						format ['ENH_GroupMarker_["","ColorEAST","Альфа 2-2",true]',str floor random 10e5],						_leader					];					_marker setMarkerType _type;					_marker setMarkerColor _color;					_marker setMarkerText _text;					while {true} do					{						sleep 1;						if (units _group isEqualTo []) exitWith {deleteMarker _marker};						if (_group getVariable ['ENH_GroupMarker_Update',true]) then						{							_marker setMarkerPos _leader;							if (_showGroupSize) then							{								_marker setMarkerText format ['["","ColorEAST","Альфа 2-2",true] ()',groupId _group, count units _group];							};						};					};				};			};;
};
_this = _item310;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	[_this, "Альфа 2-3"] call CBA_fnc_setCallsign;
				if (!is3DEN && {!(["","ColorEAST","Альфа 2-3",true] isEqualTo ['','','',true])}) then			{				[_this,["","ColorEAST","Альфа 2-3",true]] spawn				{					params ['_group','["","ColorEAST","Альфа 2-3",true]'];					["","ColorEAST","Альфа 2-3",true] params ['_type','_color','_text','_showGroupSize'];					private _leader = leader _group;					private _marker = createMarker					[						format ['ENH_GroupMarker_["","ColorEAST","Альфа 2-3",true]',str floor random 10e5],						_leader					];					_marker setMarkerType _type;					_marker setMarkerColor _color;					_marker setMarkerText _text;					while {true} do					{						sleep 1;						if (units _group isEqualTo []) exitWith {deleteMarker _marker};						if (_group getVariable ['ENH_GroupMarker_Update',true]) then						{							_marker setMarkerPos _leader;							if (_showGroupSize) then							{								_marker setMarkerText format ['["","ColorEAST","Альфа 2-3",true] ()',groupId _group, count units _group];							};						};					};				};			};;
};
_this = _item312;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	[_this, "Альфа 2-4"] call CBA_fnc_setCallsign;
				if (!is3DEN && {!(["","ColorEAST","Альфа 2-4",true] isEqualTo ['','','',true])}) then			{				[_this,["","ColorEAST","Альфа 2-4",true]] spawn				{					params ['_group','["","ColorEAST","Альфа 2-4",true]'];					["","ColorEAST","Альфа 2-4",true] params ['_type','_color','_text','_showGroupSize'];					private _leader = leader _group;					private _marker = createMarker					[						format ['ENH_GroupMarker_["","ColorEAST","Альфа 2-4",true]',str floor random 10e5],						_leader					];					_marker setMarkerType _type;					_marker setMarkerColor _color;					_marker setMarkerText _text;					while {true} do					{						sleep 1;						if (units _group isEqualTo []) exitWith {deleteMarker _marker};						if (_group getVariable ['ENH_GroupMarker_Update',true]) then						{							_marker setMarkerPos _leader;							if (_showGroupSize) then							{								_marker setMarkerText format ['["","ColorEAST","Альфа 2-4",true] ()',groupId _group, count units _group];							};						};					};				};			};;
};
_this = _item314;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	[_this, "Альфа 2-5"] call CBA_fnc_setCallsign;
				if (!is3DEN && {!(["","ColorEAST","Альфа 2-5",true] isEqualTo ['','','',true])}) then			{				[_this,["","ColorEAST","Альфа 2-5",true]] spawn				{					params ['_group','["","ColorEAST","Альфа 2-5",true]'];					["","ColorEAST","Альфа 2-5",true] params ['_type','_color','_text','_showGroupSize'];					private _leader = leader _group;					private _marker = createMarker					[						format ['ENH_GroupMarker_["","ColorEAST","Альфа 2-5",true]',str floor random 10e5],						_leader					];					_marker setMarkerType _type;					_marker setMarkerColor _color;					_marker setMarkerText _text;					while {true} do					{						sleep 1;						if (units _group isEqualTo []) exitWith {deleteMarker _marker};						if (_group getVariable ['ENH_GroupMarker_Update',true]) then						{							_marker setMarkerPos _leader;							if (_showGroupSize) then							{								_marker setMarkerText format ['["","ColorEAST","Альфа 2-5",true] ()',groupId _group, count units _group];							};						};					};				};			};;
};
_this = _item316;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	[_this, "Альфа 2-6"] call CBA_fnc_setCallsign;
				if (!is3DEN && {!(["","ColorEAST","Альфа 2-6",true] isEqualTo ['','','',true])}) then			{				[_this,["","ColorEAST","Альфа 2-6",true]] spawn				{					params ['_group','["","ColorEAST","Альфа 2-6",true]'];					["","ColorEAST","Альфа 2-6",true] params ['_type','_color','_text','_showGroupSize'];					private _leader = leader _group;					private _marker = createMarker					[						format ['ENH_GroupMarker_["","ColorEAST","Альфа 2-6",true]',str floor random 10e5],						_leader					];					_marker setMarkerType _type;					_marker setMarkerColor _color;					_marker setMarkerText _text;					while {true} do					{						sleep 1;						if (units _group isEqualTo []) exitWith {deleteMarker _marker};						if (_group getVariable ['ENH_GroupMarker_Update',true]) then						{							_marker setMarkerPos _leader;							if (_showGroupSize) then							{								_marker setMarkerText format ['["","ColorEAST","Альфа 2-6",true] ()',groupId _group, count units _group];							};						};					};				};			};;
};
_this = _item318;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	[_this, "Альфа 3-1"] call CBA_fnc_setCallsign;
				if (!is3DEN && {!(["","ColorEAST","Альфа 3-1",true] isEqualTo ['','','',true])}) then			{				[_this,["","ColorEAST","Альфа 3-1",true]] spawn				{					params ['_group','["","ColorEAST","Альфа 3-1",true]'];					["","ColorEAST","Альфа 3-1",true] params ['_type','_color','_text','_showGroupSize'];					private _leader = leader _group;					private _marker = createMarker					[						format ['ENH_GroupMarker_["","ColorEAST","Альфа 3-1",true]',str floor random 10e5],						_leader					];					_marker setMarkerType _type;					_marker setMarkerColor _color;					_marker setMarkerText _text;					while {true} do					{						sleep 1;						if (units _group isEqualTo []) exitWith {deleteMarker _marker};						if (_group getVariable ['ENH_GroupMarker_Update',true]) then						{							_marker setMarkerPos _leader;							if (_showGroupSize) then							{								_marker setMarkerText format ['["","ColorEAST","Альфа 3-1",true] ()',groupId _group, count units _group];							};						};					};				};			};;
};
_this = _item320;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	[_this, "Альфа 3-2"] call CBA_fnc_setCallsign;
				if (!is3DEN && {!(["","ColorEAST","Альфа 3-2",true] isEqualTo ['','','',true])}) then			{				[_this,["","ColorEAST","Альфа 3-2",true]] spawn				{					params ['_group','["","ColorEAST","Альфа 3-2",true]'];					["","ColorEAST","Альфа 3-2",true] params ['_type','_color','_text','_showGroupSize'];					private _leader = leader _group;					private _marker = createMarker					[						format ['ENH_GroupMarker_["","ColorEAST","Альфа 3-2",true]',str floor random 10e5],						_leader					];					_marker setMarkerType _type;					_marker setMarkerColor _color;					_marker setMarkerText _text;					while {true} do					{						sleep 1;						if (units _group isEqualTo []) exitWith {deleteMarker _marker};						if (_group getVariable ['ENH_GroupMarker_Update',true]) then						{							_marker setMarkerPos _leader;							if (_showGroupSize) then							{								_marker setMarkerText format ['["","ColorEAST","Альфа 3-2",true] ()',groupId _group, count units _group];							};						};					};				};			};;
};
_this = _item322;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	[_this, "Альфа 3-3"] call CBA_fnc_setCallsign;
				if (!is3DEN && {!(["","ColorEAST","Альфа 3-3",true] isEqualTo ['','','',true])}) then			{				[_this,["","ColorEAST","Альфа 3-3",true]] spawn				{					params ['_group','["","ColorEAST","Альфа 3-3",true]'];					["","ColorEAST","Альфа 3-3",true] params ['_type','_color','_text','_showGroupSize'];					private _leader = leader _group;					private _marker = createMarker					[						format ['ENH_GroupMarker_["","ColorEAST","Альфа 3-3",true]',str floor random 10e5],						_leader					];					_marker setMarkerType _type;					_marker setMarkerColor _color;					_marker setMarkerText _text;					while {true} do					{						sleep 1;						if (units _group isEqualTo []) exitWith {deleteMarker _marker};						if (_group getVariable ['ENH_GroupMarker_Update',true]) then						{							_marker setMarkerPos _leader;							if (_showGroupSize) then							{								_marker setMarkerText format ['["","ColorEAST","Альфа 3-3",true] ()',groupId _group, count units _group];							};						};					};				};			};;
};
_this = _item324;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	[_this, "Альфа 3-4"] call CBA_fnc_setCallsign;
				if (!is3DEN && {!(["","ColorEAST","Альфа 3-4",true] isEqualTo ['','','',true])}) then			{				[_this,["","ColorEAST","Альфа 3-4",true]] spawn				{					params ['_group','["","ColorEAST","Альфа 3-4",true]'];					["","ColorEAST","Альфа 3-4",true] params ['_type','_color','_text','_showGroupSize'];					private _leader = leader _group;					private _marker = createMarker					[						format ['ENH_GroupMarker_["","ColorEAST","Альфа 3-4",true]',str floor random 10e5],						_leader					];					_marker setMarkerType _type;					_marker setMarkerColor _color;					_marker setMarkerText _text;					while {true} do					{						sleep 1;						if (units _group isEqualTo []) exitWith {deleteMarker _marker};						if (_group getVariable ['ENH_GroupMarker_Update',true]) then						{							_marker setMarkerPos _leader;							if (_showGroupSize) then							{								_marker setMarkerText format ['["","ColorEAST","Альфа 3-4",true] ()',groupId _group, count units _group];							};						};					};				};			};;
};
_this = _item326;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	[_this, "Альфа 3-5"] call CBA_fnc_setCallsign;
				if (!is3DEN && {!(["","ColorEAST","Альфа 3-5",true] isEqualTo ['','','',true])}) then			{				[_this,["","ColorEAST","Альфа 3-5",true]] spawn				{					params ['_group','["","ColorEAST","Альфа 3-5",true]'];					["","ColorEAST","Альфа 3-5",true] params ['_type','_color','_text','_showGroupSize'];					private _leader = leader _group;					private _marker = createMarker					[						format ['ENH_GroupMarker_["","ColorEAST","Альфа 3-5",true]',str floor random 10e5],						_leader					];					_marker setMarkerType _type;					_marker setMarkerColor _color;					_marker setMarkerText _text;					while {true} do					{						sleep 1;						if (units _group isEqualTo []) exitWith {deleteMarker _marker};						if (_group getVariable ['ENH_GroupMarker_Update',true]) then						{							_marker setMarkerPos _leader;							if (_showGroupSize) then							{								_marker setMarkerText format ['["","ColorEAST","Альфа 3-5",true] ()',groupId _group, count units _group];							};						};					};				};			};;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Waypoints
private _waypoints = [];
private _waypointIDs = [];


///////////////////////////////////////////////////////////////////////////////////////////
// Logics
private _logics = [];
private _logicIDs = [];


///////////////////////////////////////////////////////////////////////////////////////////
// Layers


///////////////////////////////////////////////////////////////////////////////////////////
// Crews
if (!isNull _item94 && !isNull _item93) then {_item94 moveInDriver _item93;};
if (!isNull _item95 && !isNull _item93) then {_item95 moveInTurret [_item93,[0]];};
if (!isNull _item96 && !isNull _item93) then {_item96 moveInTurret [_item93,[0,0]];};
if (!isNull _item99 && !isNull _item98) then {_item99 moveInDriver _item98;};
if (!isNull _item100 && !isNull _item98) then {_item100 moveInTurret [_item98,[0]];};
if (!isNull _item101 && !isNull _item98) then {_item101 moveInTurret [_item98,[0,0]];};
if (!isNull _item104 && !isNull _item103) then {_item104 moveInDriver _item103;};
if (!isNull _item105 && !isNull _item103) then {_item105 moveInTurret [_item103,[0]];};
if (!isNull _item106 && !isNull _item103) then {_item106 moveInTurret [_item103,[0,0]];};


///////////////////////////////////////////////////////////////////////////////////////////
// Vehicle cargo


///////////////////////////////////////////////////////////////////////////////////////////
// Connections


///////////////////////////////////////////////////////////////////////////////////////////
// Inits (executed only once all entities exist; isNil used to ensure non-scheduled environment)
isNil {
};


///////////////////////////////////////////////////////////////////////////////////////////
// Module activations (only once everything is spawned and connected)


///////////////////////////////////////////////////////////////////////////////////////////
[[_objects,_groups,_triggers,_waypoints,_logics,_markers],[_objectIDs,_groupIDs,_triggerIDs,_waypointIDs,_logicIDs,_markerIDs]]
