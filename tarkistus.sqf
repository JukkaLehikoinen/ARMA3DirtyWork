if ( isDedicated or isServer ) then { 
_solttu = (_this select 0);
turva = (getpos siviiliturva);
sleep 50;
if (!canMove _solttu) then 
{
_solttu setpos turva;
sleep 1;
  _solttu setdamage 1;
sleep 1;
deletevehicle _solttu;
};

};