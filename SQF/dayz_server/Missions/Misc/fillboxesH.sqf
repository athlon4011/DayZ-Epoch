_crate3 = _this select 0;

clearWeaponCargoGlobal _crate3;
clearMagazineCargoGlobal _crate3;

_lootItems = call fnc_items;

// Ammo quantities
_minQty = 5;
_maxQty = 7;

// Number of items per category allowed (If set to 0 it will not add items from that category)
_numPrim = 3; // Primary Weapons
_numPist = 3; // Pistols
_numClothes = 3; // Skins
_numPack = 3; // Backpacks
_numBuild = 3; // Building Items
_numCar = 3; // Vehicle Parts
	
// These items are always included
_toolsAlways = ["ItemToolbox","ItemMap"]; 

////// Don't Edit Below!!! ////////

_ammoQuant = (ceil(random _minQty) + (_maxQty - _minQty));


_primecount = 0;
_seconcount = 0;
_skincount = 0;
_packcount = 0;
_buildCount = 0;
_carCount = 0;
while{(_primecount < _numPrim) && (_seconcount < _numPist) && (_packcount < _numPack) && (_skincount < _numClothes) && (_buildCount < _numBuild) && (_carCount < _numCar)} do
{
	for [{_i=0}, {_i < count _lootItems}, {_i=_i+1}] do
	{
		_item = (_lootItems select _i) select 0;
		_probability = (_lootItems select _i) select 1;
		_ammo = (_lootItems select _i) select 2;
		_type = (_lootItems select _i) select 3;
		_chance = floor(random 100);
		if((_chance < _probability)) then {
			if((_type == "Skin") && (_skincount < _numClothes)) then {
				_crate3 addMagazineCargoGlobal [_item, 1];
				_skincount = _skincount + 1;
			};
			if((_type == "Car") && (_carCount < _numCar)) then {
				_crate3 addMagazineCargoGlobal [_item, 1];
				_carCount = _carCount + 1;
			};
			if((_type == "Building") && (_buildCount < _numBuild)) then {
				_crate3 addMagazineCargoGlobal [_item, 1];
				_buildCount = _buildCount + 1;
			};
			if((_type == "Backpack") && (_packcount < _numPack)) then {
				_crate3 addBackpackCargoGlobal [_item, 1];
				_packcount = _packcount + 1;
			};
			if(((_type == "Rifle") || (_type == "Sniper") || (_type == "Machine") || (_type == "SMG") || (_type == "Shotgun")) && (_primecount < _numPrim)) then{
				_crate3 addWeaponCargoGlobal [_item, 1];
				_crate3 addMagazineCargoGlobal [_ammo, _ammoQuant];
				_primecount = _primecount + 1;
			};
			if((_type == "Pistol") && (_seconcount < _numPist)) then{
				_crate3 addWeaponCargoGlobal [_item, 1];
				_crate3 addMagazineCargoGlobal [_ammo, _ammoQuant];
				_seconcount = _seconcount + 1;
			};
		};
	};
};


/*
for [{_i=0}, {_i < count _toolsAlways}, {_i=_i+1}] do
{
		_item = (_toolsAlways select _i) select 0;
		_crate3 addWeaponCargoGlobal [_item, 1];
};*/