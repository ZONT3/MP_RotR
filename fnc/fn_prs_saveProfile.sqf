private _uid = getPlayerUID _this;
private _load = getUnitLoadout _this;
private _pos = getPosATL _this;
private _name = name _this;
[[_load, _pos, _name, time, _uid], {
  [MPS_BDL_pres, "savePlayer", _this] call ZONT_fnc_bd_customRequest;
}] remoteExec ["bis_fnc_call", 2];
