private _fn_getRange = {
  private _arr = _this splitString " ,-'"":;/[](){}\\";
  _arr = _arr apply { parseNumber _x };
  while { _arr find 0 >= 0 } do { _arr deleteAt ( _arr find 0 ) };
  if (count _arr == 1) then { _arr = [0] + _arr };
  if (count _arr != 2) exitWith { [0,100] };
  _arr sort true;
  _arr
};

call {
  [ "me",
  [[ ], // args
    {   // condition
      params ["_target", "_caller", "_inpt", "_args", "_res"];
      _target == _caller or {
        (_target distance _caller < 51)
      };
    },
    {  // code
      params ["_target", "_caller", "_inpt", "_args", "_res"];
      systemChat format ["** %1 %2 **", name _caller, _inpt];
    }]
  ] call ZONT_fnc_addChatCommand;

  [ "it",
  [[ ], // args
    {   // condition
      params ["_target", "_caller", "_inpt", "_args", "_res"];
      _target == _caller or {
        (_target distance _caller < 51)
      };
    },
    {  // code
      params ["_target", "_caller", "_inpt", "_args", "_res"];
      systemChat format ["** %1 **", _inpt];
    }]
  ] call ZONT_fnc_addChatCommand;

  [ "try",
  [ [], // args
    {   // condition
      params ["_target", "_caller", "_inpt", "_args", "_res"];
      _target == _caller or {
        (_target distance _caller < 51)
      };
    },
    {  // code
      params ["_target", "_caller", "_inpt", "_args", "_res"];
      systemChat format ["** %1 %2 | %3 **", name _caller, _inpt, _res];
    },
    { selectRandom ["Успешно", "Неудачно"] }]
  ] call ZONT_fnc_addChatCommand;

  [ "roll",
  [ _fn_getRange, // args
    {   // condition
      params ["_target", "_caller", "_inpt", "_args", "_res"];
      _target == _caller or {
        (_target distance _caller < 51)
      };
    },{  // code
      params ["_target", "_caller", "_inpt", "_args", "_res"];
      _res params ["_from", "_to", "_rs"];
      systemChat format ["** [%2-%3] Удача блогосклонна к %1 на %4 **",
              name _caller, _from, _to - 1, _rs ];
    },{  // pre-call
      params ["_caller", "_inpt", "_args"];
      (_inpt call _args) params ["_from", "_to"];
       _to = _to + 1;
      [_from, _to, floor (random (_to - _from)) + _from]
    }]
  ] call ZONT_fnc_addChatCommand;

  [ "role",
  [ [], // args
    {   // condition
      false
    },{  // code
    },{  // pre-call
      params ["_caller", "_inpt", "_args"];
      private _ia = _input splitString " ";
      if (count _ia == 0) exitWith { systemChat "Доступные варианты: #role add, #role rm" };
      switch (_ia select 0) do {
        case ("set");
        case ("add"): {
          
        };
        case ("rm");
        case ("del"): {

        };
      };
    }]
  ] call ZONT_fnc_addChatCommand;



};
