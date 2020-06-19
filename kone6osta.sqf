_lista = (findDisplay 9999) displayctrl 1501;
_luku = lbSize _lista;
if (kokopotti > raha) exitwith {hint "not enough money";};
if (_luku > 0) then {


aselaskuri= count tuote;
lipaslaskuri = count lipas;
vaatelaskuri = count vaate;
varustelaskuri = count varuste;

_x = 0;


/// Lasketaan varasto5n indexit ja laitetaan se soveltumaan laskuri indexin kanssa.

_luku = _luku - 1;
for "_i" from 0 to _luku do {

_tuote = lbText [1501, _x];

_x = _x + 1;


kama6 set [_i, _tuote];




	//etit‰‰n aseista
	for "_t" from 0 to aselaskuri do {
	if (_tuote == tuote select _t) then {
	hinta = asehinta select _t;
	raha = raha - hinta;
	};
	};

	//etit‰‰n lipasluettelosta
	for "_t" from 0 to lipaslaskuri do {
	if (_tuote == lipas select _t) then {
	hinta = lipashinta select _t;
	raha = raha - hinta;
	};
	};

	//etit‰‰n vaatteista
	for "_t" from 0 to vaatelaskuri do {
	if (_tuote == vaate select _t) then {
	hinta = vaatehinta select _t;
	raha = raha - hinta;
	};
	};


	//etit‰‰n varusteista
	for "_t" from 0 to varustelaskuri do {
	if (_tuote == varuste select _t) then {
	hinta = varustehinta select _t;
	raha = raha - hinta;
	};
	};

}; // Laskuri IF


}; // luku IF
ctrlSetText [1002, "Loppusumma: " + str kokopotti];
kiitos=2;


for "i" from 0 to 30 do {
i publicVariableClient "raha";
};

kokopotti=0;


[_luku] execvm "kone6ostotuonti.sqf";


closeDialog 2;

lbClear _lista;




