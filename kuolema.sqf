_hahmo = (_this select 0);

_hahmo addEventHandler ["Killed", {
	params ["_unit", "_killer", "_instigator", "_useEffects"];

uhri = (_this select 0);
ampu = (_this select 1);
[uhri,ampu] execvm "kuolema2.sqf";

}];