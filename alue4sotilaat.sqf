if (isDedicated or isServer) then {

scopeName "main";
while {alue4vihut != index4} do {
// PAIKAN VALINTA
_pm1 = round(random 1);
_pm2 = round(random 1);
_pos1= random 100;
if (_pm1 == 1) then {_pos1 = _pos1 - (_pos1 * 2);};
if (_pm1 == 0) then {_pos1 = _pos1;};
_pos2= random 100;
if (_pm2 == 1) then {_pos2 = _pos2 - (_pos2 * 2);};
if (_pm2 == 0) then {_pos2 = _pos2;};

_paikka = [(getpos nelalue select 0) + _pos1, (getpos nelalue select 1) + _pos2];
_vesi = surfaceIsWater _paikka;
	scopeName "loop1";
	while {alue4vihut != index4} do {

// PAIKKA VALITTU
scopeName "loop2";
	while {alue4vihut != index4} do {	
	if (_vesi || !isonroad _paikka) then {

	breakTo "loop1";
	} else {	
	index4 = index4 + 1;


_grp = createGroup independent;
_solttu = _grp createUnit [ "I_Soldier_F", _paikka, [], 0, "FORM"];
waypoint4 = [_solttu, _grp, index] execvm "waypointalue4sotilaat.sqf";
[_solttu] execvm "200.sqf";
[_solttu, index] execvm "tarkistus.sqf";

//////////////////
vihut4i = vihut4i + 1;
publicVariable "vihut4i";
[_solttu, index] execvm "alue4kuolema.sqf";
[_solttu, _grp, index] execvm "pakoon4.sqf";


removeAllItems _solttu;
removeAllWeapons _solttu;
removeBackpack _solttu;
_solttu removeMagazines "30Rnd_556x45_Stanag";
removeHeadgear _solttu;
removeVest _solttu;
_solttu unassignItem "NVGoggles_INDEP";

_solttu adduniform "U_B_T_Soldier_F";
_solttu addvest "V_Chestrig_rgr";
_solttu addHeadgear "H_HelmetB_light";

_solttu addItem "FirstAidKit";
_solttu addItem "FirstAidKit";

_solttu addmagazine "HandGrenade";
_solttu addmagazine "HandGrenade";
_solttu addmagazine "HandGrenade";

_i = round(random 19) + 1;



if (_i < 15) then {
_solttu addWeapon "arifle_AKM_F";
_solttu addMagazine "30Rnd_762x39_Mag_Tracer_Green_F";
_solttu addMagazine "30Rnd_762x39_Mag_Tracer_Green_F";
_solttu addMagazine "30Rnd_762x39_Mag_Tracer_Green_F";
};

if (_i == 15) then {
_solttu addWeapon "srifle_DMR_06_olive_f";
_solttu addPrimaryWeaponItem "optic_SOS_khk_F";
_solttu addMagazine "20Rnd_762x51_Mag";
_solttu addMagazine "20Rnd_762x51_Mag";
_solttu addMagazine "20Rnd_762x51_Mag";
};

if (_i > 15) then {
_solttu addbackpack "B_AssaultPack_tna_F";
_solttu addWeapon "LMG_Zafir_F";
_solttu addMagazine "150Rnd_762x54_Box_Tracer";
_solttu addMagazine "150Rnd_762x54_Box_Tracer";
_solttu addMagazine "150Rnd_762x54_Box_Tracer";
};

	_solttu setUnitLoadout getUnitLoadout _solttu;
	[_solttu] execvm "panokset.sqf";
	breakto "loop1";
	};
	};
	};

};


}; // IF SERVER LOPPU