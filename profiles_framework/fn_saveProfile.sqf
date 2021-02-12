if not (missionNamespace getVariable ["MPC_canSave", false]) exitWith { false };

if not (assert !isNil "ZPR_ID")    exitWith { false };
if not (assert !isNil "ZPR_roles") exitWith { false };

[[_this, ZPR_ID, ZPR_roles], {
  params ["_player", "_id", "_roles"];
  private _load = getUnitLoadout _player;
  private _pos = getPosATL _player;
  [MPS_BDL_pres, "savePlayer", [_load, _pos, time, _roles, _id]] call ZONT_fnc_bd_customRequest;
}] remoteExec ["bis_fnc_call", 2];
true
