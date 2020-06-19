if (isDedicated or isServer) then {

{
if ((side _x) == independent and _x inArea bonus) then {
[_x] execvm "200.sqf";
};
} forEach allunits;

};