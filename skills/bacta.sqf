private _cfg = _this;
private _maxUses = getNumber (_cfg >> "maxUses");
private _flag = getArray (_cfg >> "flagItems");
private _cd = getNumber (_cfg >> "cd");

private _var_used = [_cfg, "used"] call ZONT_fnc_skillVar;
private _var_tnu = [_cfg, "tnu"] call ZONT_fnc_skillVar;

private _used = player getVariable [_var_used, 0];
private _timeNextUse = player getVariable [_var_tnu, 0];

if (time < _timeNextUse) exitWith {
  private _secs = floor (_timeNextUse - time);
  hint parseText format ["<t color='#FF1919'>Вы cможете принять бакту через %1м%2с</t>", floor (_secs / 60), _secs % 60];
};

if (_used >= _maxUses - 1) then {
  hint parseText "<t color='#FF1919'>Бакта пуста!</t>";
  player setVariable [_var_used, 0];
  {
    if (_x in items player)
    exitWith { player removeItem _x };
  } forEach _flag;
} else {
  _used = _used + 1;
  hint parseText format ["<t color='#19FF19'>Осталось использований: %1</t>", _maxUses - _used];
  player setVariable [_var_tnu, time + _cd];
  player setVariable [_var_used, _used];
};

player playMove "AinvPknlMstpSlayWrflDnon_medic";
sleep 5;
addCamShake [6, 8, 3];
titleText ["", "WHITE IN", 2];
player call ace_medical_treatment_fnc_fullHealLocal;
hintSilent "";
