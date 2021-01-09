params ["_thisConfig"];

private _cooldownArmorRC = player getVariable["cooldownArmorRC", 0];
private _timerCD = getNumber (_thisConfig >> "timerCD");
private _timerUpTime = getNumber (_thisConfig >> "timerUpTime");

if (_cooldownArmorRC == 0) then {
	hint parseText format ["<t color='#AAAAAA'>Броня активирована</t>"];
  private _endUptimeArmor = time + _timerUpTime;
  player setVariable ["cooldownArmorRC", _timerCD];

  while {time <= _endUptimeArmor && alive player} do {
      sleep 2.5;
      player call ace_medical_treatment_fnc_fullHealLocal;
  };

	hint parseText format ["<t color='#AA2311'>Батарея разрядилась</t>"];

  for [{private _i = _timerCD}, {_i >= 0 }, {_i = _i - 1}] do {
      sleep 1;
      player setVariable["cooldownArmorRC", _i];
  };

} else {
    if (_cooldownArmorRC == _timerCD) then {
         hint parseText format ["<t color='#AA2311'>Броня уже активирована</t>"];
    } else {
        hint parseText format ["<t color='#AA2311'>Батарея зарядится через %1</t>", _cooldownArmorRC];
    };
}
