// Otmel Village by t.hundero.us
 
// Installing This Modification
// 1. Save this code as "otmelvil.sqf"
// 2. Place the .sqf file inside your mission.pbo file
// 3. Open "init.sqf" and add the following line to the very end -
// [] execVM "otmelvil.sqf";
 
if (isServer) then {

_vehicle_1301 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Nav_Boathouse_PierT", [11640.568, 3290.1316, -0.30313435], [], 0, "CAN_COLLIDE"];
  _vehicle_1301 = _this;
  _this setDir -17.907068;
  _this setVehicleInit "this setvectorup [0,0,1];";
  _this setPos [11640.568, 3290.1316, -0.30313435];
};

_vehicle_1302 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Nav_Boathouse_PierT", [11634.283, 3320.0813, 0.11904386], [], 0, "CAN_COLLIDE"];
  _vehicle_1302 = _this;
  _this setDir -18.76086;
  _this setVehicleInit "this setvectorup [0,0,1];";
  _this setPos [11634.283, 3320.0813, 0.11904386];
};

_vehicle_1326 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Shed_W4", [11586.623, 3374.4495, -4.196167e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1326 = _this;
  _this setDir 160.10974;
  _this setVehicleInit "this setvectorup [0,0,1];";
  _this setPos [11586.623, 3374.4495, -4.196167e-005];
};

_vehicle_1331 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Statek_kulna", [11559.517, 3390.9434, 3.4332275e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1331 = _this;
  _this setDir 167.51064;
  _this setVehicleInit "this setvectorup [0,0,1];";
  _this setPos [11559.517, 3390.9434, 3.4332275e-005];
};

_vehicle_1334 = objNull;
if (true) then
{
  _this = createVehicle ["Land_HouseV_3I2", [11670.842, 3398.6519, -0.042339705], [], 0, "CAN_COLLIDE"];
  _vehicle_1334 = _this;
  _this setDir -12.7427;
  _this setVehicleInit "this setvectorup [0,0,1];";
  _this setPos [11670.842, 3398.6519, -0.042339705];
};

_vehicle_1335 = objNull;
if (true) then
{
  _this = createVehicle ["Land_houseV_2T2", [11608.021, 3383.0371, 0.012019265], [], 0, "CAN_COLLIDE"];
  _vehicle_1335 = _this;
  _this setDir -20.738525;
  _this setVehicleInit "this setvectorup [0,0,1];";
  _this setPos [11608.021, 3383.0371, 0.012019265];
};

_vehicle_1336 = objNull;
if (true) then
{
  _this = createVehicle ["Land_HouseV_1I2", [11647.172, 3393.9822, 1.9073486e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1336 = _this;
  _this setDir 167.79185;
  _this setVehicleInit "this setvectorup [0,0,1];";
  _this setPos [11647.172, 3393.9822, 1.9073486e-005];
};

_vehicle_1339 = objNull;
if (true) then
{
  _this = createVehicle ["Land_HouseV_1I3", [11630.076, 3388.8506, 0.00019454956], [], 0, "CAN_COLLIDE"];
  _vehicle_1339 = _this;
  _this setDir -103.77429;
  _this setVehicleInit "this setvectorup [0,0,1];";
  _this setPos [11630.076, 3388.8506, 0.00019454956];
};

_vehicle_1340 = objNull;
if (true) then
{
  _this = createVehicle ["Land_psi_bouda", [11617.626, 3385.4614, 1.7166138e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1340 = _this;
  _this setDir 167.37135;
  _this setPos [11617.626, 3385.4614, 1.7166138e-005];
};

_vehicle_1342 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_small_EP1", [11608.362, 3389.5015, -1.8596649e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1342 = _this;
  _this setPos [11608.362, 3389.5015, -1.8596649e-005];
};

_vehicle_1343 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_small_EP1", [11626.964, 3395.2329, -1.001358e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1343 = _this;
  _this setPos [11626.964, 3395.2329, -1.001358e-005];
};

_vehicle_1344 = objNull;
if (true) then
{
  _this = createVehicle ["Land_hut06", [11662.149, 3397.2383, 0.23358229], [], 0, "CAN_COLLIDE"];
  _vehicle_1344 = _this;
  _this setDir -193.54704;
  _this setPos [11662.149, 3397.2383, 0.23358229];
};

_vehicle_1345 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [11554.59, 3387.2798, 2.0503998e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1345 = _this;
  _this setDir -13.840073;
  _this setPos [11554.59, 3387.2798, 2.0503998e-005];
};

_vehicle_1346 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [11622.449, 3393.135, 9.059906e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1346 = _this;
  _this setDir 164.35321;
  _this setPos [11622.449, 3393.135, 9.059906e-006];
};

_vehicle_1347 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [11618.66, 3392.0942, -1.1444092e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1347 = _this;
  _this setDir 165.50661;
  _this setPos [11618.66, 3392.0942, -1.1444092e-005];
};

_vehicle_1348 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [11617.341, 3389.6653, 1.335144e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1348 = _this;
  _this setDir 75.086494;
  _this setPos [11617.341, 3389.6653, 1.335144e-005];
};

_vehicle_1349 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [11618.384, 3385.8284, 4.4345856e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1349 = _this;
  _this setDir 75.225899;
  _this setPos [11618.384, 3385.8284, 4.4345856e-005];
};

_vehicle_1351 = objNull;
if (true) then
{
  _this = createVehicle ["Garbage_container", [11580.036, 3373.9351, -4.7683716e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1351 = _this;
  _this setDir 140.00024;
  _this setPos [11580.036, 3373.9351, -4.7683716e-006];
};

_vehicle_1352 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_Garb_Heap_EP1", [11631.674, 3395.8347, -1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1352 = _this;
  _this setDir 0.29122281;
  _this setPos [11631.674, 3395.8347, -1.5258789e-005];
};

_vehicle_1354 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_small_EP1", [11598.964, 3378.1912, -1.4305115e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1354 = _this;
  _this setPos [11598.964, 3378.1912, -1.4305115e-006];
};

_vehicle_1355 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_small_EP1", [11584.362, 3379.3325, -4.7206879e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1355 = _this;
  _this setPos [11584.362, 3379.3325, -4.7206879e-005];
};

_vehicle_1356 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_small_EP1", [11627.97, 3390.4893, 0.00010824203], [], 0, "CAN_COLLIDE"];
  _vehicle_1356 = _this;
  _this setPos [11627.97, 3390.4893, 0.00010824203];
};

_vehicle_1357 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_small_EP1", [11592.479, 3381.8022, 6.1988831e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1357 = _this;
  _this setPos [11592.479, 3381.8022, 6.1988831e-006];
};

_vehicle_1358 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_small_EP1", [11595.598, 3379.9011, -4.7683716e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1358 = _this;
  _this setPos [11595.598, 3379.9011, -4.7683716e-006];
};

_vehicle_1361 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_IronPipes_EP1", [11600.088, 3403.3181, -1.1444092e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1361 = _this;
  _this setDir -17.281048;
  _this setPos [11600.088, 3403.3181, -1.1444092e-005];
};

_vehicle_1362 = objNull;
if (true) then
{
  _this = createVehicle ["Pile_of_wood", [11616.386, 3390.8425, 3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1362 = _this;
  _this setDir -15.695393;
  _this setPos [11616.386, 3390.8425, 3.8146973e-006];
};

_vehicle_1365 = objNull;
if (true) then
{
  _this = createVehicle ["Barrel1", [11586.507, 3382.0361, -1.1920929e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1365 = _this;
  _this setPos [11586.507, 3382.0361, -1.1920929e-005];
};

_vehicle_1367 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Shed_wooden", [11633.642, 3383.5725, -2.0503998e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1367 = _this;
  _this setDir -10.359506;
  _this setVehicleInit "this setvectorup [0,0,1];";
  _this setPos [11633.642, 3383.5725, -2.0503998e-005];
};

_vehicle_1368 = objNull;
if (true) then
{
  _this = createVehicle ["Land_cages_EP1", [11602.015, 3386.4653, -1.9073486e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1368 = _this;
  _this setDir -113.09998;
  _this setPos [11602.015, 3386.4653, -1.9073486e-006];
};

_vehicle_1369 = objNull;
if (true) then
{
  _this = createVehicle ["ClutterCutter_small_EP1", [11629.116, 3392.3774, 5.3405762e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1369 = _this;
  _this setPos [11629.116, 3392.3774, 5.3405762e-005];
};

_vehicle_1371 = objNull;
if (true) then
{
  _this = createVehicle ["Wall_FenW2_6_EP1", [11644.36, 3399.1416, 9.5367432e-007], [], 0, "CAN_COLLIDE"];
  _vehicle_1371 = _this;
  _this setDir -13.730059;
  _this setPos [11644.36, 3399.1416, 9.5367432e-007];
};

_vehicle_1373 = objNull;
if (true) then
{
  _this = createVehicle ["Wall_FenW2_6_EP1", [11652.098, 3400.8511, 8.5830688e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1373 = _this;
  _this setDir -14.431203;
  _this setPos [11652.098, 3400.8511, 8.5830688e-006];
};

_vehicle_1374 = objNull;
if (true) then
{
  _this = createVehicle ["SKODAWreck", [11590.921, 3376.7715, -0.00012302399], [], 0, "CAN_COLLIDE"];
  _vehicle_1374 = _this;
  _this setDir -22.103426;
  _this setPos [11590.921, 3376.7715, -0.00012302399];
};

_vehicle_1375 = objNull;
if (true) then
{
  _this = createVehicle ["UralWreck", [11653.858, 3414.7908, -4.7683716e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1375 = _this;
  _this setDir 105.04422;
  _this setPos [11653.858, 3414.7908, -4.7683716e-006];
};

_vehicle_1376 = objNull;
if (true) then
{
  _this = createVehicle ["datsun01Wreck", [11563.177, 3378.0671, -3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1376 = _this;
  _this setDir 34.738869;
  _this setPos [11563.177, 3378.0671, -3.8146973e-006];
};

_vehicle_1381 = objNull;
if (true) then
{
  _this = createVehicle ["Land_water_tank", [11552.434, 3389.2124, -2.3841858e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1381 = _this;
  _this setDir 257.76245;
  _this setPos [11552.434, 3389.2124, -2.3841858e-005];
};

_vehicle_1382 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [11580.525, 3376.1792, -1.335144e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1382 = _this;
  _this setDir 157.37605;
  _this setPos [11580.525, 3376.1792, -1.335144e-005];
};

_vehicle_1383 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_D", [11604.733, 3389.1687, -2.1934509e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1383 = _this;
  _this setDir -18.672192;
  _this setPos [11604.733, 3389.1687, -2.1934509e-005];
};

_vehicle_1384 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_D", [11607.869, 3390.4348, -2.2888184e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1384 = _this;
  _this setDir 149.29362;
  _this setPos [11607.869, 3390.4348, -2.2888184e-005];
};

_vehicle_1385 = objNull;
if (true) then
{
  _this = createVehicle ["Land_CncBlock_D", [11611.819, 3391.4224, 1.6212463e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1385 = _this;
  _this setDir -14.655394;
  _this setPos [11611.819, 3391.4224, 1.6212463e-005];
};

_vehicle_1386 = objNull;
if (true) then
{
  _this = createVehicle ["Paleta2", [11635.057, 3398.5725, 2.3841858e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1386 = _this;
  _this setDir 9.9184036;
  _this setPos [11635.057, 3398.5725, 2.3841858e-005];
};

_vehicle_1387 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Pneu", [11634.941, 3379.885, -3.0994415e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1387 = _this;
  _this setPos [11634.941, 3379.885, -3.0994415e-005];
};

_vehicle_1389 = objNull;
if (true) then
{
  _this = createVehicle ["Fort_Crate_wood", [11653.97, 3395.0488, -3.3378601e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1389 = _this;
  _this setPos [11653.97, 3395.0488, -3.3378601e-006];
};

_vehicle_1391 = objNull;
if (true) then
{
  _this = createVehicle ["Wall_FenW2_6_EP1", [11655.806, 3383.1865, 6.8187714e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1391 = _this;
  _this setDir -10.762182;
  _this setPos [11655.806, 3383.1865, 6.8187714e-005];
};

_vehicle_1392 = objNull;
if (true) then
{
  _this = createVehicle ["Wall_FenW2_6_EP1", [11649.818, 3382.0078, -5.0544739e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1392 = _this;
  _this setDir -9.9216127;
  _this setPos [11649.818, 3382.0078, -5.0544739e-005];
};

_vehicle_1393 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fuel_tank_small", [11611.188, 3376.3745, -2.3841858e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1393 = _this;
  _this setDir -109.14087;
  _this setPos [11611.188, 3376.3745, -2.3841858e-006];
};

_vehicle_1394 = objNull;
if (true) then
{
  _this = createVehicle ["Land_KBud", [11649.912, 3388.4089, 6.6757202e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1394 = _this;
  _this setDir -13.39894;
  _this setVehicleInit "this setvectorup [0,0,1];";
  _this setPos [11649.912, 3388.4089, 6.6757202e-006];
};

_vehicle_1398 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_Garb_Heap_EP1", [11663.538, 3392.0361, 4.8160553e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1398 = _this;
  _this setPos [11663.538, 3392.0361, 4.8160553e-005];
};

_vehicle_1400 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Crates_stack_EP1", [11599.838, 3383.2021, -1.9073486e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1400 = _this;
  _this setDir -15.831159;
  _this setPos [11599.838, 3383.2021, -1.9073486e-006];
};

_vehicle_1401 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Wheel_cart_EP1", [11591.825, 3367.3069, 1.5258789e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1401 = _this;
  _this setDir -78.811813;
  _this setPos [11591.825, 3367.3069, 1.5258789e-005];
};

_vehicle_1403 = objNull;
if (true) then
{
  _this = createVehicle ["Fort_Crate_wood", [11678.858, 3400.9187, 1.4305115e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1403 = _this;
  _this setDir 2.776593;
  _this setPos [11678.858, 3400.9187, 1.4305115e-006];
};

_vehicle_1404 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_ConcBox_EP1", [11587.707, 3367.6189, 3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1404 = _this;
  _this setDir -19.686501;
  _this setVehicleInit "this setvectorup [0,0,1];";
  _this setPos [11587.707, 3367.6189, 3.8146973e-006];
};

_vehicle_1405 = objNull;
if (true) then
{
  _this = createVehicle ["Land_KBud", [11678.743, 3398.9866, 4.1007996e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1405 = _this;
  _this setDir -103.00069;
  _this setPos [11678.743, 3398.9866, 4.1007996e-005];
};

_vehicle_1406 = objNull;
if (true) then
{
  _this = createVehicle ["Land_transport_crates_EP1", [11637.204, 3381.1826, 5.4836273e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1406 = _this;
  _this setDir -8.2135134;
  _this setPos [11637.204, 3381.1826, 5.4836273e-006];
};

_vehicle_1407 = objNull;
if (true) then
{
  _this = createVehicle ["Garbage_can", [11665.522, 3404.6865, -5.2928925e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1407 = _this;
  _this setPos [11665.522, 3404.6865, -5.2928925e-005];
};

_vehicle_1416 = objNull;
if (true) then
{
  _this = createVehicle ["Land_KBud", [11637.189, 3176.4475, -3.4570694e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1416 = _this;
  _this setDir 69.036888;
  _this setPos [11637.189, 3176.4475, -3.4570694e-005];
};

_vehicle_1427 = objNull;
if (true) then
{
  _this = createVehicle ["Land_HouseV_3I4", [11640.913, 3110.1653, -9.2983246e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1427 = _this;
  _this setVehicleInit "this setvectorup [0,0,1];";
  _this setPos [11640.913, 3110.1653, -9.2983246e-006];
};

_vehicle_1433 = objNull;
if (true) then
{
  _this = createVehicle ["Land_HouseV_1I4", [11620.741, 3138.2241, -4.9352646e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1433 = _this;
  _this setDir 12.074632;
  _this setVehicleInit "this setvectorup [0,0,1];";
  _this setPos [11620.741, 3138.2241, -4.9352646e-005];
};

_vehicle_1434 = objNull;
if (true) then
{
  _this = createVehicle ["Land_hut06", [11621.318, 3153.7878, -3.683567e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1434 = _this;
  _this setDir -83.585457;
  _this setPos [11621.318, 3153.7878, -3.683567e-005];
};

_vehicle_1436 = objNull;
if (true) then
{
  _this = createVehicle ["Land_pumpa", [11636.434, 3160.842, 3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1436 = _this;
  _this setPos [11636.434, 3160.842, 3.8146973e-006];
};

_vehicle_1437 = objNull;
if (true) then
{
  _this = createVehicle ["Barrel4", [11654.075, 3178.4177, -9.1791153e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1437 = _this;
  _this setPos [11654.075, 3178.4177, -9.1791153e-006];
};

_vehicle_1438 = objNull;
if (true) then
{
  _this = createVehicle ["Garbage_can", [11627.512, 3143.7822, -1.9192696e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1438 = _this;
  _this setPos [11627.512, 3143.7822, -1.9192696e-005];
};

_vehicle_1439 = objNull;
if (true) then
{
  _this = createVehicle ["Paleta2", [11652.156, 3176, -1.4781952e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1439 = _this;
  _this setPos [11652.156, 3176, -1.4781952e-005];
};

_vehicle_1440 = objNull;
if (true) then
{
  _this = createVehicle ["Pile_of_wood", [11620.836, 3156.6162, -1.0728836e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1440 = _this;
  _this setDir -80.483177;
  _this setPos [11620.836, 3156.6162, -1.0728836e-006];
};

_vehicle_1441 = objNull;
if (true) then
{
  _this = createVehicle ["Axe_woodblock", [11624.021, 3159.1638, -0.00010299683], [], 0, "CAN_COLLIDE"];
  _vehicle_1441 = _this;
  _this setDir -9.6155148;
  _this setPos [11624.021, 3159.1638, -0.00010299683];
};

_vehicle_1442 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Wheel_cart_EP1", [11631.645, 3109.0151, -5.2690506e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1442 = _this;
  _this setDir -30.457153;
  _this setPos [11631.645, 3109.0151, -5.2690506e-005];
};

_vehicle_1443 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Crates_stack_EP1", [11638.091, 3174.396, -1.001358e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1443 = _this;
  _this setDir -13.379769;
  _this setPos [11638.091, 3174.396, -1.001358e-005];
};

_vehicle_1445 = objNull;
if (true) then
{
  _this = createVehicle ["Park_bench1", [11633.978, 3163.0132, -4.2915344e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1445 = _this;
  _this setDir -51.377571;
  _this setPos [11633.978, 3163.0132, -4.2915344e-006];
};

_vehicle_1446 = objNull;
if (true) then
{
  _this = createVehicle ["Park_bench1", [11634.273, 3159.0698, 9.2983246e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1446 = _this;
  _this setDir 49.250626;
  _this setPos [11634.273, 3159.0698, 9.2983246e-006];
};

_vehicle_1449 = objNull;
if (true) then
{
  _this = createVehicle ["Garbage_can", [11627.517, 3145.1311, -3.4928322e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1449 = _this;
  _this setPos [11627.517, 3145.1311, -3.4928322e-005];
};

_vehicle_1458 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Misc_Garb_Heap_EP1", [11566.858, 3388.2168, -9.5367432e-007], [], 0, "CAN_COLLIDE"];
  _vehicle_1458 = _this;
  _this setPos [11566.858, 3388.2168, -9.5367432e-007];
};

_vehicle_1463 = objNull;
if (true) then
{
  _this = createVehicle ["Land_fuel_tank_small", [11672.321, 3392.3831, 4.2438507e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1463 = _this;
  _this setDir -102.67151;
  _this setVehicleInit "this setvectorup [0,0,1];";
  _this setPos [11672.321, 3392.3831, 4.2438507e-005];
};

_vehicle_1466 = objNull;
if (true) then
{
  _this = createVehicle ["Wall_FenW2_6_EP1", [11657.849, 3402.2642, -4.863739e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1466 = _this;
  _this setDir -14.431203;
  _this setPos [11657.849, 3402.2642, -4.863739e-005];
};

_vehicle_1471 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Ind_TankSmall2_EP1", [11577.319, 3396.9521, -2.3841858e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1471 = _this;
  _this setDir -11.848019;
  _this setPos [11577.319, 3396.9521, -2.3841858e-006];
};

_vehicle_1476 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [11582.763, 3394.6338, -8.5830688e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1476 = _this;
  _this setDir -14.840525;
  _this setPos [11582.763, 3394.6338, -8.5830688e-006];
};

_vehicle_1478 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [11575.085, 3392.5349, -2.1934509e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1478 = _this;
  _this setDir -14.840525;
  _this setPos [11575.085, 3392.5349, -2.1934509e-005];
};

_vehicle_1480 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [11578.909, 3393.5996, -3.8146973e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1480 = _this;
  _this setDir -14.840525;
  _this setPos [11578.909, 3393.5996, -3.8146973e-006];
};

_vehicle_1483 = objNull;
if (true) then
{
  _this = createVehicle ["Fence_corrugated_plate", [11584.331, 3397.0991, -1.9073486e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1483 = _this;
  _this setDir -100.07951;
  _this setPos [11584.331, 3397.0991, -1.9073486e-005];
};

_vehicle_1558 = objNull;
if (true) then
{
  _this = createVehicle ["Rubbish3", [11630.786, 3399.9492, 2.3841858e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1558 = _this;
  _this setPos [11630.786, 3399.9492, 2.3841858e-005];
};

_vehicle_1559 = objNull;
if (true) then
{
  _this = createVehicle ["Rubbish3", [11571.09, 3386.1279, -2.2411346e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1559 = _this;
  _this setDir -154.60634;
  _this setPos [11571.09, 3386.1279, -2.2411346e-005];
};

_vehicle_1561 = objNull;
if (true) then
{
  _this = createVehicle ["Rubbish5", [11588.856, 3383.7017, 7.1525574e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1561 = _this;
  _this setDir -127.74596;
  _this setPos [11588.856, 3383.7017, 7.1525574e-006];
};

_vehicle_1563 = objNull;
if (true) then
{
  _this = createVehicle ["Rubbish1", [11686.664, 3411.8972, -1.4781952e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1563 = _this;
  _this setPos [11686.664, 3411.8972, -1.4781952e-005];
};

_vehicle_1565 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Pneu", [11650.437, 3410.9456, -1.4305115e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_1565 = _this;
  _this setPos [11650.437, 3410.9456, -1.4305115e-006];
};

_vehicle_1567 = objNull;
if (true) then
{
  _this = createVehicle ["Barrels", [11586.688, 3397.6001, -3.4332275e-005], [], 0, "CAN_COLLIDE"];
  _vehicle_1567 = _this;
  _this setPos [11586.688, 3397.6001, -3.4332275e-005];
};

_vehicle_1569 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Nav_Boathouse_PierT", [11627.91, 3350.001, -0.31793755], [], 0, "CAN_COLLIDE"];
  _vehicle_1569 = _this;
  _this setDir -18.76086;
  _this setVehicleInit "this setvectorup [0,0,1];";
  _this setPos [11627.91, 3350.001, -0.31793755];
};
};