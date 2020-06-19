if (isDedicated or isServer) then {
{
if ((side _x) == west and _x inArea ekaalue) then {
[_x] execvm "100.sqf";
};
} forEach allunits;

};