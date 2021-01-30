/*
	File: fn_spawnVehicle.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Spawns the selected vehicle, if a vehicle is already on the spawn point
	then it deletes the vehicle from the spawn point.
*/
disableSerialization;
private["_pos","_direction","_className","_displayName","_spCheck","_cfgInfo"];
if(lnbCurSelRow 38101 == -1) exitWith {hint "Не выбрана техника для спавна!"};

_className = lnbData[38101,[(lnbCurSelRow 38101),0]];
_displayName = lnbData[38101,[(lnbCurSelRow 38101),1]];
_pos = getPosATL VVS_SP;
_direction = direction VVS_SP;

//Make sure the marker exists in a way.
if(isNil "_pos") exitWith {hint "Точка спавна вообще есть?";};

//Check to make sure the spawn point doesn't have a vehicle on it, if it does then delete it.
_spCheck = nearestObjects[_pos,["landVehicle","Air","Ship"],12];

if(!isNil "_spCheck") then { 
	{ deleteVehicle _x; sleep 0.2; } forEach _spCheck;	
};

_cfgInfo = [_className] call VVS_fnc_cfgInfo;

_positionSpawn = [_pos select 0, _pos select 1, (_pos select 2) + 10000];
_position = [_pos select 0, _pos select 1, (_pos select 2) + 0.5];

_vehicle = _className createVehicle _positionSpawn;
while {isDamageAllowed _vehicle} do {
    _vehicle allowDamage false;
};
_vehicle setPosATL _position; //Make sure it gets set onto the position.
_vehicle setDir _direction; //Set the vehicles direction the same as the marker.

if((_cfgInfo select 4) == "Autonomous") then
{
	createVehicleCrew _vehicle;
};

if(VVS_Checkbox) then
{
	clearWeaponCargoGlobal _vehicle;
	clearMagazineCargoGlobal _vehicle;
	clearItemCargoGlobal _vehicle;
};

hint format["Вы заспавнили %1",_displayName];
sleep 3;
_vehicle allowDamage true;
closeDialog 0;
