// Export of '11.egl_laghisola' by [FL] COM Gru Anez on v0.9

///////////////////////////////////////////////////////////////////////////////////////////
/* Init
params [["_layerWhiteList",[],[[]]],["_layerBlacklist",[],[[]]],["_posCenter",[0,0,0],[[]]],["_dir",0,[0]],["_idBlacklist",[],[[]]]];
private _allWhitelisted = _layerWhiteList isEqualTo [];
private _layerRoot = (_allWhitelisted || {true in _layerWhiteList}) && {!(true in _layerBlackList)};
private _layer3888 = (_allWhitelisted || {"virtual vehicle spawner" in _layerWhiteList}) && {!("virtual vehicle spawner" in _layerBlackList)};
private _layer3752 = (_allWhitelisted || {"base #01" in _layerWhiteList}) && {!("base #01" in _layerBlackList)};
private _layer3840 = (_allWhitelisted || {"base_sl" in _layerWhiteList}) && {!("base_sl" in _layerBlackList)};


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

private _item3890 = grpNull;
if (_layer3888) then {
	_item3890 = createGroup west;
	_this = _item3890;
	_groups pushback _this;
	_groupIDs pushback 3890;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Objects
private _objects = [];
private _objectIDs = [];

private _item3814 = objNull;
if (_layerRoot) then {
	_item3814 = createVehicle ["3AS_HeavyRepeater_Armoured",[6071.03,3541.38,5.16512],[],0,"CAN_COLLIDE"];
	_this = _item3814;
	_objects pushback _this;
	_objectIDs pushback 3814;
	_this setPosWorld [6070.99,3541.32,7.0205];
	_this setVectorDirAndUp [[-0.722962,-0.690259,0.0294562],[0.0140031,0.0279867,0.99951]];
	[_this,2] call ace_cargo_fnc_setSize;;
};

private _item3815 = objNull;
if (_layerRoot) then {
	_item3815 = createVehicle ["3AS_HeavyRepeater_Armoured",[6070.51,3600.22,9.02671],[],0,"CAN_COLLIDE"];
	_this = _item3815;
	_objects pushback _this;
	_objectIDs pushback 3815;
	_this setPosWorld [6070.47,3600.16,9.95981];
	_this setVectorDirAndUp [[-0.717307,0.696756,-0.00148493],[-0.00399675,-0.00198345,0.99999]];
	[_this,2] call ace_cargo_fnc_setSize;;
};

private _item3816 = objNull;
if (_layerRoot) then {
	_item3816 = createVehicle ["3AS_HeavyRepeater_Unarmoured",[6129.85,3600.5,8.98064],[],0,"CAN_COLLIDE"];
	_this = _item3816;
	_objects pushback _this;
	_objectIDs pushback 3816;
	_this setPosWorld [6129.84,3600.51,11.2368];
	_this setVectorDirAndUp [[0.64236,0.766398,0.00286443],[-0.0139947,0.00799266,0.99987]];
	[_this,2] call ace_cargo_fnc_setSize;;
};

private _item3817 = objNull;
if (_layerRoot) then {
	_item3817 = createVehicle ["3AS_HeavyRepeater_Armoured",[6172.07,3586.28,8.92181],[],0,"CAN_COLLIDE"];
	_this = _item3817;
	_objects pushback _this;
	_objectIDs pushback 3817;
	_this setPosWorld [6172.03,3586.22,11.7206];
	_this setVectorDirAndUp [[0.779628,0.625944,0.0193475],[-0.0199947,-0.00599863,0.999782]];
	[_this,2] call ace_cargo_fnc_setSize;;
};

private _item3818 = objNull;
if (_layerRoot) then {
	_item3818 = createVehicle ["3AS_HeavyRepeater_Armoured",[6171.58,3556.58,8.98497],[],0,"CAN_COLLIDE"];
	_this = _item3818;
	_objects pushback _this;
	_objectIDs pushback 3818;
	_this setPosWorld [6171.54,3556.52,11.2863];
	_this setVectorDirAndUp [[0.598816,-0.800666,-0.0188168],[0.00201303,-0.0219902,0.999756]];
	[_this,2] call ace_cargo_fnc_setSize;;
};

private _item3819 = objNull;
if (_layerRoot) then {
	_item3819 = createVehicle ["3AS_HeavyRepeater_Armoured",[6129.66,3541.45,8.93824],[],0,"CAN_COLLIDE"];
	_this = _item3819;
	_objects pushback _this;
	_objectIDs pushback 3819;
	_this setPosWorld [6129.62,3541.39,10.6632];
	_this setVectorDirAndUp [[0.714809,-0.699286,-0.00683207],[-0.0100007,-0.0199903,0.99975]];
	[_this,2] call ace_cargo_fnc_setSize;;
};

private _item3820 = objNull;
if (_layerRoot) then {
	_item3820 = createVehicle ["3as_FOB_Banner_prop",[6108.39,3575.15,-1.19209e-007],[],0,"CAN_COLLIDE"];
	_this = _item3820;
	_objects pushback _this;
	_objectIDs pushback 3820;
	_this setPosWorld [6108.39,3575.15,2.27558];
	_this setVectorDirAndUp [[-0.188675,0.981956,-0.0128396],[-0.0159977,0.00999942,0.999822]];
};

private _item3821 = objNull;
if (_layerRoot) then {
	_item3821 = createVehicle ["3as_FOB_Banner_prop",[6111.03,3574.93,0],[],0,"CAN_COLLIDE"];
	_this = _item3821;
	_objects pushback _this;
	_objectIDs pushback 3821;
	_this setPosWorld [6111.03,3574.93,2.32252];
	_this setVectorDirAndUp [[0.0202449,0.99964,-0.0176282],[-0.0179963,0.0179933,0.999676]];
};

private _item3822 = objNull;
if (_layerRoot) then {
	_item3822 = createVehicle ["3as_FOB_Banner_prop",[6113.58,3575.1,-1.19209e-007],[],0,"CAN_COLLIDE"];
	_this = _item3822;
	_objects pushback _this;
	_objectIDs pushback 3822;
	_this setPosWorld [6113.58,3575.1,2.36592];
	_this setVectorDirAndUp [[0.0578357,0.998242,-0.0129346],[-0.0179963,0.0139967,0.99974]];
};

private _item3823 = objNull;
if (_layerRoot) then {
	_item3823 = createVehicle ["3as_FOB_Banner_prop",[6116.39,3575.08,-1.19209e-007],[],0,"CAN_COLLIDE"];
	_this = _item3823;
	_objects pushback _this;
	_objectIDs pushback 3823;
	_this setPosWorld [6116.39,3575.08,2.41918];
	_this setVectorDirAndUp [[-0.113329,0.993353,-0.02015],[-0.0199977,0.017996,0.999638]];
};

private _item3830 = objNull;
if (_layerRoot) then {
	_item3830 = createVehicle ["3as_Barricade_3_prop",[6057.17,3556.96,2.5034e-006],[],0,"CAN_COLLIDE"];
	_this = _item3830;
	_objects pushback _this;
	_objectIDs pushback 3830;
	_this setPosWorld [6057.17,3556.96,2.0086];
	_this setVectorDirAndUp [[0.994491,-0.103012,-0.0194136],[0.0219955,0.0239879,0.99947]];
};

private _item3831 = objNull;
if (_layerRoot) then {
	_item3831 = createVehicle ["3as_Barricade_2_C_prop",[6060.98,3577.28,0],[],0,"CAN_COLLIDE"];
	_this = _item3831;
	_objects pushback _this;
	_objectIDs pushback 3831;
	_this setPosWorld [6060.98,3577.28,1.39981];
	_this setVectorDirAndUp [[0.789571,-0.613566,-0.0107127],[0.0259917,0.015996,0.999534]];
};

private _item3832 = objNull;
if (_layerRoot) then {
	_item3832 = createVehicle ["3as_shield_5_prop",[6058.72,3573.56,0.123372],[],0,"CAN_COLLIDE"];
	_this = _item3832;
	_objects pushback _this;
	_objectIDs pushback 3832;
	_this setPosWorld [6058.72,3573.56,2.27693];
	_this setVectorDirAndUp [[-0.646234,-0.763139,0],[0,0,1]];
};

private _item3833 = objNull;
if (_layerRoot) then {
	_item3833 = createVehicle ["3as_shield_5_prop",[6058.47,3553.57,2.74181e-006],[],0,"CAN_COLLIDE"];
	_this = _item3833;
	_objects pushback _this;
	_objectIDs pushback 3833;
	_this setPosWorld [6058.47,3553.57,2.61173];
	_this setVectorDirAndUp [[0.797271,-0.603618,-0.00185223],[0.0219955,0.0259853,0.99942]];
};

private _item3775 = objNull;
if (_layer3840) then {
	_item3775 = createVehicle ["3as_large_crate_stack_3_prop",[6123.78,3547.82,0],[],0,"CAN_COLLIDE"];
	_this = _item3775;
	_objects pushback _this;
	_objectIDs pushback 3775;
	_this setPosWorld [6123.78,3547.82,3.7892];
	_this setVectorDirAndUp [[0,0.999928,0.0119949],[-0.0139947,-0.0119937,0.99983]];
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	[_this,0] call JLTS_fnc_jumpAddRecharger;
};

private _item3777 = objNull;
if (_layer3840) then {
	_item3777 = createVehicle ["land_3as_Republic_Container_prop",[6075.03,3548.8,0],[],0,"CAN_COLLIDE"];
	_this = _item3777;
	_objects pushback _this;
	_objectIDs pushback 3777;
	_this setPosWorld [6075.03,3548.8,2.86149];
	_this setVectorDirAndUp [[0,0.999608,-0.0279873],[0.0119996,0.0279853,0.999536]];
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	[_this,0] call JLTS_fnc_jumpAddRecharger;
};

private _item3753 = objNull;
if (_layer3752 && _layer3840) then {
	_item3753 = createVehicle ["3as_prop_fob_modular_wall_ramp",[6070.73,3594.97,-4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item3753;
	_objects pushback _this;
	_objectIDs pushback 3753;
	_this setPosWorld [6070.73,3594.97,3.14334];
	_this setVectorDirAndUp [[-0.991683,-0.128683,-0.00222216],[-0.00198341,-0.00198346,0.999996]];
};

private _item3754 = objNull;
if (_layer3752 && _layer3840) then {
	_item3754 = createVehicle ["3as_prop_fob_modular_wall_ramp",[6076.2,3541.22,1.35899e-005],[],0,"CAN_COLLIDE"];
	_this = _item3754;
	_objects pushback _this;
	_objectIDs pushback 3754;
	_this setPosWorld [6076.2,3541.22,3.99109];
	_this setVectorDirAndUp [[-0.036359,-0.998933,0.0284798],[0.0139988,0.0279867,0.99951]];
};

private _item3755 = objNull;
if (_layer3752 && _layer3840) then {
	_item3755 = createVehicle ["3as_prop_fob_modular_wall_ramp",[6130.98,3546.75,-1.54972e-006],[],0,"CAN_COLLIDE"];
	_this = _item3755;
	_objects pushback _this;
	_objectIDs pushback 3755;
	_this setPosWorld [6130.98,3546.75,4.04435];
	_this setVectorDirAndUp [[0.86439,-0.502821,-0.000127086],[-0.00799344,-0.0139941,0.99987]];
};

private _item3756 = objNull;
if (_layer3752 && _layer3840) then {
	_item3756 = createVehicle ["3as_prop_fob_modular_wall_ramp",[6171.87,3580.82,-1.4782e-005],[],0,"CAN_COLLIDE"];
	_this = _item3756;
	_objects pushback _this;
	_objectIDs pushback 3756;
	_this setPosWorld [6171.87,3580.82,4.95005];
	_this setVectorDirAndUp [[-0.999872,0.000159995,-0.0159969],[-0.0159977,-0.00999908,0.999822]];
};

private _item3757 = objNull;
if (_layer3752 && _layer3840) then {
	_item3757 = createVehicle ["3as_prop_fob_modular_wall_ramp",[6132.08,3595.9,4.52995e-006],[],0,"CAN_COLLIDE"];
	_this = _item3757;
	_objects pushback _this;
	_objectIDs pushback 3757;
	_this setPosWorld [6132.08,3595.9,3.58515];
	_this setVectorDirAndUp [[-0.664551,-0.747232,-0.00415896],[-0.021993,0.0139956,0.99966]];
};

private _item3925 = objNull;
if (_layer3752 && _layer3840) then {
	_item3925 = createVehicle ["3as_prop_fob_modular_wall_ramp",[6171.11,3562.02,-5.96046e-006],[],0,"CAN_COLLIDE"];
	_this = _item3925;
	_objects pushback _this;
	_objectIDs pushback 3925;
	_this setPosWorld [6171.11,3562.02,4.63233];
	_this setVectorDirAndUp [[0.982352,0.187004,0.00374036],[0,-0.0199975,0.9998]];
};

private _item3776 = objNull;
if (_layer3840) then {
	_item3776 = createVehicle ["land_3as_Republic_Container_prop",[6081.16,3548.73,0.0590739],[],0,"CAN_COLLIDE"];
	_this = _item3776;
	_objects pushback _this;
	_objectIDs pushback 3776;
	_this setPosWorld [6081.16,3548.73,2.86105];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	[_this,0] call JLTS_fnc_jumpAddRecharger;
};

private _item3778 = objNull;
if (_layer3840) then {
	_item3778 = createVehicle ["3as_crate5_3",[6084.27,3550.96,0],[],0,"CAN_COLLIDE"];
	_this = _item3778;
	_objects pushback _this;
	_objectIDs pushback 3778;
	_this setPosWorld [6084.27,3550.96,1.85825];
	_this setVectorDirAndUp [[0,0.999758,-0.021993],[0.00201303,0.021993,0.999756]];
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	[_this,0] call JLTS_fnc_jumpAddRecharger;
};

private _item3779 = objNull;
if (_layer3840) then {
	_item3779 = createVehicle ["3as_Big_Box_2_prop",[6078.13,3555.97,1.19209e-007],[],0,"CAN_COLLIDE"];
	_this = _item3779;
	_objects pushback _this;
	_objectIDs pushback 3779;
	_this setPosWorld [6078.13,3555.97,2.67774];
	_this setVectorDirAndUp [[0,0.999662,-0.0259916],[0.0100004,0.0259903,0.999612]];
	[_this,"[[[[],[]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
	[_this,0] call JLTS_fnc_jumpAddRecharger;
};

private _item3780 = objNull;
if (_layer3840) then {
	_item3780 = createVehicle ["3as_Landingpad_R3_prop",[6150.52,3571.98,0],[],0,"CAN_COLLIDE"];
	_this = _item3780;
	_objects pushback _this;
	_objectIDs pushback 3780;
	_this setPosWorld [6150.52,3571.98,3.82942];
	_this setVectorDirAndUp [[0,0.999998,-0.00198341],[-0.0179963,0.00198309,0.999836]];
};

private _item3781 = objNull;
if (_layer3840) then {
	_item3781 = createVehicle ["land_3as_Republic_Forward_Command_prop",[6126.79,3576.41,3.57628e-007],[],0,"CAN_COLLIDE"];
	_this = _item3781;
	_objects pushback _this;
	_objectIDs pushback 3781;
	_this setPosWorld [6126.79,3576.41,4.89298];
	_this setVectorDirAndUp [[-0.560164,0.827688,-0.0338998],[-0.0279916,0.0219871,0.999366]];
};

private _item3785 = objNull;
if (_layer3840) then {
	_item3785 = createVehicle ["3as_prop_fob_modular_wall_watchtower",[6071.17,3541.66,0.0070318],[],0,"CAN_COLLIDE"];
	_this = _item3785;
	_objects pushback _this;
	_objectIDs pushback 3785;
	_this setPosWorld [6071.17,3541.66,7.59623];
	_this setVectorDirAndUp [[0.707048,0.706418,-0.0325106],[0.0159975,0.0299834,0.999422]];
};

private _item3789 = objNull;
if (_layer3840) then {
	_item3789 = createVehicle ["3as_FOB_Building_2_prop",[6113.42,3582.91,2.38419e-007],[],0,"CAN_COLLIDE"];
	_this = _item3789;
	_objects pushback _this;
	_objectIDs pushback 3789;
	_this setPosWorld [6113.42,3582.91,4.09208];
	_this setVectorDirAndUp [[0,0.99995,-0.00999474],[-0.011995,0.00999402,0.999878]];
};

private _item3790 = objNull;
if (_layer3840) then {
	_item3790 = createVehicle ["3as_FOB_Hangar_Prop",[6088.29,3580.71,0.436937],[],0,"CAN_COLLIDE"];
	_this = _item3790;
	_objects pushback _this;
	_objectIDs pushback 3790;
	_this setPosWorld [6088.29,3580.71,5.05809];
	_this setVectorDirAndUp [[0,1,-0.00077204],[0,0.00077204,1]];
};

private _item3791 = objNull;
if (_layer3840) then {
	_item3791 = createVehicle ["3as_prop_fob_modular_wall_watchtower",[6070.65,3599.98,3.57628e-007],[],0,"CAN_COLLIDE"];
	_this = _item3791;
	_objects pushback _this;
	_objectIDs pushback 3791;
	_this setPosWorld [6070.65,3599.98,6.68036];
	_this setVectorDirAndUp [[0.695934,-0.718104,0.00135716],[-0.00399675,-0.00198345,0.99999]];
};

private _item3792 = objNull;
if (_layer3840) then {
	_item3792 = createVehicle ["3as_prop_fob_modular_wall_watchtower",[6129.5,3541.7,3.57628e-007],[],0,"CAN_COLLIDE"];
	_this = _item3792;
	_objects pushback _this;
	_objectIDs pushback 3792;
	_this setPosWorld [6129.5,3541.7,7.47684];
	_this setVectorDirAndUp [[-0.703224,0.710932,0.00718319],[-0.0100007,-0.0199937,0.99975]];
};

private _item3793 = objNull;
if (_layer3840) then {
	_item3793 = createVehicle ["3as_prop_fob_modular_wall_watchtower",[6129.68,3600.3,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item3793;
	_objects pushback _this;
	_objectIDs pushback 3793;
	_this setPosWorld [6129.68,3600.3,7.01091];
	_this setVectorDirAndUp [[-0.708744,-0.705453,-0.00428076],[-0.0139947,0.00799266,0.99987]];
};

private _item3794 = objNull;
if (_layer3840) then {
	_item3794 = createVehicle ["3as_prop_fob_modular_wall_watchtower",[6171.84,3585.94,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item3794;
	_objects pushback _this;
	_objectIDs pushback 3794;
	_this setPosWorld [6171.84,3585.94,8.54026];
	_this setVectorDirAndUp [[-0.731004,-0.682117,-0.018712],[-0.0199947,-0.00599863,0.999782]];
};

private _item3795 = objNull;
if (_layer3840) then {
	_item3795 = createVehicle ["3as_prop_fob_modular_wall_watchtower",[6171.45,3556.81,-4.29153e-006],[],0,"CAN_COLLIDE"];
	_this = _item3795;
	_objects pushback _this;
	_objectIDs pushback 3795;
	_this setPosWorld [6171.45,3556.81,8.05481];
	_this setVectorDirAndUp [[-0.698881,0.715032,0.0171365],[0.00201303,-0.0219926,0.999756]];
};

private _item3801 = objNull;
if (_layer3840) then {
	_item3801 = createVehicle ["3as_MB_Platform_Support_Prop",[6087.65,3586.33,34.4611],[],0,"CAN_COLLIDE"];
	_this = _item3801;
	_objects pushback _this;
	_objectIDs pushback 3801;
	_this setPosWorld [6087.65,3586.33,29.2355];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
};

private _item3802 = objNull;
if (_layer3840) then {
	_item3802 = createVehicle ["3as_FOB_Light_Tall_Prop",[6129.17,3600.35,11.4424],[],0,"CAN_COLLIDE"];
	_this = _item3802;
	_objects pushback _this;
	_objectIDs pushback 3802;
	_this setPosWorld [6129.17,3600.35,18.7185];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
};

private _item3803 = objNull;
if (_layer3840) then {
	_item3803 = createVehicle ["3as_FOB_Light_Tall_Prop",[6070.91,3600.01,11.4956],[],0,"CAN_COLLIDE"];
	_this = _item3803;
	_objects pushback _this;
	_objectIDs pushback 3803;
	_this setPosWorld [6070.91,3600.01,18.4498];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
};

private _item3804 = objNull;
if (_layer3840) then {
	_item3804 = createVehicle ["3as_FOB_Light_Tall_Prop",[6071.37,3542.08,11.4935],[],0,"CAN_COLLIDE"];
	_this = _item3804;
	_objects pushback _this;
	_objectIDs pushback 3804;
	_this setPosWorld [6071.37,3542.08,19.3397];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
};

private _item3805 = objNull;
if (_layer3840) then {
	_item3805 = createVehicle ["3as_FOB_Light_Tall_Prop",[6129.19,3541.98,11.449],[],0,"CAN_COLLIDE"];
	_this = _item3805;
	_objects pushback _this;
	_objectIDs pushback 3805;
	_this setPosWorld [6129.19,3541.98,19.201];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
};

private _item3806 = objNull;
if (_layer3840) then {
	_item3806 = createVehicle ["3as_FOB_Light_Tall_Prop",[6171.58,3557.06,11.4216],[],0,"CAN_COLLIDE"];
	_this = _item3806;
	_objects pushback _this;
	_objectIDs pushback 3806;
	_this setPosWorld [6171.58,3557.06,19.7543];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
};

private _item3807 = objNull;
if (_layer3840) then {
	_item3807 = createVehicle ["3as_FOB_Light_Tall_Prop",[6171.49,3585.7,11.4962],[],0,"CAN_COLLIDE"];
	_this = _item3807;
	_objects pushback _this;
	_objectIDs pushback 3807;
	_this setPosWorld [6171.49,3585.7,20.3008];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
};

private _item3808 = objNull;
if (_layer3840) then {
	_item3808 = createVehicle ["Land_OPTRE_Holotable",[6112.35,3582.12,0.44663],[],0,"CAN_COLLIDE"];
	_this = _item3808;
	_objects pushback _this;
	_objectIDs pushback 3808;
	_this setPosWorld [6112.35,3582.12,2.26789];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
};

private _item3809 = objNull;
if (_layer3840) then {
	_item3809 = createVehicle ["land_Pantalla",[6108.22,3587.73,0.429445],[],0,"CAN_COLLIDE"];
	_this = _item3809;
	_objects pushback _this;
	_objectIDs pushback 3809;
	_this setPosWorld [6108.22,3587.73,3.07689];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
};

private _item3810 = objNull;
if (_layer3840) then {
	_item3810 = createVehicle ["land_Pantalla",[6111.99,3587.72,0.44014],[],0,"CAN_COLLIDE"];
	_this = _item3810;
	_objects pushback _this;
	_objectIDs pushback 3810;
	_this setPosWorld [6111.99,3587.72,3.1223];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
};

private _item3836 = objNull;
if (_layerRoot) then {
	_item3836 = createVehicle ["3as_FOB_Building_1_prop",[6106.75,3548.63,-0.00118732],[],0,"CAN_COLLIDE"];
	_this = _item3836;
	_objects pushback _this;
	_objectIDs pushback 3836;
	_this setPosWorld [6106.75,3548.63,6.15468];
	_this setVectorDirAndUp [[0,0.999998,-0.00198341],[-0.0100007,0.00198331,0.999948]];
};

private _item3847 = objNull;
if (_layerRoot) then {
	_item3847 = createVehicle ["Land_FOB_build_New_Wall",[6132.26,3545.13,-4.88758e-006],[],0,"CAN_COLLIDE"];
	_this = _item3847;
	_objects pushback _this;
	_objectIDs pushback 3847;
	_this setPosWorld [6132.26,3545.13,3.64759];
	_this setVectorDirAndUp [[-0.997533,0.0702042,0],[0,0,1]];
};

private _item3848 = objNull;
if (_layerRoot) then {
	_item3848 = createVehicle ["Land_FOB_build_New_Wall",[6135.68,3548.46,0],[],0,"CAN_COLLIDE"];
	_this = _item3848;
	_objects pushback _this;
	_objectIDs pushback 3848;
	_this setPosWorld [6135.68,3548.46,3.74231];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
};

private _item3849 = objNull;
if (_layerRoot) then {
	_item3849 = createVehicle ["Land_FOB_build_New_Wall",[6142.07,3548.46,-9.29832e-006],[],0,"CAN_COLLIDE"];
	_this = _item3849;
	_objects pushback _this;
	_objectIDs pushback 3849;
	_this setPosWorld [6142.07,3548.46,3.80149];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
};

private _item3850 = objNull;
if (_layerRoot) then {
	_item3850 = createVehicle ["Land_FOB_build_New_Wall",[6148.47,3548.39,1.00136e-005],[],0,"CAN_COLLIDE"];
	_this = _item3850;
	_objects pushback _this;
	_objectIDs pushback 3850;
	_this setPosWorld [6148.47,3548.39,3.85355];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
};

private _item3851 = objNull;
if (_layerRoot) then {
	_item3851 = createVehicle ["Land_FOB_build_New_Wall",[6154.86,3548.35,2.6226e-006],[],0,"CAN_COLLIDE"];
	_this = _item3851;
	_objects pushback _this;
	_objectIDs pushback 3851;
	_this setPosWorld [6154.86,3548.35,3.89391];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
};

private _item3852 = objNull;
if (_layerRoot) then {
	_item3852 = createVehicle ["Land_FOB_build_New_Wall",[6161.21,3548.37,0],[],0,"CAN_COLLIDE"];
	_this = _item3852;
	_objects pushback _this;
	_objectIDs pushback 3852;
	_this setPosWorld [6161.21,3548.37,3.91763];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
};

private _item3853 = objNull;
if (_layerRoot) then {
	_item3853 = createVehicle ["Land_FOB_build_New_Wall",[6167.61,3548.31,-8.58307e-006],[],0,"CAN_COLLIDE"];
	_this = _item3853;
	_objects pushback _this;
	_objectIDs pushback 3853;
	_this setPosWorld [6167.61,3548.31,3.92718];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
};

private _item3854 = objNull;
if (_layerRoot) then {
	_item3854 = createVehicle ["Land_FOB_build_New_Wall",[6171.04,3551.19,9.53674e-007],[],0,"CAN_COLLIDE"];
	_this = _item3854;
	_objects pushback _this;
	_objectIDs pushback 3854;
	_this setPosWorld [6171.04,3551.19,3.99867];
	_this setVectorDirAndUp [[-0.999913,0.0132176,0],[0,0,1]];
};

private _item3857 = objNull;
if (_layerRoot) then {
	_item3857 = createVehicle ["3as_FOB_Banner_prop",[6125.17,3570.55,-1.00136e-005],[],0,"CAN_COLLIDE"];
	_this = _item3857;
	_objects pushback _this;
	_objectIDs pushback 3857;
	_this setPosWorld [6125.17,3570.55,2.70662];
	_this setVectorDirAndUp [[0,0.9998,-0.0199947],[-0.0279894,0.0199869,0.999408]];
};

private _item3861 = objNull;
if (_layerRoot) then {
	_item3861 = createVehicle ["ls_commandPost_republic_blue",[6128.24,3577.41,0.770765],[],0,"CAN_COLLIDE"];
	_this = _item3861;
	_objects pushback _this;
	_objectIDs pushback 3861;
	_this setPosWorld [6128.24,3577.41,3.51691];
	_this setVectorDirAndUp [[0,1,0],[0,0,1]];
};

private _item3862 = objNull;
if (_layerRoot) then {
	_item3862 = createVehicle ["Land_FOB_build_New_Wall",[6172.33,3561.94,0],[],0,"CAN_COLLIDE"];
	_this = _item3862;
	_objects pushback _this;
	_objectIDs pushback 3862;
	_this setPosWorld [6172.33,3561.94,4.24656];
	_this setVectorDirAndUp [[-0.999911,0.0133244,0],[0,0,1]];
};

private _item3863 = objNull;
if (_layerRoot) then {
	_item3863 = createVehicle ["Land_FOB_build_New_Wall",[6172.61,3568.43,-7.62939e-006],[],0,"CAN_COLLIDE"];
	_this = _item3863;
	_objects pushback _this;
	_objectIDs pushback 3863;
	_this setPosWorld [6172.61,3568.43,4.38199];
	_this setVectorDirAndUp [[-0.999911,0.0133244,0],[0,0,1]];
};

private _item3864 = objNull;
if (_layerRoot) then {
	_item3864 = createVehicle ["Land_FOB_build_New_Wall",[6172.78,3574.79,0],[],0,"CAN_COLLIDE"];
	_this = _item3864;
	_objects pushback _this;
	_objectIDs pushback 3864;
	_this setPosWorld [6172.78,3574.79,4.50132];
	_this setVectorDirAndUp [[-0.999911,0.0133244,0],[0,0,1]];
};

private _item3865 = objNull;
if (_layerRoot) then {
	_item3865 = createVehicle ["Land_FOB_build_New_Wall",[6172.92,3581.16,-2.38419e-007],[],0,"CAN_COLLIDE"];
	_this = _item3865;
	_objects pushback _this;
	_objectIDs pushback 3865;
	_this setPosWorld [6172.92,3581.16,4.58595];
	_this setVectorDirAndUp [[-0.999911,0.0133244,0],[0,0,1]];
};

private _item3867 = objNull;
if (_layerRoot) then {
	_item3867 = createVehicle ["Land_FOB_build_New_Wall",[6167.43,3588.29,0],[],0,"CAN_COLLIDE"];
	_this = _item3867;
	_objects pushback _this;
	_objectIDs pushback 3867;
	_this setPosWorld [6167.43,3588.29,4.52024];
	_this setVectorDirAndUp [[-0.275785,-0.961219,0],[0,0,1]];
};

private _item3868 = objNull;
if (_layerRoot) then {
	_item3868 = createVehicle ["Land_FOB_build_New_Wall",[6161.29,3590.12,0],[],0,"CAN_COLLIDE"];
	_this = _item3868;
	_objects pushback _this;
	_objectIDs pushback 3868;
	_this setPosWorld [6161.29,3590.12,4.33814];
	_this setVectorDirAndUp [[-0.275785,-0.961219,0],[0,0,1]];
};

private _item3869 = objNull;
if (_layerRoot) then {
	_item3869 = createVehicle ["Land_FOB_build_New_Wall",[6155.12,3591.94,0],[],0,"CAN_COLLIDE"];
	_this = _item3869;
	_objects pushback _this;
	_objectIDs pushback 3869;
	_this setPosWorld [6155.12,3591.94,4.10476];
	_this setVectorDirAndUp [[-0.275785,-0.961219,0],[0,0,1]];
};

private _item3870 = objNull;
if (_layerRoot) then {
	_item3870 = createVehicle ["Land_FOB_build_New_Wall",[6148.97,3593.68,0],[],0,"CAN_COLLIDE"];
	_this = _item3870;
	_objects pushback _this;
	_objectIDs pushback 3870;
	_this setPosWorld [6148.97,3593.68,3.81599];
	_this setVectorDirAndUp [[-0.275785,-0.961219,0],[0,0,1]];
};

private _item3871 = objNull;
if (_layerRoot) then {
	_item3871 = createVehicle ["Land_FOB_build_New_Wall",[6142.86,3595.48,0],[],0,"CAN_COLLIDE"];
	_this = _item3871;
	_objects pushback _this;
	_objectIDs pushback 3871;
	_this setPosWorld [6142.86,3595.48,3.52536];
	_this setVectorDirAndUp [[-0.275785,-0.961219,0],[0,0,1]];
};

private _item3872 = objNull;
if (_layerRoot) then {
	_item3872 = createVehicle ["Land_FOB_build_New_Wall",[6136.79,3597.23,-1.19209e-007],[],0,"CAN_COLLIDE"];
	_this = _item3872;
	_objects pushback _this;
	_objectIDs pushback 3872;
	_this setPosWorld [6136.79,3597.23,3.29675];
	_this setVectorDirAndUp [[-0.275785,-0.961219,0],[0,0,1]];
};

private _item3874 = objNull;
if (_layerRoot) then {
	_item3874 = createVehicle ["Land_FOB_build_New_Wall",[6131.16,3599.88,1.66893e-006],[],0,"CAN_COLLIDE"];
	_this = _item3874;
	_objects pushback _this;
	_objectIDs pushback 3874;
	_this setPosWorld [6131.16,3599.88,3.12487];
	_this setVectorDirAndUp [[-0.543809,-0.839209,0],[0,0,1]];
};

private _item3875 = objNull;
if (_layerRoot) then {
	_item3875 = createVehicle ["Land_FOB_build_New_Wall",[6124.57,3601.33,-2.5034e-006],[],0,"CAN_COLLIDE"];
	_this = _item3875;
	_objects pushback _this;
	_objectIDs pushback 3875;
	_this setPosWorld [6124.57,3601.33,3.01449];
	_this setVectorDirAndUp [[0.00703869,-0.999975,0],[0,0,1]];
};

private _item3876 = objNull;
if (_layerRoot) then {
	_item3876 = createVehicle ["Land_FOB_build_New_Wall",[6118.2,3601.37,8.34465e-007],[],0,"CAN_COLLIDE"];
	_this = _item3876;
	_objects pushback _this;
	_objectIDs pushback 3876;
	_this setPosWorld [6118.2,3601.37,2.96417];
	_this setVectorDirAndUp [[0.00703869,-0.999975,0],[0,0,1]];
};

private _item3877 = objNull;
if (_layerRoot) then {
	_item3877 = createVehicle ["Land_FOB_build_New_Wall",[6111.8,3601.28,0],[],0,"CAN_COLLIDE"];
	_this = _item3877;
	_objects pushback _this;
	_objectIDs pushback 3877;
	_this setPosWorld [6111.8,3601.28,2.9387];
	_this setVectorDirAndUp [[0.00703869,-0.999975,0],[0,0,1]];
};

private _item3878 = objNull;
if (_layerRoot) then {
	_item3878 = createVehicle ["Land_FOB_build_New_Wall",[6105.46,3601.35,-2.02656e-006],[],0,"CAN_COLLIDE"];
	_this = _item3878;
	_objects pushback _this;
	_objectIDs pushback 3878;
	_this setPosWorld [6105.46,3601.35,2.91949];
	_this setVectorDirAndUp [[0.00703869,-0.999975,0],[0,0,1]];
};

private _item3879 = objNull;
if (_layerRoot) then {
	_item3879 = createVehicle ["Land_FOB_build_New_Wall",[6099.1,3601.41,-3.57628e-007],[],0,"CAN_COLLIDE"];
	_this = _item3879;
	_objects pushback _this;
	_objectIDs pushback 3879;
	_this setPosWorld [6099.1,3601.41,2.91587];
	_this setVectorDirAndUp [[0.00703869,-0.999975,0],[0,0,1]];
};

private _item3880 = objNull;
if (_layerRoot) then {
	_item3880 = createVehicle ["Land_FOB_build_New_Wall",[6092.68,3601.33,-3.57628e-007],[],0,"CAN_COLLIDE"];
	_this = _item3880;
	_objects pushback _this;
	_objectIDs pushback 3880;
	_this setPosWorld [6092.68,3601.33,2.89104];
	_this setVectorDirAndUp [[0.00703869,-0.999975,0],[0,0,1]];
};

private _item3881 = objNull;
if (_layerRoot) then {
	_item3881 = createVehicle ["Land_FOB_build_New_Wall",[6086.37,3601.4,-1.43051e-006],[],0,"CAN_COLLIDE"];
	_this = _item3881;
	_objects pushback _this;
	_objectIDs pushback 3881;
	_this setPosWorld [6086.37,3601.4,2.86315];
	_this setVectorDirAndUp [[0.00703869,-0.999975,0],[0,0,1]];
};

private _item3882 = objNull;
if (_layerRoot) then {
	_item3882 = createVehicle ["Land_FOB_build_New_Wall",[6079.97,3601.37,1.43051e-006],[],0,"CAN_COLLIDE"];
	_this = _item3882;
	_objects pushback _this;
	_objectIDs pushback 3882;
	_this setPosWorld [6079.97,3601.37,2.82019];
	_this setVectorDirAndUp [[0.00703869,-0.999975,0],[0,0,1]];
};

private _item3883 = objNull;
if (_layerRoot) then {
	_item3883 = createVehicle ["Land_FOB_build_New_Wall",[6073.6,3601.33,1.78814e-007],[],0,"CAN_COLLIDE"];
	_this = _item3883;
	_objects pushback _this;
	_objectIDs pushback 3883;
	_this setPosWorld [6073.6,3601.33,2.77474];
	_this setVectorDirAndUp [[0.00703869,-0.999975,0],[0,0,1]];
};

private _item3891 = objNull;
if (_layer3888) then {
	_item3891 = _item3890 createUnit ["3as_clone_Engineer",[6095.87,3554.85,0],[],0,"CAN_COLLIDE"];
	_item3890 selectLeader _item3891;
	_this = _item3891;
	_objects pushback _this;
	_objectIDs pushback 3891;
	_this setPosWorld [6095.87,3554.9,1.40225];
	_this setVectorDirAndUp [[-0.998217,0.0596898,0],[0,0,1]];
	_this setUnitLoadout [[],[],[],["JLTS_CloneArmor",[["FirstAidKit",1],["SmokeShell",1,1],["SmokeShellGreen",1,1],["Chemlight_green",2,1],["HandGrenade",2,1]]],[],[],"3as_Engineer_Helmet","",[],["ItemMap","ItemGPS","","ItemCompass","ItemWatch",""]];
	_this enableSimulation false;
	_this allowdamage false;;
	_this enablestamina false;;
	_this setname "CT - 7279";;
	_this setface "WhiteHead_07";;
	_this setspeaker "Male01ENG";;
	_this setpitch 0.97;;
	if !(0 == ([0,1] select (_this getUnitTrait 'engineer'))|| {0 == -1}) then {_this setVariable ['s', 0, true]};
	_this setVariable ["ace_advanced_fatigue_performanceFactor",1,true];
	_this setVariable ['ACE_isEOD',false,true];
	if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
	if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
};

private _item3892 = objNull;
if (_layerRoot) then {
	_item3892 = createVehicle ["VR_Area_01_square_4x4_yellow_F",[6090.84,3564.18,0.16571],[],0,"CAN_COLLIDE"];
	_this = _item3892;
	_objects pushback _this;
	_objectIDs pushback 3892;
	_this setPosWorld [6090.84,3564.18,1.35778];
	_this setVectorDirAndUp [[-0.999866,0.0163434,0],[0,0,1]];
	_this setObjectTextureGlobal [0,"#(argb,8,8,3)color(0.581,0.441,0.293,1,co)"];
};

private _item3893 = objNull;
if (_layerRoot) then {
	_item3893 = createVehicle ["Land_FOB_build_New_Wall",[6069.49,3595.06,5.96046e-007],[],0,"CAN_COLLIDE"];
	_this = _item3893;
	_objects pushback _this;
	_objectIDs pushback 3893;
	_this setPosWorld [6069.49,3595.06,2.75984];
	_this setVectorDirAndUp [[0.999848,0.0174271,0],[0,0,1]];
};

private _item3894 = objNull;
if (_layerRoot) then {
	_item3894 = createVehicle ["Land_FOB_build_New_Wall",[6069.52,3588.65,-8.34465e-007],[],0,"CAN_COLLIDE"];
	_this = _item3894;
	_objects pushback _this;
	_objectIDs pushback 3894;
	_this setPosWorld [6069.52,3588.65,2.74688];
	_this setVectorDirAndUp [[0.999848,0.0174271,0],[0,0,1]];
};

private _item3895 = objNull;
if (_layerRoot) then {
	_item3895 = createVehicle ["Land_FOB_build_New_Wall",[6069.57,3582.33,-4.64916e-006],[],0,"CAN_COLLIDE"];
	_this = _item3895;
	_objects pushback _this;
	_objectIDs pushback 3895;
	_this setPosWorld [6069.57,3582.33,2.75881];
	_this setVectorDirAndUp [[0.999848,0.0174271,0],[0,0,1]];
};

private _item3896 = objNull;
if (_layerRoot) then {
	_item3896 = createVehicle ["Land_FOB_build_New_Wall",[6069.6,3575.91,-1.43051e-005],[],0,"CAN_COLLIDE"];
	_this = _item3896;
	_objects pushback _this;
	_objectIDs pushback 3896;
	_this setPosWorld [6069.6,3575.91,2.83948];
	_this setVectorDirAndUp [[0.999848,0.0174271,0],[0,0,1]];
};

private _item3912 = objNull;
if (_layerRoot) then {
	_item3912 = createVehicle ["Land_FOB_build_New_Wall",[6069.03,3551.92,-1.19209e-007],[],0,"CAN_COLLIDE"];
	_this = _item3912;
	_objects pushback _this;
	_objectIDs pushback 3912;
	_this setPosWorld [6069.03,3551.92,3.41318];
	_this setVectorDirAndUp [[0.999848,0.0174271,0],[0,0,1]];
};

private _item3913 = objNull;
if (_layerRoot) then {
	_item3913 = createVehicle ["Land_FOB_build_New_Wall",[6069.06,3545.47,2.5034e-006],[],0,"CAN_COLLIDE"];
	_this = _item3913;
	_objects pushback _this;
	_objectIDs pushback 3913;
	_this setPosWorld [6069.06,3545.47,3.59135];
	_this setVectorDirAndUp [[0.999848,0.0174271,0],[0,0,1]];
};

private _item3914 = objNull;
if (_layerRoot) then {
	_item3914 = createVehicle ["Land_FOB_build_New_Wall",[6074.79,3539.34,2.86102e-006],[],0,"CAN_COLLIDE"];
	_this = _item3914;
	_objects pushback _this;
	_objectIDs pushback 3914;
	_this setPosWorld [6074.79,3539.34,3.67946];
	_this setVectorDirAndUp [[-0.0046752,0.999989,0],[0,0,1]];
};

private _item3916 = objNull;
if (_layerRoot) then {
	_item3916 = createVehicle ["Land_FOB_build_New_Wall",[6081.26,3539.36,2.86102e-006],[],0,"CAN_COLLIDE"];
	_this = _item3916;
	_objects pushback _this;
	_objectIDs pushback 3916;
	_this setPosWorld [6081.26,3539.36,3.58658];
	_this setVectorDirAndUp [[-0.0046752,0.999989,0],[0,0,1]];
};

private _item3917 = objNull;
if (_layerRoot) then {
	_item3917 = createVehicle ["Land_FOB_build_New_Wall",[6087.58,3539.39,1.07288e-005],[],0,"CAN_COLLIDE"];
	_this = _item3917;
	_objects pushback _this;
	_objectIDs pushback 3917;
	_this setPosWorld [6087.58,3539.39,3.51804];
	_this setVectorDirAndUp [[-0.0046752,0.999989,0],[0,0,1]];
};

private _item3918 = objNull;
if (_layerRoot) then {
	_item3918 = createVehicle ["Land_FOB_build_New_Wall",[6093.89,3539.39,2.74181e-006],[],0,"CAN_COLLIDE"];
	_this = _item3918;
	_objects pushback _this;
	_objectIDs pushback 3918;
	_this setPosWorld [6093.89,3539.39,3.47167];
	_this setVectorDirAndUp [[-0.0046752,0.999989,0],[0,0,1]];
};

private _item3919 = objNull;
if (_layerRoot) then {
	_item3919 = createVehicle ["Land_FOB_build_New_Wall",[6100.25,3539.52,2.98023e-006],[],0,"CAN_COLLIDE"];
	_this = _item3919;
	_objects pushback _this;
	_objectIDs pushback 3919;
	_this setPosWorld [6100.25,3539.52,3.44002];
	_this setVectorDirAndUp [[-0.0046752,0.999989,0],[0,0,1]];
};

private _item3920 = objNull;
if (_layerRoot) then {
	_item3920 = createVehicle ["Land_FOB_build_New_Wall",[6106.57,3539.42,2.86102e-006],[],0,"CAN_COLLIDE"];
	_this = _item3920;
	_objects pushback _this;
	_objectIDs pushback 3920;
	_this setPosWorld [6106.57,3539.42,3.43847];
	_this setVectorDirAndUp [[-0.0046752,0.999989,0],[0,0,1]];
};

private _item3921 = objNull;
if (_layerRoot) then {
	_item3921 = createVehicle ["Land_FOB_build_New_Wall",[6112.94,3539.42,4.17233e-006],[],0,"CAN_COLLIDE"];
	_this = _item3921;
	_objects pushback _this;
	_objectIDs pushback 3921;
	_this setPosWorld [6112.94,3539.42,3.4489];
	_this setVectorDirAndUp [[-0.0046752,0.999989,0],[0,0,1]];
};

private _item3922 = objNull;
if (_layerRoot) then {
	_item3922 = createVehicle ["Land_FOB_build_New_Wall",[6119.29,3539.49,4.76837e-007],[],0,"CAN_COLLIDE"];
	_this = _item3922;
	_objects pushback _this;
	_objectIDs pushback 3922;
	_this setPosWorld [6119.29,3539.49,3.46773];
	_this setVectorDirAndUp [[-0.0046752,0.999989,0],[0,0,1]];
};

private _item3923 = objNull;
if (_layerRoot) then {
	_item3923 = createVehicle ["Land_FOB_build_New_Wall",[6125.73,3539.51,2.74181e-006],[],0,"CAN_COLLIDE"];
	_this = _item3923;
	_objects pushback _this;
	_objectIDs pushback 3923;
	_this setPosWorld [6125.73,3539.51,3.4912];
	_this setVectorDirAndUp [[-0.0046752,0.999989,0],[0,0,1]];
};

private _item3924 = objNull;
if (_layerRoot) then {
	_item3924 = createVehicle ["3AS_HeavyRepeater_Armoured",[6071.25,3541.46,8.99693],[],0,"CAN_COLLIDE"];
	_this = _item3924;
	_objects pushback _this;
	_objectIDs pushback 3924;
	_this setPosWorld [6071.21,3541.41,10.8463];
	_this setVectorDirAndUp [[-0.692132,-0.72103,0.0327154],[0.0160051,0.0299834,0.999422]];
	[_this,2] call ace_cargo_fnc_setSize;;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Triggers
private _triggers = [];
private _triggerIDs = [];


///////////////////////////////////////////////////////////////////////////////////////////
// Group attributes (applied only once group units exist)
_this = _item3890;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	[_this, "Выдача техники"] call CBA_fnc_setCallsign;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Waypoints
private _waypoints = [];
private _waypointIDs = [];


///////////////////////////////////////////////////////////////////////////////////////////
// Logics
private _logics = [];
private _logicIDs = [];

private _item3889 = objNull;
if (_layer3888) then {
	_item3889 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["Logic",[6090.89,3564.16,0.166],[],0,"CAN_COLLIDE"];
	_this = _item3889;
	_logics pushback _this;
	_logicIDs pushback 3889;
	_this setPosWorld [6090.89,3564.16,1.35832];
	_this setVectorDirAndUp [[-0.999944,0.00330422,-0.0100548],[-0.0100007,0.0159969,0.999822]];
	VVS_SpawnGARLandA = _this;
	_this setVehicleVarName "VVS_SpawnGARLandA";
};

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

private _item3929 = objNull;
if (_layerRoot) then {
	_item3929 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["ModuleRespawnPosition_F",[6106.73,3548.74,0.196992],[],0,"CAN_COLLIDE"];
	_this = _item3929;
	_logics pushback _this;
	_logicIDs pushback 3929;
	_this setPosWorld [6106.73,3548.74,1.7768];
	_this setVectorDirAndUp [[0,0.999998,-0.00198341],[-0.0100007,0.00198331,0.999948]];
	_this setVariable ['Name',"Аванпост",true];;
	_this setVariable ['Type',"0",true];;
	_this setVariable ['Side',"1",true];;
	_this setVariable ['Marker',"2",true];;
	_this setVariable ['ShowNotification',"1",true];;
	_this setvariable ["BIS_fnc_initModules_disableAutoActivation",true];
};


///////////////////////////////////////////////////////////////////////////////////////////
// Layers
if (_layer3888) then {missionNamespace setVariable ["11_Virtual Vehicle Spawner",[[_item3889,_item3891],[]]];};
if (_layer3752) then {missionNamespace setVariable ["11_Base #01",[[_item3753,_item3754,_item3755,_item3756,_item3757,_item3925],[]]];};
if (_layer3840) then {missionNamespace setVariable ["11_BASE_SL",[[_item3775,_item3777,_item3753,_item3754,_item3755,_item3756,_item3757,_item3925,_item3776,_item3778,_item3779,_item3780,_item3781,_item3785,_item3789,_item3790,_item3791,_item3792,_item3793,_item3794,_item3795,_item3801,_item3802,_item3803,_item3804,_item3805,_item3806,_item3807,_item3808,_item3809,_item3810],[]]];};


///////////////////////////////////////////////////////////////////////////////////////////
// Crews


///////////////////////////////////////////////////////////////////////////////////////////
// Vehicle cargo


///////////////////////////////////////////////////////////////////////////////////////////
// Connections


///////////////////////////////////////////////////////////////////////////////////////////
// Inits (executed only once all entities exist; isNil used to ensure non-scheduled environment)
isNil {
	if !(isnull _item3891) then {
		this = _item3891;
		call{this disableAI move; this disableAI radioprotocol; this disableAI autocombat; this disableAI weaponaim;
this addAction [
 "Запрос наземной техники",
 VVS_fnc_openVVS,
 [VVS_SpawnGARLandA,"Наземная_техника_ВАР"],6, 
 true, 
 true, 
 "", 
 "true",
 5]};
	};
};


///////////////////////////////////////////////////////////////////////////////////////////
// Module activations (only once everything is spawned and connected)
if !(isNull _item0) then {_item0 setvariable ["BIS_fnc_initModules_activate",true];};
if !(isNull _item3929) then {_item3929 setvariable ["BIS_fnc_initModules_activate",true];};


///////////////////////////////////////////////////////////////////////////////////////////
[[_objects,_groups,_triggers,_waypoints,_logics,_markers],[_objectIDs,_groupIDs,_triggerIDs,_waypointIDs,_logicIDs,_markerIDs]];
*/


deleteVehicle outpost_spawn;
titletext ["В данный момент основание аванпоста не доступно","plain down"];
deleteMarker "marker_9"