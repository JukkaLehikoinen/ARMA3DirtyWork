if (hasInterface) then {

fnc_addActionKauppa6 =
{
	{
		
		_x addAction [ "Igor's gunshop", { call fnc_ActionKauppa6; }, [], 5, false, false ];

	} forEach _this;	
};


fnc_ActionKauppa6 =
{
if (aani6==0) then {
kone6 say "musiikki"; aani6=1;
};


//////////////


kokopotti=0;

disableserialization;


createdialog "doordie";

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
}foreach tuote;
//////////////


};
};