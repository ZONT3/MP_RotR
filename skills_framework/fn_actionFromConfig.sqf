if (typeName _this != typeName configNull) exitWith {nil};
if (!isText (_this >> "tooltip")) exitWith {nil};

[
  [_this, "tooltip", ""] call BIS_fnc_returnConfigEntry,
  [_this, "script", "hint 'Not Implemented'"] call BIS_fnc_returnConfigEntry,
  [_this, "arguments", "[]"] call BIS_fnc_returnConfigEntry,
  [_this, "priority", 1.5] call BIS_fnc_returnConfigEntry,
  [_this, "showWindow", "false"] call BIS_fnc_returnConfigEntry == "true",
  [_this, "hideOnUse", "true"] call BIS_fnc_returnConfigEntry == "true",
  [_this, "shortcut", ""] call BIS_fnc_returnConfigEntry,
  [_this, "condition", "true"] call BIS_fnc_returnConfigEntry,
  [_this, "radius", 5] call BIS_fnc_returnConfigEntry,
  [_this, "unconscious", "false"] call BIS_fnc_returnConfigEntry == "true",
  [_this, "selection", ""] call BIS_fnc_returnConfigEntry,
  [_this, "memoryPoint", ""] call BIS_fnc_returnConfigEntry
]
