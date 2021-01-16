/******         Database, Database, just living in the Database...       ******/
MPS_spawn_BDINIT = [] spawn {
  [] call ZONT_fnc_bd_initBasic;
  MPS_BDL_pres =
      ["profiles"] call ZONT_fnc_bd_initCustom;
  MPS_BDL_status =
      ["status"] call ZONT_fnc_bd_initCustom;
};

MPH_COMMITER = [{ [] call ZONT_fnc_commitInfo }, 20] call CBA_fnc_addPerFrameHandler;

/******                               ???                                ******/
private _fortif_list = [
    ["Land_BagFence_Corner_F",3],
    ["Land_BagFence_Round_F",3],
    ["Land_BagFence_Short_F",2],
    ["Land_BagFence_Long_F",4],
    ["Land_fort_bagfence_long",5],
    ["Land_fort_bagfence_round",5],
    ["Land_fort_bagfence_corner",5],
    ["Land_Plank_01_4m_F",2],
    ["Land_HBarrierTower_F",25],
    ["Land_BagBunker_Large_F",25],
    ["Land_HBarrier_5_F",15],
    ["Land_Cargo_Patrol_V3_F",20],
    ["Land_BagBunker_Small_F",15],
    ["Land_Canal_WallSmall_10m_F",15],
    ["CamoNet_BLUFOR_big_F",15],
    ["Land_HighVoltageColumn_F",15],
    ["Land_Research_house_V1_F",15],
    ["Land_Cargo_Tower_V1_F",15],
    ["Land_BarGate_F",15]
];
[west,       15000, _fortif_list] call acex_fortify_fnc_registerObjects;
[east,       15000, _fortif_list] call acex_fortify_fnc_registerObjects;
[resistance, 15000, _fortif_list] call acex_fortify_fnc_registerObjects;
