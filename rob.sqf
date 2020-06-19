_pelaaja = (_this select 0);

if (_pelaaja distance tuoli < 5) then { 
_pelaaja setcaptive false; 

a=1; 
[] execvm "haly.sqf";
}; 


