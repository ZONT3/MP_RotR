[
  _this,
  "<t color='#FF1919'>Опастность перегрева!<br/>%1м%2с до номинальной температуры</t>",
  "<t color='#19FF19'>Инжектор Использован!</t>",
  "<t color='#19FF19'>Осталось использований: %1</t>",
  {
    private _jp = unitBackpack player;
    private _jps = getArray (_cfg >> "jumppacks");
    private _time = time + getNumber (_cfg >> "time");
    private _eps = getNumber (_cfg >> "eps");
    while { time < _time and alive player and backpack player in _jps } do {
  		_jp setVariable ["RD501_jumppack_energy",
          (_jp getVariable["RD501_jumppack_energy", 0]) + _eps ];
      sleep 1;
    };
    if not (backpack player in _jps) exitWith {
      hint parseText "<t color='#d6c01c'>Инжектор отсоединен</t>";
    };
    if (time >= _time) exitWith {
      hint parseText "<t color='#FF1919'>Опастность перегрева!</t><br/>Скорость выработки топлива восстановлена.";
    };
  }, {
    private _jps = getArray (_cfg >> "jumppacks");
    if not (backpack player in _jps) exitWith {
      hint parseText "<t color='#d6c01c'>Несовместимый джетпак, либо он вообще у тебя отсутствует.</t>";
      false
    }; true
  }
] call ZONT_fnc_consumableSkillBase
