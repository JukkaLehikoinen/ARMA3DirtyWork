while {a < 1} do {

{
if (_x in truck) then {
_x setcaptive false;
kerta=0;
a=1;
while {kerta < 30} do {
["play", truck] call BIS_fnc_carAlarm;
kerta=kerta + 1;
sleep 1;
};
};

if (_x in offroad) then {
_x setcaptive false;
kerta=0;
a=1;
while {kerta < 10} do {
["play", offroad] call BIS_fnc_carAlarm;
kerta=kerta + 1;
sleep 1;
};
};

if (_x in suv) then {
_x setcaptive false;
kerta=0;
a=1;
while {kerta < 10} do {
["play", suv] call BIS_fnc_carAlarm;
kerta=kerta + 1;
sleep 1;
};
};

if (_x in hatchback) then {
_x setcaptive false;
kerta=0;
a=1;
while {kerta < 10} do {
["play", hatchback] call BIS_fnc_carAlarm;
kerta=kerta + 1;
sleep 1;
};
};


} forEach allplayers;
sleep 1;
}; //While