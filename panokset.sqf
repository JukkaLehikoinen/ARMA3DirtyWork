if (isDedicated or isServer) then {
_solttu = (_this select 0);

_lipas = currentmagazine _solttu;

while {alive _solttu} do {
panokset = count magazines _solttu;
if (panokset < 2) then {
_solttu addmagazine _lipas;

};
};



};