if ((!isServer) && (player != player)) then
{
  waitUntil {player == player};
};
_null = [player] execVM "briefing.sqf";

[player] execvm "kuolema.sqf"; 
[player] execvm "haly2.sqf";

///////////////////////////////////////////////////////////////////////////////////////////////////////
tilattu = 0; 
kokopotti=0; 
indeksi=0; 
koodi=""; 
hinta=0; 
aani1=0; 
aani2=0; 
aani3=0; 
aani4=0; 
aani5=0; 
aani6=0; 

"rosvomarkkeri" setMarkerAlpha 0;
kama = []; 
varasto = []; 
kama3 = []; 
kama4 = [];
kama6 = [];

///////////////////////////////////////////////////////////////////////////////////////////////////////
tuote = ["AKM 1000", "Protector 800", "HK416 1800", "MK-14 1800", "MG36 2000", "Dragunov 2700", "M107 3900", "P07 100", "ACP 45 100", "RPG-42 alamut 1500", "RPG7 1000"];

asehinta = [1000,800,1800,1800,2000,2700,3900,100,100,1500,1000];

toimitus = ["arifle_AKM_F", "SMG_05_F", "CUP_arifle_HK416_Black", "srifle_DMR_06_olive_F", "CUP_arifle_MG36", "CUP_srifle_SVD_Top_Rail",  "CUP_srifle_M107_Base", "hgun_P07_F", "hgun_ACPC2_F", "launch_RPG32_F", "launch_RPG7_F"];

///////////////////////////////////////////////////////////////////////////////////////////////////////
lipas = ["AKM 3 mags 300", "Protector 3 mags 210", "HK416 3 mags 300", "MK14 3 mags 350", "MG36 belt 300", "Dragunov 3 mags 500", "M107 3 mags 900", "P07 clip 40", "ACP45 clip 30", "Alamut ammo 500", "RPG7 AP-grenade 400"];

lipashinta = [300,210,300,350,300,500,900,40,30,500,400];

lipastoimitus = ["30Rnd_762x39_Mag_F", "30Rnd_9x21_Mag_SMG_02", "CUP_30rnd_556x45_emag_tracer_yellow", "20Rnd_762x51_Mag", "CUP_100rnd_TE1_red_tracer_556x45_BetaCMag", "CUP10rnd_762x54_SVD_M", "CUP_10rnd_127x99_M107", "16Rnd_9x21_Mag", "9Rnd_45ACP_Mag", "RPG32_F", "RPG7_F"];


///////////////////////////////////////////////////////////////////////////////////////////////////////
tuote2 = ["HK416 1800", "MK-14 1800", "M107 3900","M4A1 1600", "PKM 2500", "FN FAL 2000", "RPG-42 alamut 1500"];

asehinta2 = [1800,1800,3900,1600,2500,2000,1500];

toimitus2 = ["CUP_arifle_HK416_Black", "srifle_DMR_06_olive_F", "CUP_srifle_M107_Base", "CUP_arifle_M4A1_black", "CUP_lmg_PKM", "CUP_arifle_FNFAL_railed", "launch_RPG32_F"];

///////////////////////////////////////////////////////////////////////////////////////////////////////

///////////////////////////////////////////////////////////////////////////////////////////////////////
lipas2 = ["HK416 3 mags 300", "MK-14 3 mags 350", "M107 3 mags 900", "M4A1 3 mag 330", "PKM 100rnd belt 300", "FN FAL 4 mags 350", "Alamut ammo 400"];
lipashinta2 = [300,300,900,330,300,350,400];

lipastoimitus2 = ["CUP_30rnd_556x45_emag_tracer_yellow", "20Rnd_762x51_Mag", "CUP_10rnd_127x99_M107", "CUP_30Rnd_556x45_Stanag", "CUP_100RND_TE4_LRT4_762x54_PK_Tracer_Green_M", "CUP_20RND_762x51_FNFAL_M", "RPG32_F"];

///////////////////////////////////////////////////////////////////////////////////////////////////////
tuote4 = ["Dragunov 2700", "HK416 1800", "M4A1 1600", "PKM 2500 'igor's favorite'", "FN FAL 2000", "RPG-42 alamut 1500",  "M107 3900"];

asehinta4 = [2700,1800,1600,2500,2000,1500,3900];

toimitus4 = ["CUP_srifle_SVD_Top_Rail", "CUP_arifle_HK416_Black", "CUP_arifle_M4A1_black", "CUP_lmg_PKM", "CUP_arifle_FNFAL_railed", "launch_RPG32_F", "CUP_srifle_M107_Base"];
///////////////////////////////////////////////////////////////////////////////////////////////////////
lipas4 = ["Dragunov 3 mags 500", "HK416 3 mags 300", "M4A1 3 mag 330", "PKM 100rnd belt 300", "FN FAL 3 mags 300", "Alamut ammo 400", "M107 3 mags 900"];

lipashinta4 = [500,300,330,300,300,400,900];

lipastoimitus4 = ["CUP10rnd_762x54_SVD_M","CUP_30rnd_556x45_emag_tracer_yellow", "CUP_30Rnd_556x45_Stanag", "CUP_100RND_TE4_LRT4_762x54_PK_Tracer_Green_M", "CUP_20RND_762x51_FNFAL_M", "RPG32_F", "CUP_10rnd_127x99_M107"];
///////////////////////////////////////////////////////////////////////////////////////////////////////

vaate = ["militarysuit + 700", "Ghilliesuit ++ 5400", "Vipersuit ++++ 6000", "Body armor +++ 2500", "Body armor ++ 2500", "vests + 1200", "backpack 1000", "Viper backpack 2000", "Light Helmet + 800", "Helmet ++ 1300", "Combat Helmet +++ 2000", "Viperhelmet 3500"];

vaatehinta = [700,5400,6000,2500,2500,1200,1000,2000,800,1300,2000,3500];

vaatetoimitus = ["U_O_T_Soldier_F", "U_O_GhillieSuit", "U_O_V_Soldier_Viper_F", "V_PlateCarrierGL_blk", "V_PlateCarrierSpec_blk", "V_tacVest_blk", "B_FieldPack_blk", "B_ViperHarness_blk_F", "H_HelmetB_light", "H_HelmetB_black", "H_HelmetSpecB", "H_HelmetO_ViperSP_ghex_F"];

varuste = ["Binoculars 500", "Rangefinder 1000", "LRPS scope 900", "MOS scope 700", "Amos scope 600", "handgrenade x2 250", "firstaid kit 100", "Mapbeacon 1000"];

varustehinta = [500,1000,900,700,600,250,100,1000];

varustetoimitus = ["binocular", "rangefinder", "optic_LRPS", "optic_SOS", "optic_AMS", "HandGrenade","FirstAidKit"];

////////////////////////////////////////////////////////////////////////////////////////////////////////
varuste2 = ["Binoculars 500", "Rangefinder 1000", "LRPS scope 900", "MOS scope 700", "Amos scope 600", "firstaid kit 100", "Mapbeacon 1000"];

varustehinta2 = [500,1000,900,700,600,100,1000];

varustetoimitus2 = ["binocular", "rangefinder", "optic_LRPS", "optic_SOS", "optic_AMS", "FirstAidKit"];





///////////////////////////////////////////////////////////////////////////////////////////////////////
player setVariable ["Saved_Loadout",getUnitLoadout player];

call compile preprocessFile "kone1kone2.sqf"; 
call compile preprocessFile "kone3.sqf"; 
call compile preprocessFile "kone4.sqf"; 
call compile preprocessFile "kone6.sqf"; 

[ [ kone,kone2 ], "fnc_addActionKauppa1", true, true] spawn BIS_fnc_MP; 
[ [ kone3 ], "fnc_addActionKauppa3", true, true] spawn BIS_fnc_MP; 
[ [ kone4 ], "fnc_addActionKauppa4", true, true] spawn BIS_fnc_MP; 
[ [ kone6 ], "fnc_addActionKauppa6", true, true] spawn BIS_fnc_MP;

player addrating 200000;  //Ettei omat käy kiinni