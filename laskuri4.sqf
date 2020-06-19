if (isDedicated or isServer) then {

turva = (getpos siviiliturva);
_i = 0;
while {!(pakoon4)} do {

sleep 1;


}; //while

while {nelvallattu < 1} do {
sleep 2;

{

if ((side _x) == independent and _x inArea nelalue) then {
_i = _i + 1;
};
} forEach allunits;

if (_i < 3) then {
sleep 15;
nelval=1;
publicVariable "nelval";

{
if ((side _x) == independent and _x inArea nelalue) then {
_x setpos turva;
sleep 0.1;
_x setdamage 1;
sleep 0.1;
deletevehicle _X;
};
} forEach allunits;



};

_i = 0;

}; // while

}; //IF SERVER LOPPU