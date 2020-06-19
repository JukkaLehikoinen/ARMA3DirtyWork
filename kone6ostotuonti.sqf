_luku = (_this select 0);


sleep 10;
aselaskuri= count tuote;
lipaslaskuri = count lipas;
vaatelaskuri = count vaate;
varustelaskuri = count varuste;

for "_i" from 0 to _luku do {
	
	
	_tuote = kama6 select _i;
	sleep 1;	

	//etit‰‰n aseista
	for "_t" from 0 to aselaskuri do {
	if (_tuote == tuote select _t) then {

	doordieauto addWeaponCargoGlobal [toimitus select _t ,1];
	};
	};

	//etit‰‰n lipasluettelosta
	for "_t" from 0 to lipaslaskuri do {
	if (_tuote == lipas select _t) then {
		if (_t == 4 or _t ==  7 or _t ==  8 or _t ==  9 or _t ==  10) then {	
	doordieauto addMagazineCargoGlobal [lipastoimitus select _t ,1]; }
	
	else {doordieauto addMagazineCargoGlobal [lipastoimitus select _t ,3]; };
	};
	};

	//etit‰‰n vaatteista
	for "_t" from 0 to vaatelaskuri do {
	if (_tuote == vaate select _t) then {
		if (_t == 6 or _t == 7) then {
	doordieauto addbackpackCargoGlobal [vaatetoimitus select _t,1]; }
	else {doordieauto addItemCargoGlobal [vaatetoimitus select _t,1]; };
	};
	};


	//etit‰‰n varusteista
	for "_t" from 0 to varustelaskuri do {
	if (_tuote == varuste select _t) then {
	if (_t == 7) then {[player] execvm "SolttujenMarkerTrack.sqf";}; // beacon iffin loppu
	if (_t == 5) then {doordieauto addMagazineCargoGlobal [varustetoimitus select _t,1];};
	doordieauto addItemCargoGlobal [varustetoimitus select _t,1];
	};
	};



}; // _luku laskurin loppu
igor sideradio "toimitus2"; igor sidechat "Mister, delivery was made. khorosho";
kama6 deleterange [0, count kama6];



