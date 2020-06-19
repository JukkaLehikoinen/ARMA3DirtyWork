class doordie
{
	idd= 9999;
	movingenabled = false;

class controls
{
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by Poksu, v1.063, #Gutodu)
////////////////////////////////////////////////////////

class alkuFrame: RscFrame
{
	idc = 1800;
	text = "Igor's Gunshop"; //--- ToDo: Localize;
	x = 0.304062 * safezoneW + safezoneX;
	y = 0.236 * safezoneH + safezoneY;
	w = 0.386719 * safezoneW;
	h = 0.506 * safezoneH;
	
};
class alkuTeksti: RscText
{
	idc = 1000;
	text = "Welcome to my little gunshop. You pay, I smile."; //--- ToDo: Localize;
	x = 0.345312 * safezoneW + safezoneX;
	y = 0.258 * safezoneH + safezoneY;
	w = 0.324844 * safezoneW;
	h = 0.022 * safezoneH;
};
class alkuCancel: RscButton
{
	idc = 1601;
	text = "Cancel"; //--- ToDo: Localize;
	x = 0.649531 * safezoneW + safezoneX;
	y = 0.676 * safezoneH + safezoneY;
	w = 0.04125 * safezoneW;
	h = 0.055 * safezoneH;
	action = "closeDialog 2;Kokopotti=0;";

};
class lista: RscListbox
{
	idc = 1500;
	text = "Misc";
	x = 0.319531 * safezoneW + safezoneX;
	y = 0.291 * safezoneH + safezoneY;
	w = 0.118594 * safezoneW;
	h = 0.33 * safezoneH;
	onMouseButtonClick = "_indexi = lbCurSel 1500; [_indexi,tuote,asehinta,toimitus] execvm 'kone6ostolistaan.sqf';"

};
	
class raha: RscText
{
	idc = 1001;
	text = "Money:"; //--- ToDo: Localize;
	x = 0.412344 * safezoneW + safezoneX;
	y = 0.698 * safezoneH + safezoneY;
	w = 0.180469 * safezoneW;
	h = 0.033 * safezoneH;
};
class osta: RscButton
{
	idc = 1600;
	text = "Buy"; //--- ToDo: Localize;
	x = 0.603125 * safezoneW + safezoneX;
	y = 0.676 * safezoneH + safezoneY;
	w = 0.04125 * safezoneW;
	h = 0.055 * safezoneH;
	onButtonClick = "[] execVM 'kone6osta.sqf'";
};
class rynkyt: RscButton
{
	idc = 1602;
	text = "Guns"; //--- ToDo: Localize;
	x = 0.319531 * safezoneW + safezoneX;
	y = 0.632 * safezoneH + safezoneY;
	w = 0.04125 * safezoneW;
	h = 0.055 * safezoneH;
	onButtonClick = "[] execVM 'rynkyt.sqf'";
};
class ostoslista: RscListbox
{
	idc = 1501;
	text = "shoppinglist"; //--- ToDo: Localize;
	x = 0.567031 * safezoneW + safezoneX;
	y = 0.291 * safezoneH + safezoneY;
	w = 0.108281 * safezoneW;
	h = 0.286 * safezoneH;
	onMouseButtonClick = "_indexi = lbCurSel 1500; [_indexi,tuote,asehinta,toimitus] execvm 'kone6poislistalta.sqf';"
	
};
class singot: RscButton
{
	idc = 1603;
	text = "Ammo"; //--- ToDo: Localize;
	x = 0.365937 * safezoneW + safezoneX;
	y = 0.632 * safezoneH + safezoneY;
	w = 0.0670312 * safezoneW;
	h = 0.055 * safezoneH;
	onButtonClick = "[] execVM 'lippaat.sqf'";
};
class vaatteet: RscButton
{
	idc = 1604;
	text = "Clothes"; //--- ToDo: Localize;
	x = 0.438125 * safezoneW + safezoneX;
	y = 0.632 * safezoneH + safezoneY;
	w = 0.04125 * safezoneW;
	h = 0.055 * safezoneH;
	onButtonClick = "[] execVM 'vaatteet.sqf'";
};
class varusteet: RscButton
{
	idc = 1605;
	text = "Equipment"; //--- ToDo: Localize;
	x = 0.484531 * safezoneW + safezoneX;
	y = 0.632 * safezoneH + safezoneY;
	w = 0.04125 * safezoneW;
	h = 0.055 * safezoneH;
	onButtonClick = "[] execVM 'varusteet.sqf'";
};
class summa: RscText
{
	idc = 1002;
	text = "Total:"; //--- ToDo: Localize;
	x = 0.463906 * safezoneW + safezoneX;
	y = 0.599 * safezoneH + safezoneY;
	w = 0.211406 * safezoneW;
	h = 0.022 * safezoneH;
};
////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////
};
};