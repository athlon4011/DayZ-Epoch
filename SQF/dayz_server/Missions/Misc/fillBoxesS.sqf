_crate2 = _this select 0;

clearWeaponCargoGlobal _crate2;
clearMagazineCargoGlobal _crate2;

// Ammo quantities
_minQty = 5;
_maxQty = 7;

// Number of items per category allowed (If set to 0 it will not add items from that category)
_numPrim = 2; // Primary Weapons
_numPist = 2; // Pistols
_numClothes = 2; // Skins
_numPack = 1; // Backpacks
_numBuild = 2; // Building Items
_numCar = 2; // Vehicle Parts
	
// These items are always included
_toolsAlways = ["ItemToolbox","ItemMap"]; 

////// Don't Edit Below!!! ////////

_ammoQuant = (ceil(random _minQty) + (_maxQty - _minQty));

_lootItems = call items;

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
				_crate2 addMagazineCargoGlobal [_item, 1];
				_skincount = _skincount + 1;
			};
			if((_type == "Car") && (_carCount < _numCar)) then {
				_crate2 addMagazineCargoGlobal [_item, 1];
				_carCount = _carCount + 1;
			};
			if((_type == "Building") && (_buildCount < _numBuild)) then {
				_crate2 addMagazineCargoGlobal [_item, 1];
				_buildCount = _buildCount + 1;
			};
			if((_type == "Backpack") && (_packcount < _numPack)) then {
				_crate2 addBackpackCargoGlobal [_item, 1];
				_packcount = _packcount + 1;
			};
			if(((_type == "Rifle") || (_type == "Sniper") || (_type == "Machine") || (_type == "SMG") || (_type == "Shotgun")) && (_primecount < _numPrim)) then{
				_crate2 addWeaponCargoGlobal [_item, 1];
				_crate2 addMagazineCargoGlobal [_ammo, _ammoQuant];
				_primecount = _primecount + 1;
			};
			if((_type == "Pistol") && (_seconcount < _numPist)) then{
				_crate2 addWeaponCargoGlobal [_item, 1];
				_crate2 addMagazineCargoGlobal [_ammo, _ammoQuant];
				_seconcount = _seconcount + 1;
			};
		};
	};
};


/*
for [{_i=0}, {_i < count _toolsAlways}, {_i=_i+1}] do
{
		_item = (_toolsAlways select _i) select 0;
		_crate2 addWeaponCargoGlobal [_item, 1];
};*/