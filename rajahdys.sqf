if (isDedicated or isServer) then {
_paikka = (_this select 0);


for [{_i = 0}, {_i < 10}, {_i = _i + 1}] do {

aika = random 0.6;

_r1 = random 2;
_r2 = random 2;
_r3 = random 2;
_r11 = random -2;
_r22 = random -2;
_r33 = random -2;
_r1 = _r1 - _r11;
_r2 = _r2 - _r22;
_r3 = _r3 - _r33;

_rpaikka = [(getpos _paikka select 0) + _r1, (getpos _paikka select 1) + _r2, (getpos _paikka select 2) + _r3];
pommi = "DemoCharge_Remote_Ammo" createVehicle _rpaikka;
sleep 0.01;
pommi setdamage 1;

sleep aika;

};

dyna setDamage 1;

};