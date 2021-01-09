params ["_thisConfig", "_mode"];

private _cooldownArmorArc = player getVariable["cooldownArmorArc", 0];
private _timerCD = getNumber (_thisConfig >> "timerCD");
private _timerUpTime = getNumber (_thisConfig >> "timerUpTime");

if (_mode == 2) then { _timerCD = _timerCD * 1.5; _timerUpTime * 4 };

if (_cooldownArmorArc == 0) then {
	addCamShake [12, 12, 4];
	player say3D "ACE_hit_Male06ENG_high_1";
	sleep 2;
  hint parseText format ["<t color='#00FF00'>Режим берсерка активирован!</t>"];
  private _endUptimeArmor = time + _timerUpTime;
  player setVariable["cooldownArmorArc", _timerCD];

  while {time <= _endUptimeArmor && alive player} do {
      sleep 1;
      player call ace_medical_treatment_fnc_fullHealLocal;
  };

  hint parseText format ["<t color='#FFAAAA'>Режим берсерка окончен</t>"];

  for [{private _i = _timerCD}, {_i >= 0 }, {_i = _i - 1}] do {
      sleep 1;
      player setVariable["cooldownArmorArc", _i];
  };

} else {
    if (_cooldownArmorArc == _timerCD) then {
         hint parseText format ["<t color='#00FF00'>Куда ещё круче то?!</t>"];
    } else {
        hint parseText format ["<t color='#885A33'>Вы устали. Отдохните ещё %1 секунд</t>", _cooldownArmorArc];
    };
}
