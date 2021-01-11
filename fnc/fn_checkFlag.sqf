params [["_flag", []], ["_reqInd", []]];

private _reqCheck = true;
if (count _reqInd > 0) then {
  {
    private _xx = _flag select _x;
    if not (_xx in items player) exitWith {_reqCheck = false};
  } forEach _reqInd;
};

if (not _reqCheck) exitWith {false};

_reqCheck = false;
_reqCheck =                uniform  player in _flag ;
_reqCheck = _reqCheck or { backpack player in _flag};
_reqCheck = _reqCheck or { headgear player in _flag};
_reqCheck = _reqCheck or { vest     player in _flag};
if (not _reqCheck) then {
  {
    if (_x in items player) exitWith {_reqCheck = true};
  } forEach _flag;
};
_reqCheck
