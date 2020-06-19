
_x = 0;

aselaskuri= count tuote;
lipaslaskuri = count lipas;
vaatelaskuri = count vaate;
varustelaskuri = count varuste2;

_lukukama = count kama - 1;

for "_i" from 0 to _lukukama do {
	
	
	_tuote = kama select _i;
//	hint str _tuote;
	sleep 1;	

	//etitään aseista
	for "_t" from 0 to aselaskuri do {
	if (_tuote == tuote select _t) then {

	laatikko addWeaponCargoGlobal [toimitus select _t ,1];
	};
	};

	//etitään lipasluettelosta
	for "_t" from 0 to lipaslaskuri do {
	if (_tuote == lipas select _t) then {
		if (_t == 4 or _t ==  7 or _t ==  8 or _t ==  9 or _t ==  10) then {	
	laatikko addMagazineCargoGlobal [lipastoimitus select _t ,1]; }
	
	else { 	laatikko addMagazineCargoGlobal [lipastoimitus select _t ,3]; };
	};
	};

	//etitään vaatteista
	for "_t" from 0 to vaatelaskuri do {
	if (_tuote == vaate select _t) then {
		if (_t == 6 or _t == 7) then {
	laatikko addbackpackCargoGlobal [vaatetoimitus select _t,1]; }
	else {	laatikko addItemCargoGlobal [vaatetoimitus select _t,1]; };
	};
	};


	//etitään varusteista
	for "_t" from 0 to varustelaskuri do {
	if (_tuote == varuste2 select _t) then {
	if (_t == 6) then {[player] execvm "SolttujenMarkerTrack.sqf";}; // beacon iffin loppu
	laatikko addItemCargoGlobal [varustetoimitus2 select _t,1];
	};
	};



}; // _luku laskurin loppu
kama deleterange [0, count kama];


waitUntil {tuonti==3};
sleep 1;
_a = count kama;
if (_a > 0) then { 
tuonti=1;
publicVariable "tuonti";

} else {
tuonti =0;
publicVariable "tuonti";

};
sleep 1;

