_indexi=(_this select 0);
_tuote2=(_this select 1);
_hinta2=(_this select 2);
_toimitus2=(_this select 3);


_tuote = lbText [1500, _indexi];

aselaskuri = count tuote;
lipaslaskuri = count lipas;
vaatelaskuri = count vaate;
varustelaskuri = count varuste;
aselaskuri = aselaskuri - 1;
lipaslaskuri = lipaslaskuri - 1;
vaatelaskuri = vaatelaskuri - 1;
varustelaskuri = varustelaskuri - 1;

for "_x" from 0 to aselaskuri do {

if (_tuote == tuote select _x) then {
	ostotuote = tuote select _x;
	ostohinta = asehinta select _x;
	};
};

for "_x" from 0 to lipaslaskuri do {

if (_tuote == lipas select _x) then {
	ostotuote = lipas select _x;
	ostohinta = lipashinta select _x;
	};
};

for "_x" from 0 to vaatelaskuri do {

if (_tuote == vaate select _x) then {
	ostotuote = vaate select _x;
	ostohinta = vaatehinta select _x;
	};
};

for "_x" from 0 to varustelaskuri do {

if (_tuote == varuste select _x) then {
	ostotuote = varuste select _x;
	ostohinta = varustehinta select _x;
	};
};



_osto = (findDisplay 9999) displayctrl 1501;
_osto lbAdd ostotuote;

_loppusumma = (findDisplay 9999) displayctrl 1002;
kokopotti= kokopotti + ostohinta;

ctrlSetText [1002, "Total: " + str kokopotti];


