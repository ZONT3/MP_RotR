// Export of '11.isladuala3' by [FL] COM Gru Anez on v0.9

///////////////////////////////////////////////////////////////////////////////////////////
// Init
params [["_layerWhiteList",[],[[]]],["_layerBlacklist",[],[[]]],["_posCenter",[0,0,0],[[]]],["_dir",0,[0]],["_idBlacklist",[],[[]]]];
private _allWhitelisted = _layerWhiteList isEqualTo [];
private _layerRoot = (_allWhitelisted || {true in _layerWhiteList}) && {!(true in _layerBlackList)};
private _layer198 = (_allWhitelisted || {"virtual vehicle spawner" in _layerWhiteList}) && {!("virtual vehicle spawner" in _layerBlackList)};
private _layer168 = (_allWhitelisted || {"base #01" in _layerWhiteList}) && {!("base #01" in _layerBlackList)};
private _layer165 = (_allWhitelisted || {"base_sl" in _layerWhiteList}) && {!("base_sl" in _layerBlackList)};
private _layer203 = (_allWhitelisted || {"outpost" in _layerWhiteList}) && {!("outpost" in _layerBlackList)};


///////////////////////////////////////////////////////////////////////////////////////////
// Markers
private _markers = [];
private _markerIDs = [];

private _item202 = "";
if (_layer203) then {
	_item202 = createMarker ["marker_0",[8256.2,341.872,0]];
	_this = _item202;
	_markers pushback _this;
	_markerIDs pushback 202;
	_this setMarkerType "mil_flag";
	_this setMarkerText "Аванпост ВАР";
	_this setMarkerDir 71.7624;
	_this setMarkerShape "ICON";
	_this setMarkerColor "ColorWEST";
};


///////////////////////////////////////////////////////////////////////////////////////////
// Groups
private _groups = [];
private _groupIDs = [];

private _item200 = grpNull;
if (_layer203) then {
	_item200 = createGroup west;
	_this = _item200;
	_groups pushback _this;
	_groupIDs pushback 200;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Objects
private _objects = [];
private _objectIDs = [];

private _item156 = objNull;
if (_layer203) then {
	_item156 = createVehicle ["3AS_HeavyRepeater_Armoured",[8236.33,392.475,0],[],0,"CAN_COLLIDE"];
	_this = _item156;
	_objects pushback _this;
	_objectIDs pushback 156;
	_this setPosWorld [8236.29,392.419,17.3483];
	_this setVectorDirAndUp [[-0.308686,0.951164,0],[0,0,1]];
	[_this,2] call ace_cargo_fnc_setSize;;
};

private _item157 = objNull;
if (_layer203) then {
	_item157 = createVehicle ["3AS_HeavyRepeater_Armoured",[8270.64,403.714,9.09612],[],0,"CAN_COLLIDE"];
	_this = _item157;
	_objects pushback _this;
	_objectIDs pushback 157;
	_this setPosWorld [8270.6,403.658,26.437];
	_this setVectorDirAndUp [[0.437263,0.899334,0],[0,0,1]];
	[_this,2] call ace_cargo_fnc_setSize;;
};

private _item155 = objNull;
if (_layer203) then {
	_item155 = createVehicle ["3AS_HeavyRepeater_Unarmoured",[8288.85,347.041,9.09188],[],0,"CAN_COLLIDE"];
	_this = _item155;
	_objects pushback _this;
	_objectIDs pushback 155;
	_this setPosWorld [8288.85,347.041,27.4249];
	_this setVectorDirAndUp [[0.928906,-0.370316,0],[0,0,1]];
	[_this,2] call ace_cargo_fnc_setSize;;
};

private _item158 = objNull;
if (_layer203) then {
	_item158 = createVehicle ["3AS_HeavyRepeater_Armoured",[8289.18,302.895,9.02545],[],0,"CAN_COLLIDE"];
	_this = _item158;
	_objects pushback _this;
	_objectIDs pushback 158;
	_this setPosWorld [8289.14,302.839,26.3664];
	_this setVectorDirAndUp [[0.83864,-0.544686,0],[0,0,1]];
	[_this,2] call ace_cargo_fnc_setSize;;
};

private _item159 = objNull;
if (_layer203) then {
	_item159 = createVehicle ["3AS_HeavyRepeater_Armoured",[8267.58,295.319,9.06318],[],0,"CAN_COLLIDE"];
	_this = _item159;
	_objects pushback _this;
	_objectIDs pushback 159;
	_this setPosWorld [8267.54,295.264,26.4767];
	_this setVectorDirAndUp [[0.127122,-0.991803,0.0128866],[0,0.012992,0.999916]];
	[_this,2] call ace_cargo_fnc_setSize;;
};

private _item160 = objNull;
if (_layer203) then {
	_item160 = createVehicle ["3AS_HeavyRepeater_Armoured",[8233.33,329.144,9.05483],[],0,"CAN_COLLIDE"];
	_this = _item160;
	_objects pushback _this;
	_objectIDs pushback 160;
	_this setPosWorld [8233.29,329.088,26.3958];
	_this setVectorDirAndUp [[-0.440439,-0.897782,0],[0,0,1]];
	[_this,2] call ace_cargo_fnc_setSize;;
};

private _item104 = objNull;
if (_layer203) then {
	_item104 = createVehicle ["3as_FOB_Banner_prop",[8258.68,359.887,0],[],0,"CAN_COLLIDE"];
	_this = _item104;
	_objects pushback _this;
	_objectIDs pushback 104;
	_this setPosWorld [8258.68,359.887,18.3528];
	_this setVectorDirAndUp [[0.873649,0.486557,0],[0,0,1]];
};

private _item105 = objNull;
if (_layer203) then {
	_item105 = createVehicle ["3as_FOB_Banner_prop",[8259.31,357.314,0],[],0,"CAN_COLLIDE"];
	_this = _item105;
	_objects pushback _this;
	_objectIDs pushback 105;
	_this setPosWorld [8259.31,357.314,18.3528];
	_this setVectorDirAndUp [[0.955909,0.293663,0],[0,0,1]];
};

private _item106 = objNull;
if (_layer203) then {
	_item106 = createVehicle ["3as_FOB_Banner_prop",[8260.26,354.942,0],[],0,"CAN_COLLIDE"];
	_this = _item106;
	_objects pushback _this;
	_objectIDs pushback 106;
	_this setPosWorld [8260.26,354.942,18.3528];
	_this setVectorDirAndUp [[0.96628,0.257495,0],[0,0,1]];
};

private _item107 = objNull;
if (_layer203) then {
	_item107 = createVehicle ["3as_FOB_Banner_prop",[8261.12,352.269,0],[],0,"CAN_COLLIDE"];
	_this = _item107;
	_objects pushback _this;
	_objectIDs pushback 107;
	_this setPosWorld [8261.12,352.269,18.3528];
	_this setVectorDirAndUp [[0.908171,0.418599,0],[0,0,1]];
};

private _item110 = objNull;
if (_layer203) then {
	_item110 = createVehicle ["3as_Barricade_3_prop",[8225.38,402.84,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item110;
	_objects pushback _this;
	_objectIDs pushback 110;
	_this setPosWorld [8225.38,402.84,17.6535];
	_this setVectorDirAndUp [[0.213942,-0.976846,0],[0,0,1]];
};

private _item109 = objNull;
if (_layer203) then {
	_item109 = createVehicle ["3as_Barricade_2_C_prop",[8245.88,405.586,0],[],0,"CAN_COLLIDE"];
	_this = _item109;
	_objects pushback _this;
	_objectIDs pushback 109;
	_this setPosWorld [8245.88,405.586,17.5819];
	_this setVectorDirAndUp [[-0.335321,-0.942104,0],[0,0,1]];
};

private _item163 = objNull;
if (_layer203) then {
	_item163 = createVehicle ["3as_shield_5_prop",[8241.64,406.569,0.00615883],[],0,"CAN_COLLIDE"];
	_this = _item163;
	_objects pushback _this;
	_objectIDs pushback 163;
	_this setPosWorld [8241.64,406.569,18.2072];
	_this setVectorDirAndUp [[-0.927049,0.374941,0],[0,0,1]];
};

private _item164 = objNull;
if (_layer203) then {
	_item164 = createVehicle ["3as_shield_5_prop",[8222.57,400.548,0],[],0,"CAN_COLLIDE"];
	_this = _item164;
	_objects pushback _this;
	_objectIDs pushback 164;
	_this setPosWorld [8222.57,400.548,18.201];
	_this setVectorDirAndUp [[-0.323485,-0.946233,0],[0,0,1]];
};

private _item111 = objNull;
if (_layer203) then {
	_item111 = createVehicle ["3as_FOB_Building_1_prop",[8232.98,353.149,0],[],0,"CAN_COLLIDE"];
	_this = _item111;
	_objects pushback _this;
	_objectIDs pushback 111;
	_this setPosWorld [8232.98,353.149,21.9157];
	_this setVectorDirAndUp [[0.949767,0.312958,0],[0,0,1]];
};

private _item166 = objNull;
if (_layer165 && _layer203) then {
	_item166 = createVehicle ["3as_large_crate_stack_3_prop",[8237.54,336.718,0],[],0,"CAN_COLLIDE"];
	_this = _item166;
	_objects pushback _this;
	_objectIDs pushback 166;
	_this setPosWorld [8237.54,336.718,19.3625];
	_this setVectorDirAndUp [[0.949767,0.312958,0],[0,0,1]];
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	[_this,0] call JLTS_fnc_jumpAddRecharger;
};

private _item167 = objNull;
if (_layer165 && _layer203) then {
	_item167 = createVehicle ["land_3as_Republic_Container_prop",[8223.22,383.33,0],[],0,"CAN_COLLIDE"];
	_this = _item167;
	_objects pushback _this;
	_objectIDs pushback 167;
	_this setPosWorld [8223.22,383.33,18.6458];
	_this setVectorDirAndUp [[0.949737,0.312887,-0.0101024],[0.00800059,0.00800064,0.999936]];
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	[_this,0] call JLTS_fnc_jumpAddRecharger;
};

private _item169 = objNull;
if (_layer168 && _layer165 && _layer203) then {
	_item169 = createVehicle ["3as_prop_fob_modular_wall_ramp",[8265.72,401.861,0],[],0,"CAN_COLLIDE"];
	_this = _item169;
	_objects pushback _this;
	_objectIDs pushback 169;
	_this setPosWorld [8265.72,401.861,19.5519];
	_this setVectorDirAndUp [[-0.432579,0.901596,0],[0,0,1]];
};

private _item170 = objNull;
if (_layer168 && _layer165 && _layer203) then {
	_item170 = createVehicle ["3as_prop_fob_modular_wall_ramp",[8216.74,380.059,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item170;
	_objects pushback _this;
	_objectIDs pushback 170;
	_this setPosWorld [8216.74,380.059,19.8652];
	_this setVectorDirAndUp [[-0.989783,-0.116681,0.0819428],[0.0728071,0.0805211,0.99409]];
};

private _item171 = objNull;
if (_layer168 && _layer165 && _layer203) then {
	_item171 = createVehicle ["3as_prop_fob_modular_wall_ramp",[8238.79,329.546,0],[],0,"CAN_COLLIDE"];
	_this = _item171;
	_objects pushback _this;
	_objectIDs pushback 171;
	_this setPosWorld [8238.79,329.546,19.5519];
	_this setVectorDirAndUp [[-0.206991,-0.978343,0],[0,0,1]];
};

private _item172 = objNull;
if (_layer168 && _layer165 && _layer203) then {
	_item172 = createVehicle ["3as_prop_fob_modular_wall_ramp",[8283.94,301.37,0],[],0,"CAN_COLLIDE"];
	_this = _item172;
	_objects pushback _this;
	_objectIDs pushback 172;
	_this setPosWorld [8283.94,301.37,19.5519];
	_this setVectorDirAndUp [[-0.312958,0.949767,0],[0,0,1]];
};

private _item173 = objNull;
if (_layer168 && _layer165 && _layer203) then {
	_item173 = createVehicle ["3as_prop_fob_modular_wall_ramp",[8285.81,343.88,0],[],0,"CAN_COLLIDE"];
	_this = _item173;
	_objects pushback _this;
	_objectIDs pushback 173;
	_this setPosWorld [8285.81,343.88,19.5519];
	_this setVectorDirAndUp [[-0.917598,0.397509,0],[0,0,1]];
};

private _item174 = objNull;
if (_layer168 && _layer165 && _layer203) then {
	_item174 = createVehicle ["3as_prop_fob_modular_wall_ramp",[8271.75,298.036,2.09808e-005],[],0,"CAN_COLLIDE"];
	_this = _item174;
	_objects pushback _this;
	_objectIDs pushback 174;
	_this setPosWorld [8271.75,298.036,19.5547];
	_this setVectorDirAndUp [[0.29498,-0.955465,0.00858448],[0.0129966,0.0129955,0.999831]];
};

private _item175 = objNull;
if (_layer165 && _layer203) then {
	_item175 = createVehicle ["land_3as_Republic_Container_prop",[8225.07,377.48,0.0590706],[],0,"CAN_COLLIDE"];
	_this = _item175;
	_objects pushback _this;
	_objectIDs pushback 175;
	_this setPosWorld [8225.07,377.48,18.7167];
	_this setVectorDirAndUp [[0.949737,0.312958,-0.0075919],[0.00799344,0,0.999968]];
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	[_this,0] call JLTS_fnc_jumpAddRecharger;
};

private _item176 = objNull;
if (_layer165 && _layer203) then {
	_item176 = createVehicle ["3as_crate5_3",[8228.16,375.23,0],[],0,"CAN_COLLIDE"];
	_this = _item176;
	_objects pushback _this;
	_objectIDs pushback 176;
	_this setPosWorld [8228.16,375.23,17.7626];
	_this setVectorDirAndUp [[0.949737,0.312958,-0.0075919],[0.00799344,0,0.999968]];
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	[_this,0] call JLTS_fnc_jumpAddRecharger;
};

private _item177 = objNull;
if (_layer165 && _layer203) then {
	_item177 = createVehicle ["3as_Big_Box_2_prop",[8231,382.63,0],[],0,"CAN_COLLIDE"];
	_this = _item177;
	_objects pushback _this;
	_objectIDs pushback 177;
	_this setPosWorld [8231,382.63,18.6543];
	_this setVectorDirAndUp [[0.949767,0.312958,0],[0,0,1]];
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	[_this,0] call JLTS_fnc_jumpAddRecharger;
};

private _item178 = objNull;
if (_layer165 && _layer203) then {
	_item178 = createVehicle ["3as_Landingpad_R3_prop",[8268.86,318.879,0],[],0,"CAN_COLLIDE"];
	_this = _item178;
	_objects pushback _this;
	_objectIDs pushback 178;
	_this setPosWorld [8268.86,318.879,18.8439];
	_this setVectorDirAndUp [[0.949767,0.312958,0],[0,0,1]];
};

private _item179 = objNull;
if (_layer165 && _layer203) then {
	_item179 = createVehicle ["land_3as_Republic_Forward_Command_prop",[8265.64,342.811,0],[],0,"CAN_COLLIDE"];
	_this = _item179;
	_objects pushback _this;
	_objectIDs pushback 179;
	_this setPosWorld [8265.64,342.811,20.6139];
	_this setVectorDirAndUp [[0.611252,0.791436,0],[0,0,1]];
};

private _item180 = objNull;
if (_layer165 && _layer203) then {
	_item180 = createVehicle ["3as_prop_fob_modular_wall_watchtower",[8215.67,384.993,0],[],0,"CAN_COLLIDE"];
	_this = _item180;
	_objects pushback _this;
	_objectIDs pushback 180;
	_this setPosWorld [8215.67,384.993,23.1278];
	_this setVectorDirAndUp [[0.885073,-0.465437,0.00372056],[0,0.00799344,0.999968]];
};

private _item181 = objNull;
if (_layer165 && _layer203) then {
	_item181 = createVehicle ["3as_FOB_Building_2_prop",[8267.63,357.543,0],[],0,"CAN_COLLIDE"];
	_this = _item181;
	_objects pushback _this;
	_objectIDs pushback 181;
	_this setPosWorld [8267.63,357.543,20.1901];
	_this setVectorDirAndUp [[0.949767,0.312958,0],[0,0,1]];
};

private _item182 = objNull;
if (_layer165 && _layer203) then {
	_item182 = createVehicle ["3as_FOB_Hangar_Prop",[8257.67,380.719,2.24092],[],0,"CAN_COLLIDE"];
	_this = _item182;
	_objects pushback _this;
	_objectIDs pushback 182;
	_this setPosWorld [8257.67,380.719,23.1943];
	_this setVectorDirAndUp [[0.949767,0.312958,0],[0,0,1]];
};

private _item183 = objNull;
if (_layer165 && _layer203) then {
	_item183 = createVehicle ["3as_prop_fob_modular_wall_watchtower",[8270.46,403.502,0],[],0,"CAN_COLLIDE"];
	_this = _item183;
	_objects pushback _this;
	_objectIDs pushback 183;
	_this setPosWorld [8270.46,403.502,23.0878];
	_this setVectorDirAndUp [[-0.464228,-0.885716,0],[0,0,1]];
};

private _item184 = objNull;
if (_layer165 && _layer203) then {
	_item184 = createVehicle ["3as_prop_fob_modular_wall_watchtower",[8233.53,329.376,0],[],0,"CAN_COLLIDE"];
	_this = _item184;
	_objects pushback _this;
	_objectIDs pushback 184;
	_this setPosWorld [8233.53,329.376,23.0878];
	_this setVectorDirAndUp [[0.45513,0.890425,0],[0,0,1]];
};

private _item185 = objNull;
if (_layer165 && _layer203) then {
	_item185 = createVehicle ["3as_prop_fob_modular_wall_watchtower",[8289.23,347.539,0],[],0,"CAN_COLLIDE"];
	_this = _item185;
	_objects pushback _this;
	_objectIDs pushback 185;
	_this setPosWorld [8289.23,347.539,23.0878];
	_this setVectorDirAndUp [[-0.891791,0.452448,0],[0,0,1]];
};

private _item186 = objNull;
if (_layer165 && _layer203) then {
	_item186 = createVehicle ["3as_prop_fob_modular_wall_watchtower",[8288.79,303.002,0],[],0,"CAN_COLLIDE"];
	_this = _item186;
	_objects pushback _this;
	_objectIDs pushback 186;
	_this setPosWorld [8288.79,303.002,23.0878];
	_this setVectorDirAndUp [[-0.876767,0.480916,0],[0,0,1]];
};

private _item187 = objNull;
if (_layer165 && _layer203) then {
	_item187 = createVehicle ["3as_prop_fob_modular_wall_watchtower",[8267.59,295.081,1.90735e-006],[],0,"CAN_COLLIDE"];
	_this = _item187;
	_objects pushback _this;
	_objectIDs pushback 187;
	_this setPosWorld [8267.59,295.081,23.1517];
	_this setVectorDirAndUp [[-0.256383,0.966494,-0.0125622],[0,0.0129966,0.999916]];
};

private _item188 = objNull;
if (_layer165 && _layer203) then {
	_item188 = createVehicle ["3as_MB_Platform_Support_Prop",[8262.82,383.086,37.196],[],0,"CAN_COLLIDE"];
	_this = _item188;
	_objects pushback _this;
	_objectIDs pushback 188;
	_this setPosWorld [8262.82,383.086,48.2965];
	_this setVectorDirAndUp [[0.949767,0.312958,0],[0,0,1]];
};

private _item189 = objNull;
if (_layer165 && _layer203) then {
	_item189 = createVehicle ["3as_FOB_Light_Tall_Prop",[8289.12,348.042,11.5072],[],0,"CAN_COLLIDE"];
	_this = _item189;
	_objects pushback _this;
	_objectIDs pushback 189;
	_this setPosWorld [8289.12,348.042,34.8677];
	_this setVectorDirAndUp [[0.949767,0.312958,0],[0,0,1]];
};

private _item190 = objNull;
if (_layer165 && _layer203) then {
	_item190 = createVehicle ["3as_FOB_Light_Tall_Prop",[8270.57,403.261,11.4876],[],0,"CAN_COLLIDE"];
	_this = _item190;
	_objects pushback _this;
	_objectIDs pushback 190;
	_this setPosWorld [8270.57,403.261,34.8482];
	_this setVectorDirAndUp [[0.949767,0.312958,0],[0,0,1]];
};

private _item191 = objNull;
if (_layer165 && _layer203) then {
	_item191 = createVehicle ["3as_FOB_Light_Tall_Prop",[8216.13,384.929,11.453],[],0,"CAN_COLLIDE"];
	_this = _item191;
	_objects pushback _this;
	_objectIDs pushback 191;
	_this setPosWorld [8216.13,384.929,34.854];
	_this setVectorDirAndUp [[0.954952,0.29676,0],[0,0,1]];
};

private _item192 = objNull;
if (_layer165 && _layer203) then {
	_item192 = createVehicle ["3as_FOB_Light_Tall_Prop",[8233.69,329.756,11.4482],[],0,"CAN_COLLIDE"];
	_this = _item192;
	_objects pushback _this;
	_objectIDs pushback 192;
	_this setPosWorld [8233.69,329.756,34.8087];
	_this setVectorDirAndUp [[0.949767,0.312958,0],[0,0,1]];
};

private _item193 = objNull;
if (_layer165 && _layer203) then {
	_item193 = createVehicle ["3as_FOB_Light_Tall_Prop",[8267.83,295.229,11.541],[],0,"CAN_COLLIDE"];
	_this = _item193;
	_objects pushback _this;
	_objectIDs pushback 193;
	_this setPosWorld [8267.83,295.229,34.9635];
	_this setVectorDirAndUp [[0.492148,0.870512,0],[0,0,1]];
};

private _item194 = objNull;
if (_layer165 && _layer203) then {
	_item194 = createVehicle ["3as_FOB_Light_Tall_Prop",[8288.46,303.259,11.4919],[],0,"CAN_COLLIDE"];
	_this = _item194;
	_objects pushback _this;
	_objectIDs pushback 194;
	_this setPosWorld [8288.46,303.259,34.8524];
	_this setVectorDirAndUp [[0.949767,0.312958,0],[0,0,1]];
};

private _item195 = objNull;
if (_layer165 && _layer203) then {
	_item195 = createVehicle ["Land_OPTRE_Holotable",[8266.54,358.313,0.380722],[],0,"CAN_COLLIDE"];
	_this = _item195;
	_objects pushback _this;
	_objectIDs pushback 195;
	_this setPosWorld [8266.54,358.313,18.3061];
	_this setVectorDirAndUp [[0.949767,0.312958,0],[0,0,1]];
};

private _item196 = objNull;
if (_layer165 && _layer203) then {
	_item196 = createVehicle ["land_Pantalla",[8270.58,363.989,0.281845],[],0,"CAN_COLLIDE"];
	_this = _item196;
	_objects pushback _this;
	_objectIDs pushback 196;
	_this setPosWorld [8270.58,363.989,19.1218];
	_this setVectorDirAndUp [[0.949767,0.312958,0],[0,0,1]];
};

private _item197 = objNull;
if (_layer165 && _layer203) then {
	_item197 = createVehicle ["land_Pantalla",[8271.75,360.402,0.283203],[],0,"CAN_COLLIDE"];
	_this = _item197;
	_objects pushback _this;
	_objectIDs pushback 197;
	_this setPosWorld [8271.75,360.402,19.1232];
	_this setVectorDirAndUp [[0.949767,0.312958,0],[0,0,1]];
};

private _item112 = objNull;
if (_layer203) then {
	_item112 = createVehicle ["Land_FOB_build_New_Wall",[8237.64,327.82,0],[],0,"CAN_COLLIDE"];
	_this = _item112;
	_objects pushback _this;
	_objectIDs pushback 112;
	_this setPosWorld [8237.64,327.82,19.1677];
	_this setVectorDirAndUp [[-0.245509,0.969394,0],[0,0,1]];
};

private _item113 = objNull;
if (_layer203) then {
	_item113 = createVehicle ["Land_FOB_build_New_Wall",[8241.88,325.619,0],[],0,"CAN_COLLIDE"];
	_this = _item113;
	_objects pushback _this;
	_objectIDs pushback 113;
	_this setPosWorld [8241.88,325.619,19.1677];
	_this setVectorDirAndUp [[0.949767,0.312958,0],[0,0,1]];
};

private _item114 = objNull;
if (_layer203) then {
	_item114 = createVehicle ["Land_FOB_build_New_Wall",[8243.88,319.552,0],[],0,"CAN_COLLIDE"];
	_this = _item114;
	_objects pushback _this;
	_objectIDs pushback 114;
	_this setPosWorld [8243.88,319.552,19.1677];
	_this setVectorDirAndUp [[0.949767,0.312958,0],[0,0,1]];
};

private _item115 = objNull;
if (_layer203) then {
	_item115 = createVehicle ["Land_FOB_build_New_Wall",[8245.81,313.452,7.62939e-006],[],0,"CAN_COLLIDE"];
	_this = _item115;
	_objects pushback _this;
	_objectIDs pushback 115;
	_this setPosWorld [8245.81,313.452,19.1677];
	_this setVectorDirAndUp [[0.949767,0.312958,0],[0,0,1]];
};

private _item116 = objNull;
if (_layer203) then {
	_item116 = createVehicle ["Land_FOB_build_New_Wall",[8247.77,307.364,0],[],0,"CAN_COLLIDE"];
	_this = _item116;
	_objects pushback _this;
	_objectIDs pushback 116;
	_this setPosWorld [8247.77,307.364,19.1677];
	_this setVectorDirAndUp [[0.949767,0.312958,0],[0,0,1]];
};

private _item117 = objNull;
if (_layer203) then {
	_item117 = createVehicle ["Land_FOB_build_New_Wall",[8249.78,301.339,0],[],0,"CAN_COLLIDE"];
	_this = _item117;
	_objects pushback _this;
	_objectIDs pushback 117;
	_this setPosWorld [8249.78,301.339,19.1677];
	_this setVectorDirAndUp [[0.949767,0.312958,0],[0,0,1]];
};

private _item118 = objNull;
if (_layer203) then {
	_item118 = createVehicle ["Land_FOB_build_New_Wall",[8251.73,295.247,0],[],0,"CAN_COLLIDE"];
	_this = _item118;
	_objects pushback _this;
	_objectIDs pushback 118;
	_this setPosWorld [8251.73,295.247,20.0697];
	_this setVectorDirAndUp [[0.949767,0.312958,0],[0,0,1]];
};

private _item119 = objNull;
if (_layer203) then {
	_item119 = createVehicle ["Land_FOB_build_New_Wall",[8256.01,293.094,7.43866e-005],[],0,"CAN_COLLIDE"];
	_this = _item119;
	_objects pushback _this;
	_objectIDs pushback 119;
	_this setPosWorld [8256.01,293.094,20.1496];
	_this setVectorDirAndUp [[-0.300377,0.95382,0],[0,0,1]];
};

private _item108 = objNull;
if (_layer203) then {
	_item108 = createVehicle ["3as_FOB_Banner_prop",[8259.57,342.51,0],[],0,"CAN_COLLIDE"];
	_this = _item108;
	_objects pushback _this;
	_objectIDs pushback 108;
	_this setPosWorld [8259.57,342.51,18.3528];
	_this setVectorDirAndUp [[0.949767,0.312958,0],[0,0,1]];
};

private _item162 = objNull;
if (_layer203) then {
	_item162 = createVehicle ["ls_commandPost_republic_blue",[8267.05,341.743,0.781567],[],0,"CAN_COLLIDE"];
	_this = _item162;
	_objects pushback _this;
	_objectIDs pushback 162;
	_this setPosWorld [8267.05,341.743,19.2313];
	_this setVectorDirAndUp [[0.949767,0.312958,0],[0,0,1]];
};

private _item120 = objNull;
if (_layer203) then {
	_item120 = createVehicle ["Land_FOB_build_New_Wall",[8262.61,293.959,0],[],0,"CAN_COLLIDE"];
	_this = _item120;
	_objects pushback _this;
	_objectIDs pushback 120;
	_this setPosWorld [8262.61,293.959,19.6473];
	_this setVectorDirAndUp [[-0.00893134,0.99996,0],[0,0,1]];
};

private _item121 = objNull;
if (_layer203) then {
	_item121 = createVehicle ["Land_FOB_build_New_Wall",[8272.41,296.797,0],[],0,"CAN_COLLIDE"];
	_this = _item121;
	_objects pushback _this;
	_objectIDs pushback 121;
	_this setPosWorld [8272.41,296.797,19.178];
	_this setVectorDirAndUp [[-0.300276,0.953852,0],[0,0,1]];
};

private _item122 = objNull;
if (_layer203) then {
	_item122 = createVehicle ["Land_FOB_build_New_Wall",[8278.5,298.624,0],[],0,"CAN_COLLIDE"];
	_this = _item122;
	_objects pushback _this;
	_objectIDs pushback 122;
	_this setPosWorld [8278.5,298.624,19.1677];
	_this setVectorDirAndUp [[-0.300276,0.953852,0],[0,0,1]];
};

private _item123 = objNull;
if (_layer203) then {
	_item123 = createVehicle ["Land_FOB_build_New_Wall",[8284.59,300.482,0],[],0,"CAN_COLLIDE"];
	_this = _item123;
	_objects pushback _this;
	_objectIDs pushback 123;
	_this setPosWorld [8284.59,300.482,19.1677];
	_this setVectorDirAndUp [[-0.300276,0.953852,0],[0,0,1]];
};

private _item124 = objNull;
if (_layer203) then {
	_item124 = createVehicle ["Land_FOB_build_New_Wall",[8289.64,307.931,0],[],0,"CAN_COLLIDE"];
	_this = _item124;
	_objects pushback _this;
	_objectIDs pushback 124;
	_this setPosWorld [8289.64,307.931,19.1677];
	_this setVectorDirAndUp [[-0.999243,-0.0388906,0],[0,0,1]];
};

private _item125 = objNull;
if (_layer203) then {
	_item125 = createVehicle ["Land_FOB_build_New_Wall",[8289.46,314.335,0],[],0,"CAN_COLLIDE"];
	_this = _item125;
	_objects pushback _this;
	_objectIDs pushback 125;
	_this setPosWorld [8289.46,314.335,19.1677];
	_this setVectorDirAndUp [[-0.999243,-0.0388906,0],[0,0,1]];
};

private _item126 = objNull;
if (_layer203) then {
	_item126 = createVehicle ["Land_FOB_build_New_Wall",[8289.25,320.757,0],[],0,"CAN_COLLIDE"];
	_this = _item126;
	_objects pushback _this;
	_objectIDs pushback 126;
	_this setPosWorld [8289.25,320.757,19.1677];
	_this setVectorDirAndUp [[-0.999243,-0.0388906,0],[0,0,1]];
};

private _item127 = objNull;
if (_layer203) then {
	_item127 = createVehicle ["Land_FOB_build_New_Wall",[8288.98,327.15,0],[],0,"CAN_COLLIDE"];
	_this = _item127;
	_objects pushback _this;
	_objectIDs pushback 127;
	_this setPosWorld [8288.98,327.15,19.1677];
	_this setVectorDirAndUp [[-0.999243,-0.0388906,0],[0,0,1]];
};

private _item128 = objNull;
if (_layer203) then {
	_item128 = createVehicle ["Land_FOB_build_New_Wall",[8288.78,333.514,0],[],0,"CAN_COLLIDE"];
	_this = _item128;
	_objects pushback _this;
	_objectIDs pushback 128;
	_this setPosWorld [8288.78,333.514,19.1677];
	_this setVectorDirAndUp [[-0.999243,-0.0388906,0],[0,0,1]];
};

private _item129 = objNull;
if (_layer203) then {
	_item129 = createVehicle ["Land_FOB_build_New_Wall",[8288.54,339.821,0],[],0,"CAN_COLLIDE"];
	_this = _item129;
	_objects pushback _this;
	_objectIDs pushback 129;
	_this setPosWorld [8288.54,339.821,19.1677];
	_this setVectorDirAndUp [[-0.999243,-0.0388906,0],[0,0,1]];
};

private _item130 = objNull;
if (_layer203) then {
	_item130 = createVehicle ["Land_FOB_build_New_Wall",[8289.3,346.001,0],[],0,"CAN_COLLIDE"];
	_this = _item130;
	_objects pushback _this;
	_objectIDs pushback 130;
	_this setPosWorld [8289.3,346.001,19.1677];
	_this setVectorDirAndUp [[-0.967243,0.253854,0],[0,0,1]];
};

private _item131 = objNull;
if (_layer203) then {
	_item131 = createVehicle ["Land_FOB_build_New_Wall",[8288.61,352.713,0],[],0,"CAN_COLLIDE"];
	_this = _item131;
	_objects pushback _this;
	_objectIDs pushback 131;
	_this setPosWorld [8288.61,352.713,19.1677];
	_this setVectorDirAndUp [[-0.947541,-0.319636,0],[0,0,1]];
};

private _item132 = objNull;
if (_layer203) then {
	_item132 = createVehicle ["Land_FOB_build_New_Wall",[8286.66,358.773,0],[],0,"CAN_COLLIDE"];
	_this = _item132;
	_objects pushback _this;
	_objectIDs pushback 132;
	_this setPosWorld [8286.66,358.773,19.1677];
	_this setVectorDirAndUp [[-0.947541,-0.319636,0],[0,0,1]];
};

private _item133 = objNull;
if (_layer203) then {
	_item133 = createVehicle ["Land_FOB_build_New_Wall",[8284.57,364.833,0],[],0,"CAN_COLLIDE"];
	_this = _item133;
	_objects pushback _this;
	_objectIDs pushback 133;
	_this setPosWorld [8284.57,364.833,19.1677];
	_this setVectorDirAndUp [[-0.947541,-0.319636,0],[0,0,1]];
};

private _item134 = objNull;
if (_layer203) then {
	_item134 = createVehicle ["Land_FOB_build_New_Wall",[8282.65,370.878,0],[],0,"CAN_COLLIDE"];
	_this = _item134;
	_objects pushback _this;
	_objectIDs pushback 134;
	_this setPosWorld [8282.65,370.878,19.1677];
	_this setVectorDirAndUp [[-0.947541,-0.319636,0],[0,0,1]];
};

private _item135 = objNull;
if (_layer203) then {
	_item135 = createVehicle ["Land_FOB_build_New_Wall",[8280.72,376.931,0],[],0,"CAN_COLLIDE"];
	_this = _item135;
	_objects pushback _this;
	_objectIDs pushback 135;
	_this setPosWorld [8280.72,376.931,19.1677];
	_this setVectorDirAndUp [[-0.947541,-0.319636,0],[0,0,1]];
};

private _item136 = objNull;
if (_layer203) then {
	_item136 = createVehicle ["Land_FOB_build_New_Wall",[8278.63,383.006,3.2388],[],0,"CAN_COLLIDE"];
	_this = _item136;
	_objects pushback _this;
	_objectIDs pushback 136;
	_this setPosWorld [8278.63,383.006,22.4065];
	_this setVectorDirAndUp [[-0.947541,-0.319636,0],[0,0,1]];
};

private _item137 = objNull;
if (_layer203) then {
	_item137 = createVehicle ["Land_FOB_build_New_Wall",[8276.72,389.017,0],[],0,"CAN_COLLIDE"];
	_this = _item137;
	_objects pushback _this;
	_objectIDs pushback 137;
	_this setPosWorld [8276.72,389.017,19.1677];
	_this setVectorDirAndUp [[-0.947541,-0.319636,0],[0,0,1]];
};

private _item138 = objNull;
if (_layer203) then {
	_item138 = createVehicle ["Land_FOB_build_New_Wall",[8274.69,395.083,0],[],0,"CAN_COLLIDE"];
	_this = _item138;
	_objects pushback _this;
	_objectIDs pushback 138;
	_this setPosWorld [8274.69,395.083,19.1677];
	_this setVectorDirAndUp [[-0.947541,-0.319636,0],[0,0,1]];
};

private _item139 = objNull;
if (_layer203) then {
	_item139 = createVehicle ["Land_FOB_build_New_Wall",[8272.67,401.127,0],[],0,"CAN_COLLIDE"];
	_this = _item139;
	_objects pushback _this;
	_objectIDs pushback 139;
	_this setPosWorld [8272.67,401.127,19.1677];
	_this setVectorDirAndUp [[-0.947541,-0.319636,0],[0,0,1]];
};

private _item201 = objNull;
if (_layer203) then {
	_item201 = _item200 createUnit ["3as_clone_Engineer",[8235.48,365.431,0],[],0,"CAN_COLLIDE"];
	_item200 selectLeader _item201;
	_this = _item201;
	_objects pushback _this;
	_objectIDs pushback 201;
	_this setPosWorld [8235.48,365.481,17.3414];
	_this setVectorDirAndUp [[-0.255708,0.966754,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["JLTS_CloneArmor",[["FirstAidKit",1],["SmokeShell",1,1],["SmokeShellGreen",1,1],["Chemlight_green",2,1],["HandGrenade",2,1]]],[],[],"3as_Engineer_Helmet","",[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]];
	_this enableSimulation false;
	_this allowdamage false;;
	_this enablestamina false;;
	_this setname "CT - 0704";;
	_this setface "Barklem";;
	_this setspeaker "Male01ENG";;
	_this setpitch 0.97;;
	if !(0 == ([0,1] select (_this getUnitTrait 'engineer'))|| {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor",1,true];
	_this setVariable ['ACE_isEOD',false,true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
};

private _item103 = objNull;
if (_layer203) then {
	_item103 = createVehicle ["VR_Area_01_square_4x4_yellow_F",[8242.78,373.123,0.118414],[],0,"CAN_COLLIDE"];
	_this = _item103;
	_objects pushback _this;
	_objectIDs pushback 103;
	_this setPosWorld [8242.78,373.123,17.459];
	_this setVectorDirAndUp [[-0.297394,0.954755,0],[0,0,1]];
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(0.581,0.441,0.293,1,co)"];
};

private _item140 = objNull;
if (_layer203) then {
	_item140 = createVehicle ["Land_FOB_build_New_Wall",[8265.43,403.068,0],[],0,"CAN_COLLIDE"];
	_this = _item140;
	_objects pushback _this;
	_objectIDs pushback 140;
	_this setPosWorld [8265.43,403.068,19.1677];
	_this setVectorDirAndUp [[0.329462,-0.944169,0],[0,0,1]];
};

private _item141 = objNull;
if (_layer203) then {
	_item141 = createVehicle ["Land_FOB_build_New_Wall",[8259.35,401.029,0],[],0,"CAN_COLLIDE"];
	_this = _item141;
	_objects pushback _this;
	_objectIDs pushback 141;
	_this setPosWorld [8259.35,401.029,19.1677];
	_this setVectorDirAndUp [[0.329462,-0.944169,0],[0,0,1]];
};

private _item142 = objNull;
if (_layer203) then {
	_item142 = createVehicle ["Land_FOB_build_New_Wall",[8253.36,399.006,0],[],0,"CAN_COLLIDE"];
	_this = _item142;
	_objects pushback _this;
	_objectIDs pushback 142;
	_this setPosWorld [8253.36,399.006,19.1677];
	_this setVectorDirAndUp [[0.329462,-0.944169,0],[0,0,1]];
};

private _item143 = objNull;
if (_layer203) then {
	_item143 = createVehicle ["Land_FOB_build_New_Wall",[8247.27,396.971,0],[],0,"CAN_COLLIDE"];
	_this = _item143;
	_objects pushback _this;
	_objectIDs pushback 143;
	_this setPosWorld [8247.27,396.971,19.1677];
	_this setVectorDirAndUp [[0.329462,-0.944169,0],[0,0,1]];
};

private _item144 = objNull;
if (_layer203) then {
	_item144 = createVehicle ["Land_FOB_build_New_Wall",[8220.3,387.415,1.71661e-005],[],0,"CAN_COLLIDE"];
	_this = _item144;
	_objects pushback _this;
	_objectIDs pushback 144;
	_this setPosWorld [8220.3,387.415,19.186];
	_this setVectorDirAndUp [[0.329462,-0.944169,0],[0,0,1]];
};

private _item145 = objNull;
if (_layer203) then {
	_item145 = createVehicle ["Land_FOB_build_New_Wall",[8226.27,389.51,0],[],0,"CAN_COLLIDE"];
	_this = _item145;
	_objects pushback _this;
	_objectIDs pushback 145;
	_this setPosWorld [8226.27,389.51,19.1677];
	_this setVectorDirAndUp [[0.329462,-0.944169,0],[0,0,1]];
};

private _item146 = objNull;
if (_layer203) then {
	_item146 = createVehicle ["Land_FOB_build_New_Wall",[8214.16,380.592,0],[],0,"CAN_COLLIDE"];
	_this = _item146;
	_objects pushback _this;
	_objectIDs pushback 146;
	_this setPosWorld [8214.16,380.592,19.626];
	_this setVectorDirAndUp [[0.948293,0.317395,0],[0,0,1]];
};

private _item147 = objNull;
if (_layer203) then {
	_item147 = createVehicle ["Land_FOB_build_New_Wall",[8216.21,374.456,0],[],0,"CAN_COLLIDE"];
	_this = _item147;
	_objects pushback _this;
	_objectIDs pushback 147;
	_this setPosWorld [8216.21,374.456,19.9294];
	_this setVectorDirAndUp [[0.948293,0.317395,0],[0,0,1]];
};

private _item148 = objNull;
if (_layer203) then {
	_item148 = createVehicle ["Land_FOB_build_New_Wall",[8218.21,368.461,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item148;
	_objects pushback _this;
	_objectIDs pushback 148;
	_this setPosWorld [8218.21,368.461,20.0077];
	_this setVectorDirAndUp [[0.948293,0.317395,0],[0,0,1]];
};

private _item149 = objNull;
if (_layer203) then {
	_item149 = createVehicle ["Land_FOB_build_New_Wall",[8220.18,362.474,0],[],0,"CAN_COLLIDE"];
	_this = _item149;
	_objects pushback _this;
	_objectIDs pushback 149;
	_this setPosWorld [8220.18,362.474,20.0289];
	_this setVectorDirAndUp [[0.948293,0.317395,0],[0,0,1]];
};

private _item150 = objNull;
if (_layer203) then {
	_item150 = createVehicle ["Land_FOB_build_New_Wall",[8222.3,356.475,0],[],0,"CAN_COLLIDE"];
	_this = _item150;
	_objects pushback _this;
	_objectIDs pushback 150;
	_this setPosWorld [8222.3,356.475,19.8497];
	_this setVectorDirAndUp [[0.948293,0.317395,0],[0,0,1]];
};

private _item151 = objNull;
if (_layer203) then {
	_item151 = createVehicle ["Land_FOB_build_New_Wall",[8224.18,350.437,3.8147e-006],[],0,"CAN_COLLIDE"];
	_this = _item151;
	_objects pushback _this;
	_objectIDs pushback 151;
	_this setPosWorld [8224.18,350.437,19.6433];
	_this setVectorDirAndUp [[0.948293,0.317395,0],[0,0,1]];
};

private _item152 = objNull;
if (_layer203) then {
	_item152 = createVehicle ["Land_FOB_build_New_Wall",[8226.17,344.381,0],[],0,"CAN_COLLIDE"];
	_this = _item152;
	_objects pushback _this;
	_objectIDs pushback 152;
	_this setPosWorld [8226.17,344.381,19.4776];
	_this setVectorDirAndUp [[0.948293,0.317395,0],[0,0,1]];
};

private _item153 = objNull;
if (_layer203) then {
	_item153 = createVehicle ["Land_FOB_build_New_Wall",[8228.23,338.379,0],[],0,"CAN_COLLIDE"];
	_this = _item153;
	_objects pushback _this;
	_objectIDs pushback 153;
	_this setPosWorld [8228.23,338.379,19.1818];
	_this setVectorDirAndUp [[0.948293,0.317395,0],[0,0,1]];
};

private _item154 = objNull;
if (_layer203) then {
	_item154 = createVehicle ["Land_FOB_build_New_Wall",[8230.26,332.262,0],[],0,"CAN_COLLIDE"];
	_this = _item154;
	_objects pushback _this;
	_objectIDs pushback 154;
	_this setPosWorld [8230.26,332.262,19.1677];
	_this setVectorDirAndUp [[0.948293,0.317395,0],[0,0,1]];
};

private _item161 = objNull;
if (_layer203) then {
	_item161 = createVehicle ["3AS_HeavyRepeater_Armoured",[8215.07,384.624,9.36865],[],0,"CAN_COLLIDE"];
	_this = _item161;
	_objects pushback _this;
	_objectIDs pushback 161;
	_this setPosWorld [8215.03,384.568,26.7826];
	_this setVectorDirAndUp [[-0.90207,0.43159,0],[0,0,1]];
	[_this,2] call ace_cargo_fnc_setSize;;
};

private _item205 = objNull;
if (_layerRoot) then {
	_item205 = createVehicle ["3as_Landingpad_prop",[8166.52,295.15,0],[],0,"CAN_COLLIDE"];
	_this = _item205;
	_objects pushback _this;
	_objectIDs pushback 205;
	_this setPosWorld [8166.52,295.15,18.8439];
	_this setVectorDirAndUp [[0.193615,-0.981078,0],[0,0,1]];
};

private _item207 = objNull;
if (_layerRoot) then {
	_item207 = createVehicle ["3as_Landingpad_2_prop",[8213.19,311.66,0],[],0,"CAN_COLLIDE"];
	_this = _item207;
	_objects pushback _this;
	_objectIDs pushback 207;
	_this setPosWorld [8213.19,311.66,18.8439];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
};


///////////////////////////////////////////////////////////////////////////////////////////
// Triggers
private _triggers = [];
private _triggerIDs = [];


///////////////////////////////////////////////////////////////////////////////////////////
// Group attributes (applied only once group units exist)
_this = _item200;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	[_this, "Альфа 1-1"] call CBA_fnc_setCallsign;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Waypoints
private _waypoints = [];
private _waypointIDs = [];


///////////////////////////////////////////////////////////////////////////////////////////
// Logics
private _logics = [];
private _logicIDs = [];

private _item199 = objNull;
if (_layer198 && _layer203) then {
	_item199 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[8242.77,373.072,0.165703],[],0,"CAN_COLLIDE"];
	_this = _item199;
	_logics pushback _this;
	_logicIDs pushback 199;
	_this setPosWorld [8242.77,373.072,17.5057];
	_this setVectorDirAndUp [[-0.268573,0.963259,0],[0,0,1]];
	VVS_SpawnGARLand = _this;
	_this setVehicleVarName "VVS_SpawnGARLand";
};

private _item102 = objNull;
if (_layer203) then {
	_item102 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["ModuleRespawnPosition_F",[8232.78,353.064,0.196995],[],0,"CAN_COLLIDE"];
	_this = _item102;
	_logics pushback _this;
	_logicIDs pushback 102;
	_this setPosWorld [8232.78,353.064,17.537];
	_this setVectorDirAndUp [[0.949767,0.312958,0],[0,0,1]];
	_this setVariable ['Name',"Аванпост",true];;
	_this setVariable ['Type',"0",true];;
	_this setVariable ['Side',"1",true];;
	_this setVariable ['Marker',"2",true];;
	_this setVariable ['ShowNotification',"1",true];;
	_this setvariable ["BIS_fnc_initModules_disableAutoActivation",true];
};


///////////////////////////////////////////////////////////////////////////////////////////
// Layers
if (_layer198) then {missionNamespace setVariable ["11_Virtual Vehicle Spawner",[[_item199],[]]];};
if (_layer168) then {missionNamespace setVariable ["11_Base #01",[[_item169,_item170,_item171,_item172,_item173,_item174],[]]];};
if (_layer165) then {missionNamespace setVariable ["11_BASE_SL",[[_item166,_item167,_item169,_item170,_item171,_item172,_item173,_item174,_item175,_item176,_item177,_item178,_item179,_item180,_item181,_item182,_item183,_item184,_item185,_item186,_item187,_item188,_item189,_item190,_item191,_item192,_item193,_item194,_item195,_item196,_item197],[]]];};
if (_layer203) then {missionNamespace setVariable ["11_OutPost",[[_item156,_item157,_item155,_item158,_item159,_item160,_item104,_item105,_item106,_item107,_item110,_item109,_item163,_item164,_item111,_item166,_item167,_item169,_item170,_item171,_item172,_item173,_item174,_item175,_item176,_item177,_item178,_item179,_item180,_item181,_item182,_item183,_item184,_item185,_item186,_item187,_item188,_item189,_item190,_item191,_item192,_item193,_item194,_item195,_item196,_item197,_item112,_item113,_item114,_item115,_item116,_item117,_item118,_item119,_item108,_item162,_item120,_item121,_item122,_item123,_item124,_item125,_item126,_item127,_item128,_item129,_item130,_item131,_item132,_item133,_item134,_item135,_item136,_item137,_item138,_item139,_item199,_item201,_item103,_item140,_item141,_item142,_item143,_item144,_item145,_item146,_item147,_item148,_item149,_item150,_item151,_item152,_item153,_item154,_item161,_item102],[_item202]]];};


///////////////////////////////////////////////////////////////////////////////////////////
// Crews


///////////////////////////////////////////////////////////////////////////////////////////
// Vehicle cargo


///////////////////////////////////////////////////////////////////////////////////////////
// Connections


///////////////////////////////////////////////////////////////////////////////////////////
// Inits (executed only once all entities exist; isNil used to ensure non-scheduled environment)
isNil {
	if !(isnull _item201) then {
		this = _item201;
		call{this disableAI move; this disableAI radioprotocol; this disableAI autocombat; this disableAI weaponaim;
this addAction [
 "Запрос наземной техники",
 VVS_fnc_openVVS,
 [VVS_SpawnGARLand,"Наземная_техника_ВАР"],6, 
 true, 
 true, 
 "", 
 "true",
 5]};
	};
};


///////////////////////////////////////////////////////////////////////////////////////////
// Module activations (only once everything is spawned and connected)
if !(isNull _item102) then {_item102 setvariable ["BIS_fnc_initModules_activate",true];};


///////////////////////////////////////////////////////////////////////////////////////////
[[_objects,_groups,_triggers,_waypoints,_logics,_markers],[_objectIDs,_groupIDs,_triggerIDs,_waypointIDs,_logicIDs,_markerIDs]];

deleteVehicle outpost_spawn;

deleteMarker "marker_9"