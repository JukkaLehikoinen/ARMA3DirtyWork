_luku = (_this select 0);


sleep 10;
aselaskuri= count tuote2;
lipaslaskuri = count lipas2;
vaatelaskuri = count vaate;
varustelaskuri = count varuste;

for "_i" from 0 to _luku do {
	
	
	_tuote = kama3 select _i;
	
	sleep 1;	

	//etit‰‰n aseista
	for "_t" from 0 to aselaskuri do {
	if (_tuote == tuote2 select _t) then {

	rebelrekka addWeaponCargoGlobal [toimitus2 select _t ,1];
	};
	};

	//etit‰‰n lipasluettelosta
	for "_t" from 0 to lipaslaskuri do {
	if (_tuote == lipas2 select _t) then {
		if (_t ==  4 or _t == 6) then {	
	rebelrekka addMagazineCargoGlobal [lipastoimitus2 select _t ,1]; }
	
	else {rebelrekka addMagazineCargoGlobal [lipastoimitus2 select _t ,3]; };
	};
	};

	//etit‰‰n vaatteista
	for "_t" from 0 to vaatelaskuri do {
	if (_tuote == vaate select _t) then {
		if (_t == 6 or _t == 7) then {
	rebelrekka addbackpackCargoGlobal [vaatetoimitus select _t,1]; }
	else {rebelrekka addItemCargoGlobal [vaatetoimitus select _t,1]; };
	};
	};


	//etit‰‰n varusteista
	for "_t" from 0 to varustelaskuri do {
	if (_tuote == varuste select _t) then {
	if (_t == 7) then {[player] execvm "SolttujenMarkerTrack.sqf";}; // beacon iffin loppu
	if (_t == 5) then {rebelrekka addMagazineCargoGlobal [varustetoimitus select _t,1];};
	rebelrekka addItemCargoGlobal [varustetoimitus select _t,1];
	};
	};



}; // _luku laskurin loppu
kama3 deleterange [0, count kama3];
igor sideradio "toimitus2";


