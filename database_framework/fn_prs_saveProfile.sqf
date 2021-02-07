if not (missionNamespace getVariable ["MPC_canSave", false]) exitWith { false };

if not (assert !isNil "MPC_chrID") exitWith {};

[[_this, MPC_chrID], {
  params ["_player", "_id"];
  private _load = getUnitLoadout _player;
  private _pos = getPosATL _player;
  [MPS_BDL_pres, "savePlayer", [_load, _pos, time, _id]] call ZONT_fnc_bd_customRequest;
}] remoteExec ["bis_fnc_call", 2];
true
