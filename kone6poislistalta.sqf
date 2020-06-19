_indexi=(_this select 0);
_tuote2=(_this select 1);
_hinta2=(_this select 2);
_toimitus2=(_this select 3);

_indexi2 = lbCurSel 1501;
ostohinta=0;

poistotuote2 = lbText [1501, _indexi2];

_indexi3 = count tuote;
lipaslaskuri = count lipas;
vaatelaskuri = count vaate;
varustelaskuri = count varuste;
_indexi3 = _indexi3 - 1;
lipaslaskuri = lipaslaskuri - 1;
vaatelaskuri = vaatelaskuri - 1;
varustelaskuri = varustelaskuri - 1;

for "_i" from 0 to _indexi3 do {
_tuotei = tuote select _i;
if (poistotuote2 == _tuotei) then
	{
	ostohinta = asehinta select _i;
	     };
};

for "_i" from 0 to lipaslaskuri do {
_tuotei = lipas select _i;
if (poistotuote2 == _tuotei) then
	{
	ostohinta = lipashinta select _i;
	     };
};

for "_i" from 0 to vaatelaskuri do {
_tuotei = vaate select _i;
if (poistotuote2 == _tuotei) then
	{
	ostohinta = vaatehinta select _i;
	     };
};

for "_i" from 0 to varustelaskuri do {
_tuotei = varuste select _i;
if (poistotuote2 == _tuotei) then
	{
	ostohinta = varustehinta select _i;
	     };
};


_poisto = (findDisplay 9999) displayctrl 1501;

_poisto lbDelete _indexi2;
_loppusumma = (findDisplay 9999) displayctrl 1002;
kokopotti= kokopotti - ostohinta;

ctrlSetText [1002, "Total: " + str kokopotti];


