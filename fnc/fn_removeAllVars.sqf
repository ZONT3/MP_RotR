params [["_sign", ""], ["_target", player]];

private _cond = {true};
switch (typeName _sign) do {
  case (typeName ""): { _cond = {_x find _sign == 0} };
  case (typeName configFile): { _cond = {_x find ("skill_" + configName _sign + "_") == 0} };
};

{
  player setVariable [_x, nil]
} foreach (allvariables _target select _cond)
