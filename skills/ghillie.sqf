params ["_thisConfig", "_mode", "_act"];

// на момент "импортирования" этого быдло"кода" я уже был на пределе своих возможностей (бессоницы), что оставил это все так.....

private _ghillieList = [];
if (isArray (_thisConfig >> "ghillieList")) then { _ghillieList = getArray (_thisConfig >> "ghillieList"); };

private _uniform = uniform player;
private _vest = vest player;

private _uniformItems = uniformItems player;
private _vestItems = vestItems player;

private _selected = _ghillieList select _mode;
private _ghillieVest = "SWLB_CEE_ARF_Vest";


if (_mode != -1) then {
    if (_uniform in _ghillieList) then {
        hint parseText format ["<t color='#00FF00'>Масхалат заменен</t>"];
        player forceAddUniform _selected;
		{ player addItemToUniform _x; } forEach _uniformItems;

		/*removeVest player;
		player addVest _ghillieVest;
		{ player addItemToVest _x; } forEach _vestItems;*/

    } else {
        player setVariable["regular_uniform", _uniform];
        player setVariable["regular_vest", _vest];

        hint parseText format ["<t color='#00FF00'>Масхалат накинут</t>"];
        player forceAddUniform _selected;
		{ player addItemToUniform _x; } forEach _uniformItems;

		removeVest player;
		player addVest _ghillieVest;
		{ player addItemToVest _x; } forEach _vestItems;

		player enableAimPrecision false;
		player enableFatigue false;
		player enableStamina false;
		player addAction ["<t color='#00FF00'>Снять маскировку</t>", "[configNull, -1, (_this # 2)] execVM 'skills\ghillie.sqf'", [], 6, false, true,"","true", 0, true];
		while {uniform player in _ghillieList} do {
			player setCustomAimCoef 0;
			sleep 0.05;
		};

    };
} else {
  _a = player getVariable "regular_uniform";
	_v = player getVariable "regular_vest";

    player forceAddUniform _a;
	{ player addItemToUniform _x; } forEach _uniformItems;

	removeVest player;
	player addVest _v;
	{ player addItemToVest _x; } forEach _vestItems;

	player enableAimPrecision true;
  hint parseText format ["<t color='#006600'>Масхалат убран</t>"];
  player removeAction _act;
};
