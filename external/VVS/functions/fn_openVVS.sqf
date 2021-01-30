/*
	File: fn_openVVS.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Opens the VVS menu and fills in the blanks.
*/
private["_sp"];
_sp = [_this,3,"",["",[]]] call BIS_fnc_param;
if(typeName _sp == "STRING") then
{
	if(_sp == "") exitWith {closeDialog 0};
	VVS_SP = _sp;
}
	else
{
	if(typeName _sp == "ARRAY") then
	{
		if(count _sp == 0) exitWith {closeDialog 0;};
		VVS_SP = _sp select 0;
		VVS_Cfg = _sp select 1;
	};
};
disableSerialization;
if(!(createDialog "VVS_Menu")) exitWith {}; //Couldn't create the menu