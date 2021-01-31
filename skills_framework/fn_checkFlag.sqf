params [["_flagPtr", [], [[]]], ["_reqInd", []], ["_chkAssigned", true]];

private _flag = +(_flagPtr);

private _reqCheck = true;
if (count _reqInd > 0) then {
  {
    private _xx = _flag select _x;
    _flag deleteAt _x;
    if not (
      _xx in items player or {
      uniform  player == _xx or
      backpack player == _xx or
      headgear player == _xx or
      vest     player == _xx }
    ) exitWith {_reqCheck = false};
  } forEach _reqInd;
};

if (not _reqCheck) exitWith {false};

_reqCheck =                uniform  player in _flag ;
_reqCheck = _reqCheck or { backpack player in _flag};
_reqCheck = _reqCheck or { headgear player in _flag};
_reqCheck = _reqCheck or { vest     player in _flag};
if (not _reqCheck) then {
  {
    if (_x in items player) exitWith {_reqCheck = true};
    if (_chkAssigned and {_x in assignedItems player})
    exitWith {_reqCheck = true};
  } forEach _flag;
};
_reqCheck
