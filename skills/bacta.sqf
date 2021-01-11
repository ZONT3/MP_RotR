private _cfg = missionConfigFile >> "CfgSkills" >> "bacta";
private _maxUses = getNumber (_cfg >> "maxUses");
private _cd = getNumber (_cfg >> "cd");

private _used = player getVariable ["s_b_used", 0];

private _timeNextUse = player getVariable ["s_b_tnu", 0];

if (time < _timeNextUse) exitWith {
  private _secs = floor (_timeNextUse - time);
  hint parseText format ["<t color='#FF1919'>Вы cможете принять бакту через %1м%2с</t>", floor (_secs / 60), _secs % 60];
};

if (_used >= _maxUses - 1) then {
  hint parseText "<t color='#FF1919'>Бакта пуста!</t>";
  player setVariable ["s_b_used", 0];
  player removeItem "ACE_personalAidKit";
} else {
  _used = _used + 1;
  hint parseText format ["<t color='#19FF19'>Осталось использований: %1</t>", _maxUses - _used];
  player setVariable ["s_b_tnu", time + _cd];
  player setVariable ["s_b_used", _used];
};

player playMove "AinvPknlMstpSlayWrflDnon_medic";
sleep 5;
addCamShake [6, 8, 3];
titleText ["", "WHITE IN", 2];
player call ace_medical_treatment_fnc_fullHealLocal;
hintSilent "";
