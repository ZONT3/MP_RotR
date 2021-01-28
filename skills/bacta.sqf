[
  _this,
  "<t color='#FF1919'>Вы cможете принять бакту через %1м%2с</t>",
  "<t color='#FF1919'>Бакта пуста!</t>",
  "<t color='#19FF19'>Осталось использований: %1</t>",
  {
    player playMove "AinvPknlMstpSlayWrflDnon_medic";
    sleep 5;
    addCamShake [6, 8, 3];
    titleText ["", "WHITE IN", 2];
    player call ace_medical_treatment_fnc_fullHealLocal;
    hintSilent "";
  }
] call ZONT_fnc_consumableSkillBase
