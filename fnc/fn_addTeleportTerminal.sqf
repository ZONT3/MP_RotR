/*
	File: fn_addTeleportTerminal.sqf
	Author: Daniel "ZONT_" Weizenfeld

	Description:
	Adds terminal to teleporter net

	0: terminal object
	1: tooltip (when selecting teleport TO)
	2: [optional] positionATL to teleport here (from other teleport). Default - [] = this pos X+2
  3: [optional] color of tooltip. Default - #ffffff
  4: [optional] code - condition. Default - {true}

  [this, "Переместиться на базу Наемников", [], "#33c208"] call ZONT_fnc_addTeleportTerminal
*/
params [["_thisTerm", objNull], ["_tooltip", ""], ["_posATL", []], ["_color", "#ffffff"], ["_cond", {true}]];

if (isNil '_thisTerm') exitWith { };
if (isNil 'MPV_teleportTerms') then { MPV_teleportTerms = [] };
if (count _posATL == 0) then { _posATL = ASLToATL (_thisTerm modelToWorldWorld [2,0,0]) };

MPV_teleportTerms pushBack [_thisTerm, _tooltip, _color, _posATL, _cond];

call ZONT_fnc_updTeleportTerminals;
