if (isDedicated or isServer) then {
{
if ((side _x) == west and _x inArea tokarosvo) then {
[_x] execvm "100.sqf";
};
} forEach allunits;
};