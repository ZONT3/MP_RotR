params ["_player"];
if (!isServer) exitWith {};
private _uid = getPlayerUID _player;
if (_uid == "") exitWith {};

private _var = format ["MPS_C_%1", _uid];
private _old = objNull;
private _curator = objNull;
if (!isNil format ["MPS_C_%1", _uid]) then {
  _old = (missionNamespace getVariable _var) select 1;
  unassignCurator _old;
};
if !(_old isKindOf "ModuleCurator_F") then {
  if (!isNil {_old} || !isNull _old) then { deleteVehicle _old };
  if (isNil 'MP_LOGGRP') then { MP_LOGGRP = createGroup sideLogic; publicVariable 'MP_LOGGRP' };
  _curator = MP_LOGGRP createUnit ["ModuleCurator_F", [0, 90, 90], [], 0.5, "NONE"];
  unassignCurator _curator;
  private _addons = curatorAddons MP_zuus;
  _curator addCuratorAddons _addons;
  _curator setcuratorcoef["place", 0];
  _curator setcuratorcoef["delete", 0];
} else { _curator = _old };

if (!isNil "_curator" && !isNull _curator) then {
  _null = [_this, _curator, [_var, [_player, _curator], false]] spawn {
    params ["_player", "_curator", "_setvar"];
    sleep 0.4;
    _player assignCurator _curator;
    missionNamespace setVariable _setvar;
    ["Вы назначены на роль куратора игры"] remoteExec ["systemChat", _player];
  }
} else {
  diag_log format ["ZONT_fnc_giveZeus ERROR: _curator is null or nil for %1", _player];
};
