fnc_usec_selfActions = compile preprocessFileLineNumbers "dayz_code\compile\fn_selfActions.sqf";            // fnc_usec_selfActions - adds custom actions to dayz code
if (_dikCode == 210) then //SCROLL LOCK
{
	_nill = execvm "dayz_code\compile\playerstats.sqf";
};