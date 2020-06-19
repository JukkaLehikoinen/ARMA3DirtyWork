_luku = (_this select 0);


sleep 10;
aselaskuri= count tuote4;
lipaslaskuri = count lipas4;
vaatelaskuri = count vaate;
varustelaskuri = count varuste;

for "_i" from 0 to _luku do {
	
	
	_tuote = kama4 select _i;
	sleep 1;	

	//etit‰‰n aseista
	for "_t" from 0 to aselaskuri do {
	if (_tuote == tuote4 select _t) then {

	poyta addWeaponCargoGlobal [toimitus4 select _t ,1];
	};
	};

	//etit‰‰n lipasluettelosta
	for "_t" from 0 to lipaslaskuri do {
	if (_tuote == lipas4 select _t) then {
		if (_t==3 or _t==5) then {	
	poyta addMagazineCargoGlobal [lipastoimitus4 select _t ,1]; }
	
	else {poyta addMagazineCargoGlobal [lipastoimitus4 select _t ,3]; };
	};
	};

	//etit‰‰n vaatteista
	for "_t" from 0 to vaatelaskuri do {
	if (_tuote == vaate select _t) then {
		if (_t == 6 or _t == 7) then {
	poyta addbackpackCargoGlobal [vaatetoimitus select _t,1]; }
	else {poyta addItemCargoGlobal [vaatetoimitus select _t,1]; };
	};
	};


	//etit‰‰n varusteista
	for "_t" from 0 to varustelaskuri do {
	if (_tuote == varuste select _t) then {
	if (_t == 7) then {[player] execvm "SolttujenMarkerTrack.sqf";}; // beacon iffin loppu
	if (_t == 5) then {poyta addMagazineCargoGlobal [varustetoimitus select _t,1];};
	poyta addItemCargoGlobal [varustetoimitus select _t,1];
	};
	};



}; // _luku laskurin loppu
kama4 deleterange [0, count kama4];
igor sideradio "toimitus2";


