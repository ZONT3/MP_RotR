[_this, {
  private _uid = getPlayerUID _this;
  private _load = getUnitLoadout _this;
  private _pos = getPosATL _this;
  private _name = name _this;
  [MPS_BDL_pres, "savePlayer", [_load, _pos, _name, time, _uid]] call ZONT_fnc_bd_customRequest;
}] remoteExec ["bis_fnc_call", 2];
