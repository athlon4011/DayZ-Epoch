//Mod by Zane
Private ["_Basis","_EH_Fired","_EH_Hit","_EH_Killed"];
_Basis = _this select 0; //Basisname
while {true} do
  {
    waitUntil {vehicle player in list _Basis};
titleText ["Welcome to the Trading post, God mode ON.", "PLAIN DOWN", 3];
sleep 2;
player setUnitRecoilCoefficient 0;
player_zombieCheck = {};
fnc_usec_damageHandler = {};
fnc_usec_unconscious  = {};
player allowDamage false;
    waitUntil {! (vehicle player in list _Basis)};
titleText ["Leaving Trading Post, God mode OFF.", "PLAIN DOWN", 3];
sleep 2;
player setUnitRecoilCoefficient 1;
player_zombieCheck = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\player_zombieCheck.sqf";
fnc_usec_damageHandler = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_damageHandler.sqf";
fnc_usec_unconscious = compile preprocessFileLineNumbers "\z\addons\dayz_code\compile\fn_unconscious.sqf";
player allowDamage true;
  } 