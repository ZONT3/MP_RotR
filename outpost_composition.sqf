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

private _item175 = grpNull;
if (_layerRoot) then {
	_item175 = createGroup east;
	_this = _item175;
	_groups pushback _this;
	_groupIDs pushback 175;
};

private _item180 = grpNull;
if (_layerRoot) then {
	_item180 = createGroup east;
	_this = _item180;
	_groups pushback _this;
	_groupIDs pushback 180;
};

private _item185 = grpNull;
if (_layerRoot) then {
	_item185 = createGroup east;
	_this = _item185;
	_groups pushback _this;
	_groupIDs pushback 185;
};

private _item190 = grpNull;
if (_layerRoot) then {
	_item190 = createGroup east;
	_this = _item190;
	_groups pushback _this;
	_groupIDs pushback 190;
};

private _item209 = grpNull;
if (_layerRoot) then {
	_item209 = createGroup east;
	_this = _item209;
	_groups pushback _this;
	_groupIDs pushback 209;
};

private _item212 = grpNull;
if (_layerRoot) then {
	_item212 = createGroup east;
	_this = _item212;
	_groups pushback _this;
	_groupIDs pushback 212;
};

private _item217 = grpNull;
if (_layerRoot) then {
	_item217 = createGroup east;
	_this = _item217;
	_groups pushback _this;
	_groupIDs pushback 217;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Objects
private _objects = [];
private _objectIDs = [];

private _item177 = objNull;
if (_layerRoot) then {
	_item177 = _item175 createUnit ["RD501_opfor_unit_B1_crew",[3356.16,5529.39,-3.33786e-006],[],0,"CAN_COLLIDE"];
	_this = _item177;
	_objects pushback _this;
	_objectIDs pushback 177;
	_this setPosWorld [3356.09,5528.51,4.98279];
	_this setVectorDirAndUp [[-0.00788186,0.999519,-0.0299843],[0,0.0299852,0.99955]];
	_this setname "B1 - 71423";;
	_this setface "GreekHead_A3_09";;
	_this setspeaker "male01eng";;
	_this setpitch 1.04989;;
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

private _item178 = objNull;
if (_layerRoot) then {
	_item178 = _item175 createUnit ["RD501_opfor_unit_B1_crew",[3356.16,5529.39,-3.33786e-006],[],0,"CAN_COLLIDE"];
	_this = _item178;
	_objects pushback _this;
	_objectIDs pushback 178;
	_this setPosWorld [3356.09,5528.51,4.98279];
	_this setVectorDirAndUp [[-0.00788186,0.999519,-0.0299843],[0,0.0299852,0.99955]];
	_this setname "B1 - 481988";;
	_this setface "Barklem";;
	_this setspeaker "male07eng";;
	_this setpitch 0.97707;;
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

private _item179 = objNull;
if (_layerRoot) then {
	_item179 = _item175 createUnit ["RD501_opfor_unit_B1_crew",[3356.16,5529.39,0],[],0,"CAN_COLLIDE"];
	_item175 selectLeader _item179;
	_this = _item179;
	_objects pushback _this;
	_objectIDs pushback 179;
	_this setPosWorld [3356.09,5528.51,4.98279];
	_this setVectorDirAndUp [[-0.00788901,0.999519,-0.0299793],[0,0.0299803,0.99955]];
	_this setname "B1 - 95329";;
	_this setface "WhiteHead_17";;
	_this setspeaker "Male11ENG";;
	_this setpitch 1.04;;
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

private _item207 = objNull;
if (_layerRoot) then {
	_item207 = _item175 createUnit ["ls_cis_b1_standard",[3351.64,5523.51,6.67572e-006],[],0,"CAN_COLLIDE"];
	_this = _item207;
	_objects pushback _this;
	_objectIDs pushback 207;
	_this setPosWorld [3351.64,5523.56,5.54177];
	_this setVectorDirAndUp [[0.114348,0.993441,0],[0,0,1]];
	_this setSkill 0.45;
	_this setRank "CORPORAL";
	_this setname "RB- 63";;
	_this setface "WhiteHead_08";;
	_this setspeaker "male12eng";;
	_this setpitch 0.998845;;
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

private _item208 = objNull;
if (_layerRoot) then {
	_item208 = _item175 createUnit ["ls_cis_b1Heavy_standard",[3358.45,5523.13,-3.00407e-005],[],0,"CAN_COLLIDE"];
	_this = _item208;
	_objects pushback _this;
	_objectIDs pushback 208;
	_this setPosWorld [3358.45,5523.18,5.62379];
	_this setVectorDirAndUp [[-0.202149,0.979355,0],[0,0,1]];
	_this setSkill 0.4;
	_this setname "BD- 9357";;
	_this setface "SWLB_JH_Head_Purge_Painmace";;
	_this setspeaker "male05eng";;
	_this setpitch 0.99778;;
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

private _item176 = objNull;
if (_layerRoot) then {
	_item176 = createVehicle ["RD501_AAT_Blue",[3356.17,5529.38,0.0381498],[],0,"CAN_COLLIDE"];
	_this = _item176;
	_objects pushback _this;
	_objectIDs pushback 176;
	_this setPosWorld [3356.09,5528.51,4.98279];
	_this setVectorDirAndUp [[-0.00788186,0.999519,-0.0299843],[0,0.0299852,0.99955]];
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	_this setVariable ['s',1];;
	[_this,4] call ace_cargo_fnc_setSpace;;
	[_this,0] call JLTS_fnc_jumpAddRecharger;
};

private _item182 = objNull;
if (_layerRoot) then {
	_item182 = _item180 createUnit ["RD501_opfor_unit_B1_crew",[3207.98,5373.39,1.52588e-005],[],0,"CAN_COLLIDE"];
	_this = _item182;
	_objects pushback _this;
	_objectIDs pushback 182;
	_this setPosWorld [3207.93,5372.53,8.96204];
	_this setVectorDirAndUp [[0.719887,0.692755,0.043052],[-0.0549169,-0.0049838,0.998478]];
	_this setname "B1 - 81784";;
	_this setface "SWLB_JH_Head_Dutch";;
	_this setspeaker "male04eng";;
	_this setpitch 0.979734;;
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

private _item183 = objNull;
if (_layerRoot) then {
	_item183 = _item180 createUnit ["RD501_opfor_unit_B1_crew",[3207.98,5373.39,1.52588e-005],[],0,"CAN_COLLIDE"];
	_this = _item183;
	_objects pushback _this;
	_objectIDs pushback 183;
	_this setPosWorld [3207.93,5372.53,8.96204];
	_this setVectorDirAndUp [[0.719887,0.692755,0.043052],[-0.0549169,-0.0049838,0.998478]];
	_this setname "B1 - 08064";;
	_this setface "SWLB_JH_Head_Vaelin";;
	_this setspeaker "male09eng";;
	_this setpitch 0.960843;;
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

private _item184 = objNull;
if (_layerRoot) then {
	_item184 = _item180 createUnit ["RD501_opfor_unit_B1_crew",[3207.98,5373.39,1.52588e-005],[],0,"CAN_COLLIDE"];
	_item180 selectLeader _item184;
	_this = _item184;
	_objects pushback _this;
	_objectIDs pushback 184;
	_this setPosWorld [3207.93,5372.53,8.96204];
	_this setVectorDirAndUp [[0.719887,0.692755,0.043052],[-0.0549169,-0.0049838,0.998478]];
	_this setname "B1 - 40219";;
	_this setface "SWLB_JH_Head_Purge_Bald";;
	_this setspeaker "male08eng";;
	_this setpitch 0.974693;;
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

private _item199 = objNull;
if (_layerRoot) then {
	_item199 = _item180 createUnit ["RD501_opfor_unit_B2_droid_Standard",[3201.77,5373.3,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item199;
	_objects pushback _this;
	_objectIDs pushback 199;
	_this setPosWorld [3201.77,5373.35,8.94277];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setname "Battle Droid";;
	_this setface "PersianHead_A3_02";;
	_this setspeaker "male01per";;
	_this setpitch 0.963318;;
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

private _item200 = objNull;
if (_layerRoot) then {
	_item200 = _item180 createUnit ["RD501_opfor_unit_B2_droid_Standard",[3206.74,5366.72,-5.72205e-006],[],0,"CAN_COLLIDE"];
	_this = _item200;
	_objects pushback _this;
	_objectIDs pushback 200;
	_this setPosWorld [3206.74,5366.77,9.18219];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setname "Battle Droid";;
	_this setface "PersianHead_A3_02";;
	_this setspeaker "male03per";;
	_this setpitch 1.01456;;
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

private _item181 = objNull;
if (_layerRoot) then {
	_item181 = createVehicle ["RD501_AAT_Blue",[3207.98,5373.39,0.00395203],[],0,"CAN_COLLIDE"];
	_this = _item181;
	_objects pushback _this;
	_objectIDs pushback 181;
	_this setPosWorld [3207.93,5372.53,8.96204];
	_this setVectorDirAndUp [[0.719887,0.692755,0.043052],[-0.0549169,-0.0049838,0.998478]];
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	_this setVariable ['s',1];;
	[_this,4] call ace_cargo_fnc_setSpace;;
	[_this,0] call JLTS_fnc_jumpAddRecharger;
};

private _item187 = objNull;
if (_layerRoot) then {
	_item187 = _item185 createUnit ["RD501_opfor_unit_B1_crew",[3203.37,5319.87,1.43051e-005],[],0,"CAN_COLLIDE"];
	_this = _item187;
	_objects pushback _this;
	_objectIDs pushback 187;
	_this setPosWorld [3203.31,5319,9.85261];
	_this setVectorDirAndUp [[-0.0278963,0.998524,-0.0466088],[-0.0598916,0.0448736,0.997196]];
	_this setname "B1 - 11818";;
	_this setface "WhiteHead_04";;
	_this setspeaker "male06eng";;
	_this setpitch 0.983598;;
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

private _item188 = objNull;
if (_layerRoot) then {
	_item188 = _item185 createUnit ["RD501_opfor_unit_B1_crew",[3203.37,5319.87,1.43051e-005],[],0,"CAN_COLLIDE"];
	_this = _item188;
	_objects pushback _this;
	_objectIDs pushback 188;
	_this setPosWorld [3203.31,5319,9.85261];
	_this setVectorDirAndUp [[-0.0278963,0.998524,-0.0466088],[-0.0598916,0.0448736,0.997196]];
	_this setname "B1 - 16905";;
	_this setface "WhiteHead_12";;
	_this setspeaker "male01eng";;
	_this setpitch 1.04715;;
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

private _item189 = objNull;
if (_layerRoot) then {
	_item189 = _item185 createUnit ["RD501_opfor_unit_B1_crew",[3203.37,5319.87,1.43051e-005],[],0,"CAN_COLLIDE"];
	_item185 selectLeader _item189;
	_this = _item189;
	_objects pushback _this;
	_objectIDs pushback 189;
	_this setPosWorld [3203.31,5319,9.85261];
	_this setVectorDirAndUp [[-0.0278963,0.998524,-0.0466088],[-0.0598916,0.0448736,0.997196]];
	_this setname "B1 - 89521";;
	_this setface "WhiteHead_11";;
	_this setspeaker "male04eng";;
	_this setpitch 0.965253;;
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

private _item186 = objNull;
if (_layerRoot) then {
	_item186 = createVehicle ["RD501_AAT_Blue",[3203.37,5319.87,1.43051e-005],[],0,"CAN_COLLIDE"];
	_this = _item186;
	_objects pushback _this;
	_objectIDs pushback 186;
	_this setPosWorld [3203.31,5319,9.85261];
	_this setVectorDirAndUp [[-0.0278963,0.998524,-0.0466088],[-0.0598916,0.0448736,0.997196]];
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	_this setVariable ['s',1];;
	[_this,4] call ace_cargo_fnc_setSpace;;
	[_this,0] call JLTS_fnc_jumpAddRecharger;
};

private _item192 = objNull;
if (_layerRoot) then {
	_item192 = _item190 createUnit ["RD501_opfor_unit_B1_crew",[3459.91,5448.98,2.47955e-005],[],0,"CAN_COLLIDE"];
	_this = _item192;
	_objects pushback _this;
	_objectIDs pushback 192;
	_this setPosWorld [3459.84,5448.09,16.7094];
	_this setVectorDirAndUp [[-0.994459,0.089118,-0.0557669],[-0.0449556,0.119024,0.991873]];
	_this setname "B1 - 31325";;
	_this setface "Clone_face_dogma";;
	_this setspeaker "male10eng";;
	_this setpitch 0.993416;;
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

private _item193 = objNull;
if (_layerRoot) then {
	_item193 = _item190 createUnit ["RD501_opfor_unit_B1_crew",[3459.91,5448.98,2.47955e-005],[],0,"CAN_COLLIDE"];
	_this = _item193;
	_objects pushback _this;
	_objectIDs pushback 193;
	_this setPosWorld [3459.84,5448.09,16.7094];
	_this setVectorDirAndUp [[-0.994459,0.089118,-0.0557669],[-0.0449556,0.119024,0.991873]];
	_this setname "B1 - 65097";;
	_this setface "SWLB_JH_Head_Purge_Painmace";;
	_this setspeaker "male08eng";;
	_this setpitch 0.982728;;
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

private _item194 = objNull;
if (_layerRoot) then {
	_item194 = _item190 createUnit ["RD501_opfor_unit_B1_crew",[3459.91,5448.98,2.47955e-005],[],0,"CAN_COLLIDE"];
	_item190 selectLeader _item194;
	_this = _item194;
	_objects pushback _this;
	_objectIDs pushback 194;
	_this setPosWorld [3459.84,5448.09,16.7094];
	_this setVectorDirAndUp [[-0.994459,0.089118,-0.0557669],[-0.0449556,0.119024,0.991873]];
	_this setname "B1 - 62471";;
	_this setface "SWLB_JH_Head_D";;
	_this setspeaker "male08eng";;
	_this setpitch 0.98903;;
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

private _item228 = objNull;
if (_layerRoot) then {
	_item228 = _item190 createUnit ["RD501_opfor_unit_B2_droid_Standard",[3463.58,5441.65,1.71661e-005],[],0,"CAN_COLLIDE"];
	_this = _item228;
	_objects pushback _this;
	_objectIDs pushback 228;
	_this setPosWorld [3463.58,5441.7,17.9628];
	_this setVectorDirAndUp [[-0.996819,0.0797022,0],[0,0,1]];
	_this setname "Battle Droid";;
	_this setface "PersianHead_A3_03";;
	_this setspeaker "male02per";;
	_this setpitch 1.01523;;
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

private _item229 = objNull;
if (_layerRoot) then {
	_item229 = _item190 createUnit ["RD501_opfor_unit_B2_droid_Standard",[3465.34,5452.79,9.53674e-006],[],0,"CAN_COLLIDE"];
	_this = _item229;
	_objects pushback _this;
	_objectIDs pushback 229;
	_this setPosWorld [3465.34,5452.84,16.706];
	_this setVectorDirAndUp [[-0.996819,0.0797022,0],[0,0,1]];
	_this setname "Battle Droid";;
	_this setface "PersianHead_A3_02";;
	_this setspeaker "male01per";;
	_this setpitch 1.00805;;
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

private _item191 = objNull;
if (_layerRoot) then {
	_item191 = createVehicle ["RD501_AAT_Blue",[3459.91,5448.98,0.00468636],[],0,"CAN_COLLIDE"];
	_this = _item191;
	_objects pushback _this;
	_objectIDs pushback 191;
	_this setPosWorld [3459.84,5448.09,16.7094];
	_this setVectorDirAndUp [[-0.994459,0.089118,-0.0557669],[-0.0449556,0.119024,0.991873]];
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	_this setVariable ['s',1];;
	[_this,4] call ace_cargo_fnc_setSpace;;
	[_this,0] call JLTS_fnc_jumpAddRecharger;
};

private _item210 = objNull;
if (_layerRoot) then {
	_item210 = _item209 createUnit ["ls_cis_b1Marksman_standard",[3540.86,5237.6,0.157837],[],0,"CAN_COLLIDE"];
	_item209 selectLeader _item210;
	_this = _item210;
	_objects pushback _this;
	_objectIDs pushback 210;
	_this setPosWorld [3540.86,5237.65,91.0517];
	_this setVectorDirAndUp [[-0.932725,0.360588,0],[0,0,1]];
	_this setRank "SERGEANT";
	_this setname "BD- 86";;
	_this setface "WhiteHead_07";;
	_this setspeaker "male10eng";;
	_this setpitch 0.990693;;
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

private _item211 = objNull;
if (_layerRoot) then {
	_item211 = _item209 createUnit ["ls_cis_b1Marksman_standard",[3542.95,5240.04,0.196236],[],0,"CAN_COLLIDE"];
	_this = _item211;
	_objects pushback _this;
	_objectIDs pushback 211;
	_this setPosWorld [3542.95,5240.09,91.3101];
	_this setVectorDirAndUp [[-0.97308,0.230469,0],[0,0,1]];
	_this setSkill 0.45;
	_this setRank "CORPORAL";
	_this setname "BD- 377";;
	_this setface "SWLB_JH_Head_Shiv";;
	_this setspeaker "male08eng";;
	_this setpitch 0.958789;;
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

private _item213 = objNull;
if (_layerRoot) then {
	_item213 = _item212 createUnit ["ls_cis_b1SquadLead_standard",[3310.58,5719.4,0],[],0,"CAN_COLLIDE"];
	_item212 selectLeader _item213;
	_this = _item213;
	_objects pushback _this;
	_objectIDs pushback 213;
	_this setPosWorld [3310.58,5719.45,8.93146];
	_this setVectorDirAndUp [[0.144522,0.989502,0],[0,0,1]];
	_this setRank "SERGEANT";
	_this setname "B1- 4173";;
	_this setface "AfricanHead_02";;
	_this setspeaker "male09eng";;
	_this setpitch 1.0385;;
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

private _item214 = objNull;
if (_layerRoot) then {
	_item214 = _item212 createUnit ["ls_cis_b1Heavy_standard",[3314.81,5713.73,0],[],0,"CAN_COLLIDE"];
	_this = _item214;
	_objects pushback _this;
	_objectIDs pushback 214;
	_this setPosWorld [3314.81,5713.78,8.09915];
	_this setVectorDirAndUp [[0.144522,0.989502,0],[0,0,1]];
	_this setSkill 0.45;
	_this setRank "CORPORAL";
	_this setname "B1- 0247";;
	_this setface "WhiteHead_21";;
	_this setspeaker "male11eng";;
	_this setpitch 0.955814;;
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

private _item215 = objNull;
if (_layerRoot) then {
	_item215 = _item212 createUnit ["ls_cis_b1AtMissile_standard",[3304.91,5715.17,0],[],0,"CAN_COLLIDE"];
	_this = _item215;
	_objects pushback _this;
	_objectIDs pushback 215;
	_this setPosWorld [3304.91,5715.22,9.34519];
	_this setVectorDirAndUp [[0.144522,0.989502,0],[0,0,1]];
	_this setSkill 0.4;
	_this setname "B1- 3917";;
	_this setface "WhiteHead_09";;
	_this setspeaker "male04eng";;
	_this setpitch 0.969159;;
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

private _item216 = objNull;
if (_layerRoot) then {
	_item216 = _item212 createUnit ["ls_cis_b1AtMissile_standard",[3319.03,5708.06,0],[],0,"CAN_COLLIDE"];
	_this = _item216;
	_objects pushback _this;
	_objectIDs pushback 216;
	_this setPosWorld [3319.03,5708.11,7.22907];
	_this setVectorDirAndUp [[0.144522,0.989502,0],[0,0,1]];
	_this setSkill 0.4;
	_this setname "B1- 681";;
	_this setface "Clone_face_tup";;
	_this setspeaker "male11eng";;
	_this setpitch 1.03865;;
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

private _item218 = objNull;
if (_layerRoot) then {
	_item218 = _item217 createUnit ["ls_cis_b1SquadLead_standard",[3057.9,5427.15,1.90735e-006],[],0,"CAN_COLLIDE"];
	_item217 selectLeader _item218;
	_this = _item218;
	_objects pushback _this;
	_objectIDs pushback 218;
	_this setPosWorld [3057.9,5427.2,20.466];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setRank "SERGEANT";
	_this setname "OM- 65";;
	_this setface "SWLB_JH_Head_Hair";;
	_this setspeaker "male10eng";;
	_this setpitch 1.03266;;
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

private _item219 = objNull;
if (_layerRoot) then {
	_item219 = _item217 createUnit ["ls_cis_b1Heavy_standard",[3062.9,5422.15,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item219;
	_objects pushback _this;
	_objectIDs pushback 219;
	_this setPosWorld [3062.9,5422.2,20.538];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 0.4;
	_this setname "OR- 29431";;
	_this setface "WhiteHead_10";;
	_this setspeaker "male08eng";;
	_this setpitch 0.9775;;
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

private _item220 = objNull;
if (_layerRoot) then {
	_item220 = _item217 createUnit ["ls_cis_b1_standard",[3052.9,5422.15,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item220;
	_objects pushback _this;
	_objectIDs pushback 220;
	_this setPosWorld [3052.9,5422.2,20.897];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 0.45;
	_this setRank "CORPORAL";
	_this setname "OM- 1873";;
	_this setface "Barklem";;
	_this setspeaker "male06eng";;
	_this setpitch 0.98607;;
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

private _item221 = objNull;
if (_layerRoot) then {
	_item221 = _item217 createUnit ["ls_cis_b1At_standard",[3067.9,5417.15,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item221;
	_objects pushback _this;
	_objectIDs pushback 221;
	_this setPosWorld [3067.9,5417.2,20.5728];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 0.4;
	_this setname "BD- 86";;
	_this setface "SWLB_JH_Head_Hair";;
	_this setspeaker "male07eng";;
	_this setpitch 0.974149;;
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

private _item222 = objNull;
if (_layerRoot) then {
	_item222 = _item217 createUnit ["ls_cis_b1Marksman_standard",[3047.9,5417.15,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item222;
	_objects pushback _this;
	_objectIDs pushback 222;
	_this setPosWorld [3047.9,5417.2,21.238];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setRank "SERGEANT";
	_this setname "B1- 993";;
	_this setface "WhiteHead_09";;
	_this setspeaker "male02eng";;
	_this setpitch 0.982142;;
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

private _item223 = objNull;
if (_layerRoot) then {
	_item223 = _item217 createUnit ["ls_cis_b1Heavy_standard",[3072.9,5412.15,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item223;
	_objects pushback _this;
	_objectIDs pushback 223;
	_this setPosWorld [3072.9,5412.2,20.5615];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 0.45;
	_this setRank "CORPORAL";
	_this setname "OR- 6500";;
	_this setface "WhiteHead_16";;
	_this setspeaker "male12eng";;
	_this setpitch 0.974604;;
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

private _item224 = objNull;
if (_layerRoot) then {
	_item224 = _item217 createUnit ["ls_cis_b1_standard",[3042.9,5412.15,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item224;
	_objects pushback _this;
	_objectIDs pushback 224;
	_this setPosWorld [3042.9,5412.2,21.4517];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 0.4;
	_this setname "OR- 7309";;
	_this setface "Clone_face_boomer";;
	_this setspeaker "male09eng";;
	_this setpitch 1.03894;;
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

private _item225 = objNull;
if (_layerRoot) then {
	_item225 = _item217 createUnit ["ls_cis_b1_standard",[3077.9,5407.15,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item225;
	_objects pushback _this;
	_objectIDs pushback 225;
	_this setPosWorld [3077.9,5407.2,20.3118];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	_this setSkill 0.4;
	_this setname "B1- 2414";;
	_this setface "SWLB_JH_Head_Gambit";;
	_this setspeaker "male02eng";;
	_this setpitch 0.968119;;
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
_this = _item175;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	[_this, "Альфа 1-1"] call CBA_fnc_setCallsign;
				if (!is3DEN && {!(["","ColorEAST","Альфа 1-1",true] isEqualTo ['','','',true])}) then			{				[_this,["","ColorEAST","Альфа 1-1",true]] spawn				{					params ['_group','["","ColorEAST","Альфа 1-1",true]'];					["","ColorEAST","Альфа 1-1",true] params ['_type','_color','_text','_showGroupSize'];					private _leader = leader _group;					private _marker = createMarker					[						format ['ENH_GroupMarker_["","ColorEAST","Альфа 1-1",true]',str floor random 10e5],						_leader					];					_marker setMarkerType _type;					_marker setMarkerColor _color;					_marker setMarkerText _text;					while {true} do					{						sleep 1;						if (units _group isEqualTo []) exitWith {deleteMarker _marker};						if (_group getVariable ['ENH_GroupMarker_Update',true]) then						{							_marker setMarkerPos _leader;							if (_showGroupSize) then							{								_marker setMarkerText format ['["","ColorEAST","Альфа 1-1",true] ()',groupId _group, count units _group];							};						};					};				};			};;
};
_this = _item180;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	[_this, "Альфа 1-2"] call CBA_fnc_setCallsign;
				if (!is3DEN && {!(["","ColorEAST","Альфа 1-2",true] isEqualTo ['','','',true])}) then			{				[_this,["","ColorEAST","Альфа 1-2",true]] spawn				{					params ['_group','["","ColorEAST","Альфа 1-2",true]'];					["","ColorEAST","Альфа 1-2",true] params ['_type','_color','_text','_showGroupSize'];					private _leader = leader _group;					private _marker = createMarker					[						format ['ENH_GroupMarker_["","ColorEAST","Альфа 1-2",true]',str floor random 10e5],						_leader					];					_marker setMarkerType _type;					_marker setMarkerColor _color;					_marker setMarkerText _text;					while {true} do					{						sleep 1;						if (units _group isEqualTo []) exitWith {deleteMarker _marker};						if (_group getVariable ['ENH_GroupMarker_Update',true]) then						{							_marker setMarkerPos _leader;							if (_showGroupSize) then							{								_marker setMarkerText format ['["","ColorEAST","Альфа 1-2",true] ()',groupId _group, count units _group];							};						};					};				};			};;
};
_this = _item185;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	[_this, "Альфа 1-3"] call CBA_fnc_setCallsign;
				if (!is3DEN && {!(["","ColorEAST","Альфа 1-3",true] isEqualTo ['','','',true])}) then			{				[_this,["","ColorEAST","Альфа 1-3",true]] spawn				{					params ['_group','["","ColorEAST","Альфа 1-3",true]'];					["","ColorEAST","Альфа 1-3",true] params ['_type','_color','_text','_showGroupSize'];					private _leader = leader _group;					private _marker = createMarker					[						format ['ENH_GroupMarker_["","ColorEAST","Альфа 1-3",true]',str floor random 10e5],						_leader					];					_marker setMarkerType _type;					_marker setMarkerColor _color;					_marker setMarkerText _text;					while {true} do					{						sleep 1;						if (units _group isEqualTo []) exitWith {deleteMarker _marker};						if (_group getVariable ['ENH_GroupMarker_Update',true]) then						{							_marker setMarkerPos _leader;							if (_showGroupSize) then							{								_marker setMarkerText format ['["","ColorEAST","Альфа 1-3",true] ()',groupId _group, count units _group];							};						};					};				};			};;
};
_this = _item190;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	[_this, "Альфа 1-4"] call CBA_fnc_setCallsign;
				if (!is3DEN && {!(["","ColorEAST","Альфа 1-4",true] isEqualTo ['','','',true])}) then			{				[_this,["","ColorEAST","Альфа 1-4",true]] spawn				{					params ['_group','["","ColorEAST","Альфа 1-4",true]'];					["","ColorEAST","Альфа 1-4",true] params ['_type','_color','_text','_showGroupSize'];					private _leader = leader _group;					private _marker = createMarker					[						format ['ENH_GroupMarker_["","ColorEAST","Альфа 1-4",true]',str floor random 10e5],						_leader					];					_marker setMarkerType _type;					_marker setMarkerColor _color;					_marker setMarkerText _text;					while {true} do					{						sleep 1;						if (units _group isEqualTo []) exitWith {deleteMarker _marker};						if (_group getVariable ['ENH_GroupMarker_Update',true]) then						{							_marker setMarkerPos _leader;							if (_showGroupSize) then							{								_marker setMarkerText format ['["","ColorEAST","Альфа 1-4",true] ()',groupId _group, count units _group];							};						};					};				};			};;
};
_this = _item209;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	[_this, "Альфа 1-5"] call CBA_fnc_setCallsign;
				if (!is3DEN && {!(["","ColorEAST","Альфа 1-5",true] isEqualTo ['','','',true])}) then			{				[_this,["","ColorEAST","Альфа 1-5",true]] spawn				{					params ['_group','["","ColorEAST","Альфа 1-5",true]'];					["","ColorEAST","Альфа 1-5",true] params ['_type','_color','_text','_showGroupSize'];					private _leader = leader _group;					private _marker = createMarker					[						format ['ENH_GroupMarker_["","ColorEAST","Альфа 1-5",true]',str floor random 10e5],						_leader					];					_marker setMarkerType _type;					_marker setMarkerColor _color;					_marker setMarkerText _text;					while {true} do					{						sleep 1;						if (units _group isEqualTo []) exitWith {deleteMarker _marker};						if (_group getVariable ['ENH_GroupMarker_Update',true]) then						{							_marker setMarkerPos _leader;							if (_showGroupSize) then							{								_marker setMarkerText format ['["","ColorEAST","Альфа 1-5",true] ()',groupId _group, count units _group];							};						};					};				};			};;
};
_this = _item212;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	[_this, "Альфа 1-6"] call CBA_fnc_setCallsign;
				if (!is3DEN && {!(["","ColorEAST","Альфа 1-6",true] isEqualTo ['','','',true])}) then			{				[_this,["","ColorEAST","Альфа 1-6",true]] spawn				{					params ['_group','["","ColorEAST","Альфа 1-6",true]'];					["","ColorEAST","Альфа 1-6",true] params ['_type','_color','_text','_showGroupSize'];					private _leader = leader _group;					private _marker = createMarker					[						format ['ENH_GroupMarker_["","ColorEAST","Альфа 1-6",true]',str floor random 10e5],						_leader					];					_marker setMarkerType _type;					_marker setMarkerColor _color;					_marker setMarkerText _text;					while {true} do					{						sleep 1;						if (units _group isEqualTo []) exitWith {deleteMarker _marker};						if (_group getVariable ['ENH_GroupMarker_Update',true]) then						{							_marker setMarkerPos _leader;							if (_showGroupSize) then							{								_marker setMarkerText format ['["","ColorEAST","Альфа 1-6",true] ()',groupId _group, count units _group];							};						};					};				};			};;
};
_this = _item217;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	[_this, "Альфа 2-1"] call CBA_fnc_setCallsign;
				if (!is3DEN && {!(["","ColorEAST","Альфа 2-1",true] isEqualTo ['','','',true])}) then			{				[_this,["","ColorEAST","Альфа 2-1",true]] spawn				{					params ['_group','["","ColorEAST","Альфа 2-1",true]'];					["","ColorEAST","Альфа 2-1",true] params ['_type','_color','_text','_showGroupSize'];					private _leader = leader _group;					private _marker = createMarker					[						format ['ENH_GroupMarker_["","ColorEAST","Альфа 2-1",true]',str floor random 10e5],						_leader					];					_marker setMarkerType _type;					_marker setMarkerColor _color;					_marker setMarkerText _text;					while {true} do					{						sleep 1;						if (units _group isEqualTo []) exitWith {deleteMarker _marker};						if (_group getVariable ['ENH_GroupMarker_Update',true]) then						{							_marker setMarkerPos _leader;							if (_showGroupSize) then							{								_marker setMarkerText format ['["","ColorEAST","Альфа 2-1",true] ()',groupId _group, count units _group];							};						};					};				};			};;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Waypoints
private _waypoints = [];
private _waypointIDs = [];

private _item239 = [];
if (_layerRoot) then {
	_item239 = _item175 addWaypoint [[3358.07,5562.97,-4.76837e-007],0];
	_this = _item239;
	_waypoints pushback _this;
	_waypointIDs pushback 239;
	_this setWaypointType "MOVE";
};

private _item201 = [];
if (_layerRoot) then {
	_item201 = _item180 addWaypoint [[3218.01,5404.48,-4.76837e-006],0];
	_this = _item201;
	_waypoints pushback _this;
	_waypointIDs pushback 201;
	_this setWaypointType "MOVE";
};

private _item202 = [];
if (_layerRoot) then {
	_item202 = _item180 addWaypoint [[3261.02,5437.19,-3.71933e-005],0];
	_this = _item202;
	_waypoints pushback _this;
	_waypointIDs pushback 202;
	_this setWaypointType "MOVE";
};

private _item203 = [];
if (_layerRoot) then {
	_item203 = _item180 addWaypoint [[3350.29,5459.72,1.04904e-005],0];
	_this = _item203;
	_waypoints pushback _this;
	_waypointIDs pushback 203;
	_this setWaypointType "MOVE";
};

private _item204 = [];
if (_layerRoot) then {
	_item204 = _item180 addWaypoint [[3421.64,5453.94,1.71661e-005],0];
	_this = _item204;
	_waypoints pushback _this;
	_waypointIDs pushback 204;
	_this setWaypointType "MOVE";
};

private _item205 = [];
if (_layerRoot) then {
	_item205 = _item180 addWaypoint [[3224.39,5391.72,-1.33514e-005],0];
	_this = _item205;
	_waypoints pushback _this;
	_waypointIDs pushback 205;
	_this setWaypointType "CYCLE";
};

private _item236 = [];
if (_layerRoot) then {
	_item236 = _item185 addWaypoint [[3237.13,5213.34,1.90735e-005],0];
	_this = _item236;
	_waypoints pushback _this;
	_waypointIDs pushback 236;
	_this setWaypointType "MOVE";
};

private _item237 = [];
if (_layerRoot) then {
	_item237 = _item185 addWaypoint [[3210.55,5382.21,2.95639e-005],0];
	_this = _item237;
	_waypoints pushback _this;
	_waypointIDs pushback 237;
	_this setWaypointType "MOVE";
};

private _item238 = [];
if (_layerRoot) then {
	_item238 = _item185 addWaypoint [[3227.74,5225.56,0],0];
	_this = _item238;
	_waypoints pushback _this;
	_waypointIDs pushback 238;
	_this setWaypointType "CYCLE";
};

private _item240 = [];
if (_layerRoot) then {
	_item240 = _item190 addWaypoint [[3433.22,5452.97,-2.09808e-005],0];
	_this = _item240;
	_waypoints pushback _this;
	_waypointIDs pushback 240;
	_this setWaypointType "MOVE";
};

private _item230 = [];
if (_layerRoot) then {
	_item230 = _item217 addWaypoint [[3103.38,5517.02,0],0];
	_this = _item230;
	_waypoints pushback _this;
	_waypointIDs pushback 230;
	_this setWaypointType "MOVE";
};

private _item231 = [];
if (_layerRoot) then {
	_item231 = _item217 addWaypoint [[3234.47,5482.49,-4.76837e-006],0];
	_this = _item231;
	_waypoints pushback _this;
	_waypointIDs pushback 231;
	_this setWaypointType "MOVE";
};

private _item232 = [];
if (_layerRoot) then {
	_item232 = _item217 addWaypoint [[3124.79,5406.17,-4.76837e-006],0];
	_this = _item232;
	_waypoints pushback _this;
	_waypointIDs pushback 232;
	_this setWaypointType "MOVE";
};

private _item233 = [];
if (_layerRoot) then {
	_item233 = _item217 addWaypoint [[3003.08,5504.73,2.86102e-006],0];
	_this = _item233;
	_waypoints pushback _this;
	_waypointIDs pushback 233;
	_this setWaypointType "MOVE";
};

private _item234 = [];
if (_layerRoot) then {
	_item234 = _item217 addWaypoint [[3058.38,5400.78,-3.8147e-006],0];
	_this = _item234;
	_waypoints pushback _this;
	_waypointIDs pushback 234;
	_this setWaypointType "MOVE";
};

private _item235 = [];
if (_layerRoot) then {
	_item235 = _item217 addWaypoint [[3096.98,5513.45,0],0];
	_this = _item235;
	_waypoints pushback _this;
	_waypointIDs pushback 235;
	_this setWaypointType "CYCLE";
};


///////////////////////////////////////////////////////////////////////////////////////////
// Logics
private _logics = [];
private _logicIDs = [];


///////////////////////////////////////////////////////////////////////////////////////////
// Layers


///////////////////////////////////////////////////////////////////////////////////////////
// Crews
if (!isNull _item177 && !isNull _item176) then {_item177 moveInDriver _item176;};
if (!isNull _item178 && !isNull _item176) then {_item178 moveInTurret [_item176,[0]];};
if (!isNull _item179 && !isNull _item176) then {_item179 moveInTurret [_item176,[0,0]];};
if (!isNull _item182 && !isNull _item181) then {_item182 moveInDriver _item181;};
if (!isNull _item183 && !isNull _item181) then {_item183 moveInTurret [_item181,[0]];};
if (!isNull _item184 && !isNull _item181) then {_item184 moveInTurret [_item181,[0,0]];};
if (!isNull _item187 && !isNull _item186) then {_item187 moveInDriver _item186;};
if (!isNull _item188 && !isNull _item186) then {_item188 moveInTurret [_item186,[0]];};
if (!isNull _item189 && !isNull _item186) then {_item189 moveInTurret [_item186,[0,0]];};
if (!isNull _item192 && !isNull _item191) then {_item192 moveInDriver _item191;};
if (!isNull _item193 && !isNull _item191) then {_item193 moveInTurret [_item191,[0]];};
if (!isNull _item194 && !isNull _item191) then {_item194 moveInTurret [_item191,[0,0]];};


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
