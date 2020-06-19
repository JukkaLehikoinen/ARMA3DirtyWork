if (hasInterface) then {

fnc_addActionKauppa4 =
{
	{
		
		_x addAction [ "Igor's gunshop", { call fnc_ActionKauppa4; }, [], 5, false, false ];

	} forEach _this;	
};


fnc_ActionKauppa4 =
{
//[raha,tuote,indeksi,koodi] execvm "kauppa.sqf";
if (aani4==0) then {
kone4 say "musiikki"; aani4=1;
};


//////////////


kokopotti=0;

disableserialization;


createdialog "ilmakarkkikauppa";

waituntil {!isnull (finddisplay 9999);
};

_osto = (findDisplay 9999) displayctrl 1501;
_lista = (findDisplay 9999) displayctrl 1500;
_text = ctrlText 1001;
_loppusumma = (findDisplay 9999) displayctrl 1002;
_loppusumma = 0;

_rassu = _text + str raha;
ctrlSetText [1001, str _rassu];
{

 _lista lbadd _x;
}foreach tuote4;
//////////////


};
};