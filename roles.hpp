class CfgRoles {
  class Zeus { id = 1; };
  class Shadow { id = 2; };
  class ARC { id = 3; };
  class ARF { id = 4; };
  class RC { id = 5; };
  class c99 { id = 6; };
};

#define FLAG_RC  "SWLB_clone_commando_uniform_k1","RCClone","SWLB_CEE_Gregor_Uniform","SWLA_416th_Bridger_Uniform","SWLA_416th_Commando_Uniform","SWLB_AiwhaSarge_Uniform","SWLB_AiwhaDikut_Uniform","SWLB_AiwhaTyto_Uniform","SWLB_AiwhaZag_Uniform","SWLB_Bravo2_Uniform","SWLB_Bravo3_Uniform","SWLB_Bravo4_Uniform","SWLB_BravoRam_Uniform","SWLB_DeltaFixer_Uniform","SWLB_DeltaBoss_Uniform","SWLB_DeltaScorch_Uniform","SWLB_DeltaSev_Uniform","SWLA_Dev_Corvus_Uniform","SWLA_Dev_Dutch_Uniform","SWLA_Dev_Nerf_Uniform","SWLB_MPGunner_Uniform","SWLB_CEE_Hodasal_Squad_Jungle_Commando_Uniform","SWLB_MPMarksman_Uniform","SWLB_Omega_Uniform",\
"SWLB_MPRecon_Uniform","SWLB_MPStealth_Uniform","SWLB_YayaxCov_Uniform","SWLB_YayaxDev_Uniform","SWLB_YayaxJind_Uniform","SWLB_YayaxYover_Uniform","SLDT_RCBase","SLDT_RC_Delta_Boss","SLDT_RC_Delta_Fixer","SLDT_RC_Delta_Scorch","SLDT_RC_Delta_Sev","SLDT_RC_SpectrS","SLDT_RC_SpectrL","SLDT_RC_SpectrM","SLDT_RC_SpectrG","SLDT_RC_CG","SLDT_RCBase_gud","SLDT_RCBase_AiawaRed","SLDT_RCBase_AiawaBlack","SLDT_RCBase_AiawaBlue","SLDT_RCBase_AiawaGreen"

class CfgSkills {
  class cloak {
    roleRequired = false;
    roles[] = {};
    condition = "true";
    flagItems[] = {
      "SWOP_CloneShadowtrooper_Sniper_F_CombatUniform","CloneShadowBastint","CloneShadow",
      "SWOP_CloneShadowtrooper_F_CombatUniform","Shadow_Uniform","JLTS_CloneArmor_Shadow",
      "JLTS_CloneArmorGrenadier_Shadow","JLTS_CloneArmor_Shadow_medic","Soulless_Uniform",
      "Shadow_v1_Uniform","SLDT_CloneShadowKrmine","SLDT_CloneShadow","SLDT_CloneShadowBastint"
    };
    init = "player setVariable ['s_clk_type', 'shadow']; [_thisConfig, _thisFlag, 1] execVM 'skills\cloak.sqf'";
    generalCondition = "(vehicle player == player) && (uniform player in _thisFlag)";
    class action1 {
      tooltip = "<t color='#00FF00'>Включить маскировку</t>";
      script = "[_thisConfig, _thisFlag, 2] execVM 'skills\cloak.sqf'";
      priority = 7;
      condition = "!(player getVariable ['s_clk_on', false]) and {(vehicle player == player) && [_thisFlag] call ZONT_fnc_checkFlag}";
      params = "[]";
    };
    class action2 {
      tooltip = "<t color='#FF0000'>Выключить маскировку</t>";
      script = "[_thisConfig, _thisFlag, 3] execVM 'skills\cloak.sqf'";
      priority = 6;
      condition = "(player getVariable ['s_clk_on', false]) && {(vehicle player == player) && [_thisFlag] call ZONT_fnc_checkFlag}";
      params = "[]";
    };
    threshold = 900;
    maxEnergy = 1800;
    rateOn = -1;
    rateOff = 5;
    breakCost = 10;
  };
  class jedi_cloak : cloak {
    flagItems[] = {"SLSW_Jedi_Shadow_Crystal"};
    init = "player setVariable ['s_clk_type', 'jedi']; [_thisConfig, _thisFlag, 1] execVM 'skills\cloak.sqf'";
    generalCondition = "(vehicle player == player) && [_thisFlag] call ZONT_fnc_checkFlag";
    threshold = 300;
    maxEnergy = 600;
    rateOn= -1;
    rateOff = 3;
    breakCost = 20;
  };
  class berserk {
    roleRequired = false;
    roles[] = {};
    condition = "true";
    flagItems[] = { "SLDT_CloneBackpack_Officer_Spectrum", "JLTS_drugs_bacta_red", "SLDT_Spectrum_Eng", "SLDT_Spectrum_Greenader","SLDT_Spectrum_Leader","SLDT_Spectrum_Medic","SLDT_Spectrum_MachineGunner","SLDT_Spectrum_Pilot","SLDT_Spectrum_Sniper" };
    init = "";
    class action1 {
      tooltip = "<t color='#00FF00'>Впасть в ярость</t>";
      script = "[_thisConfig, 1] execVM 'skills\berserk.sqf'";
      priority = 7;
      condition = "(vehicle player == player) && (backpack player in ['RD501_JLTS_Clone_jumppack_hq_1']) && ('JLTS_drugs_bacta_red' in (items player))";
      params = "[]";
    };
    class action2 {
      tooltip = "<t color='#00FF00'>Впасть в ярость</t>";
      script = "[_thisConfig, 2] execVM 'skills\berserk.sqf'";
      priority = 6;
      condition = "(vehicle player == player) && [_thisFlag, [1]] call ZONT_fnc_checkFlag";
      params = "[]";
    };
    timerCD = 600;
    timerUpTime = 60;
  };
  class ghillie {
    roleRequired = false;
    roles[] = {};
    condition = "true";
    flagItems[] = { "RD501_JLTS_Clone_jumppack_mc_hq_2", "JLTS_drugs_bacta_red", "ToolKit", "ACE_UAVBattery", "ACE_Banana", "jarf_jpack", "jarf_jpack2", "jarf_jpack3", "jtarf_jetpack1", "jtarf_jetpack2", "jtarf_jetpack3" };
    init = "";
    class action1 {
      tooltip = "<t color='#00FF00'>Накинуть масхалат: джунгли</t>";
      script = "[_thisConfig, 3, (_this # 2)] execVM 'skills\ghillie.sqf'";
      priority = 7;
      condition = "(vehicle player == player) && [_thisFlag, [1]] call ZONT_fnc_checkFlag";
      params = "[]";
    };
    class action2 : action1 {
      tooltip = "<t color='#00FF00'>Накинуть масхалат: болота</t>";
      script = "[_thisConfig, 0, (_this # 2)] execVM 'skills\ghillie.sqf'";
    };
    class action3 : action1 {
      tooltip = "<t color='#00FF00'>Накинуть масхалат: полупустыня</t>";
      script = "[_thisConfig, 1, (_this # 2)] execVM 'skills\ghillie.sqf'";
    };
    class action4 : action1 {
      tooltip = "<t color='#00FF00'>Накинуть масхалат: пустыня</t>";
      script = "[_thisConfig, 2, (_this # 2)] execVM 'skills\ghillie.sqf'";
    };
    ghillieList[] = {"U_O_FullGhillie_lsh", "U_O_FullGhillie_sard", "U_O_FullGhillie_ard", "U_O_T_FullGhillie_tna_F"};
  };
  class armor {
    roleRequired = false;
    roles[] = {};
    condition = "true";
    flagItems[] = {FLAG_RC};
    init = "";
    class action1 {
      tooltip = "<t color='#00FF00'>Усилить броню</t>";
      script = "[_thisConfig] execVM 'skills\armor.sqf'";
      priority = 6;
      condition = "(vehicle player == player) && [_thisFlag] call ZONT_fnc_checkFlag";
      params = "[]";
    };
    timerCD = 180;
    timerUpTime = 60;
  };
  class impulse {
    roleRequired = false;
    roles[] = {};
    condition = "true";
    flagItems[] = { "SWLB_CEE_74th_Engineer_Helmet", "ls_sob_tech_helmet" };
    init = "";
    class action1 {
      tooltip = "<t color='#2299EE'>Impulse</t>";
      script = "[] execVM 'skills\impulse.sqf'";
      priority = 6;
      condition = "(vehicle player != player) && (driver (vehicle player) == player) && [_thisFlag] call ZONT_fnc_checkFlag";
      params = "[]";
    };
  };
  class bacta {
    roleRequired = false;
    roles[] = {};
    condition = "true";
    flagItems[] = {"ACE_personalAidKit", FLAG_RC};
    init = "_thisFlag execVM 'skills\bacta_init.sqf'";
    onRespawn = "'s_b_' call ZONT_fnc_removeAllVars";
    class action1 {
      tooltip = "<t color='#2ECC71'>Использовать бакту</t>";
      script = "[] execVM 'skills\bacta.sqf'";
      priority = 10;
      condition = "(vehicle player == player) && [_thisFlag, [0]] call ZONT_fnc_checkFlag";
      params = "[]";
    };
    maxUses = 3;
    cd = 1800;
  };
};
