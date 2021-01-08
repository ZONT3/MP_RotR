params ["_player", "_didJIP"];
private _curators = call ZONT_fnc_retrieveCurators;
if not ((getPlayerUID _player) in _curators) exitWith { };
_player call ZONT_fnc_giveZeus;
