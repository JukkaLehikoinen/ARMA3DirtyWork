if ( isDedicated or isServer ) then { 
_turva = (getpos siviiliturva);

{
if ((side _x) == civilian and _x inArea kolalue) then {
_x domove _turva;
_x setSpeedMode "FULL";
[_x] execvm "siviilinpoisto.sqf";
};

} forEach allunits;

};