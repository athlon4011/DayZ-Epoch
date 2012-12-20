private["_position","_veh","_location","_isOk","_backpack","_vehType","_trg","_key","_part_out","_part_in","_qty_out","_qty_in","_qty","_buy_o_sell","_obj","_objectID","_objectUID"];

// [part_out,part_in, qty_out, qty_in, loc];

_activatingPlayer = _this select 1;

_part_out = (_this select 3) select 0;
_part_in = (_this select 3) select 1;
_qty_out = (_this select 3) select 2;
_qty_in = (_this select 3) select 3;
_buy_o_sell = (_this select 3) select 4;
_textPartIn = (_this select 3) select 5;
_textPartOut = (_this select 3) select 6;
_traderID = (_this select 3) select 7;
_bos = 0;

if(_buy_o_sell == "buy") then {
	_qty = {_x == _part_in} count magazines player;
} else {
	_obj = nearestObjects [(getPosATL player), [_part_in], 10];
	_qty = count _obj;
	_bos = 1;
};


if (_qty >= _qty_in) then {

	// server_tradeObject [_activatingPlayer,_traderID,_bos]
	dayzTradeObject = [_activatingPlayer,_traderID,_bos];
	publicVariableServer "dayzTradeObject";
	
	if (isServer) then {
		dayzTradeObject call server_tradeObject;
	};

	diag_log format["DEBUG Starting to wait for answer: %1", dayzTradeObject];

	waitUntil {!isNil "dayzTradeResult"};

	diag_log format["DEBUG Complete Trade: %1", dayzTradeResult];

	if(dayzTradeResult == "PASS") then {


		if(_buy_o_sell == "buy") then {	
			for "_x" from 1 to _qty_in do {
				player removeMagazine _part_in;
			};
	
			_dir = 90;	

			_location = [(position player),0,20,1,2,20,0] call BIS_fnc_findSafePos;
	
			//place tent (local)
			_veh = createVehicle [_part_out, _location, [], 0, "CAN_COLLIDE"];
			_veh setdir _dir;
			_veh setpos _location;
	
			//_veh setPosATL _position;
	
			player reveal _veh;
			_location = getPosATL _veh;
	
			_veh setVariable ["characterID",dayz_playerUID,true];
	
			// server_publishVeh [_veh,[_dir,_objPosition],_vehicle,true,dayz_characterID]
			dayzPublishVeh = [_veh,[_dir,_location],_part_out,false,dayz_playerUID];
	
			publicVariableServer "dayzPublishVeh";
			if (isServer) then {
				dayzPublishVeh call server_publishVeh;
			};

			cutText [format[("Bought %1 %2 for %3 %4"),_qty_in,_textPartIn,_qty_out,_textPartOut], "PLAIN DOWN"];
		} else {
			// Sell Vehicle
			for "_x" from 1 to _qty_out do {
				player addMagazine _part_out;
			};

			_obj = _obj select 0;
			_objectID 	= _obj getVariable ["ObjectID","0"];
			_objectUID	= _obj getVariable ["ObjectUID","0"];

			dayzDeleteObj = [_objectID,_objectUID];
			publicVariableServer "dayzDeleteObj";
			if (isServer) then {
				dayzDeleteObj call local_deleteObj;
			};

			deleteVehicle _obj;

			cutText [format[("Sold %1 %2 for %3 %4"),_qty_in,_textPartIn,_qty_out,_textPartOut], "PLAIN DOWN"];
		};
	
		{player removeAction _x} forEach s_player_parts;s_player_parts = [];
		s_player_parts_crtl = -1;

	} else {
		cutText [format[("Error insufficient quality %1"),_textPartIn] , "PLAIN DOWN"];
	};
	dayzTradeResult = nil;

} else {
	_needed =  _qty_in - _qty;
	cutText [format[("Need %1 More %2"),_needed,_textPartIn] , "PLAIN DOWN"];
};