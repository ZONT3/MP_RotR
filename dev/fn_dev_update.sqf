if (!isServer) exitWith {};

{
  private _fnc = toArray _x;
  _fnc deleteRange [0, 3];
  _fnc deleteRange [count _fnc - 4, 4];
  _fnc = "ZONT_fnc_" + toString _fnc;
  missionNamespace setVariable [_fnc, nil, true];
  missionNamespace setVariable [_fnc, compile preprocessFileLineNumbers ("dev\" + _x), true]
} foreach _this
