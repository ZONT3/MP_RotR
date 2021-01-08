/*
	Author: ZONT_

	Description:
	Adds chat command

  Params:
    0: STRING: Command name
    1: ARRAY : effect of command:
        0: ANY : Arguments, provided to both next CODE params
        1: CODE: condition runs on caller machine, return true to execute the next param on target
        2: CODE: code to be executed on each machine, thet returned true in previous param
          Params are the same for 1 and 2:
            0: OBJECT: Target unit
            1: OBJECT: Caller unit (player)
            2: STRING: Input string from chat
            3: ANY   : Arguments from 0 param
            4: ANY   : Result from parent's 3rd param
          params ["_target", "_caller", "_inpt", "_args", "_res"];
        3: CODE: code to be executed on caller machine, provides its result to global script (4th param)
          params ["_caller", "_inpt", "_args"];
*/

params [["_comm", "", [""]], ["_effect", [], [[]]]];


private _code = {
  _thisArgs params ["_args", "_cond", "_code", "_pre"];
  private _newArgs = [player, _this select 0, _args];
  _newArgs pushBack ( _newArgs call _pre );
  {
    if (([_x] + _newArgs) call _cond) then {
      [[_x] + _newArgs, _code] remoteExec ["BIS_fnc_call", _x];
    }
  } forEach allPlayers;
};

if (count _effect == 3) then { _effect pushBack {nil} };

[
  _comm,
  _code,
  "all",
  _effect
] call CBA_fnc_registerChatCommand;
