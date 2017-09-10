%% Chassis Constants Main

%Instructions
%1. Define vehicle Parameters in Vehicle_Definition Script
%2. Run Vehicle Definition block.
%3. Choose Test Case and run block.
%4. If different test case is desired, then can modify directly or ideally
%create a new test case below.

%% Vehicle Definition

Vehicle = Vehicle; %#ok<ASGSL>
Vehicle_Definition;

%% Test Cases

%% Static
Test.Ay = 0;                            %Test Vehicle Lateral Acceleration [g]
Test.Ax = 0;                            %Test Vehicle Longitudinal Acceleration [g]
Test.v = 0;                             %Test Vehicle Speed [m/s]
Test.rho = 1.2;                         %Air Density
%Results
ChassisConstants.Results.Static.TestConditions = Test;
ChassisConstantsResults.Static.RollAngle = 0;
ChassisConstantsResults.Static.FrontRideHeight = Vehicle.axle.front.designRH + Vehicle.axle.front.staticRH;
ChassisConstantsResults.Static.RearRideHeight = Vehicle.axle.rear.designRH + Vehicle.axle.rear.staticRH;
ChassisConstantsResults.Static.PitchAngle = Calculate_PitchAngle(Vehicle, ChassisConstantsResults.Static.FrontRideHeight, ChassisConstantsResults.Static.RearRideHeight);

%% Pure Cornering
Test.Ay = 1;                            %Test Vehicle Lateral Acceleration [g]
Test.Ax = 0;                            %Test Vehicle Longitudinal Acceleration [g]
Test.v = 20;                            %Test Vehicle Speed [m/s]
Test.rho = 1.2;                         %Air Density
% Results
ChassisConstants.Results.PureCornering.TestConditions = Test;
ChassisConstantsResults.PureCornering.RollAngle = Calculate_RollAngle(Vehicle, Test);
ChassisConstantsResults.PureCornering.FrontRideHeight = Vehicle.axle.front.staticRH;
ChassisConstantsResults.PureCornering.RearRideHeight = Vehicle.axle.front.staticRH;
ChassisConstantsResults.PureCornering.PitchAngle = Calculate_PitchAngle(Vehicle, ChassisConstantsResults.PureCornering.FrontRideHeight, ChassisConstantsResults.PureCornering.RearRideHeight);

%% Pure Braking
Test.Ay = 0;                                %Test Vehicle Lateral Acceleration [g]
Test.Ax = -1.5;                               %Test Vehicle Longitudinal Acceleration [g]
Test.v = 0;                                %Test Vehicle Speed [m/s]
Test.rho = 1.2;                             %Air Density
%Results
ChassisConstants.Results.PureBraking.TestConditions = Test;
ChassisConstantsResults.PureBraking.RollAngle = 0;
[ChassisConstantsResults.PureBraking.FrontRideHeight, ChassisConstantsResults.PureBraking.RearRideHeight] = Calculate_PitchRideHeights(Vehicle, Test);
ChassisConstantsResults.PureBraking.PitchAngle = Calculate_PitchAngle(Vehicle, ChassisConstantsResults.PureBraking.FrontRideHeight, ChassisConstantsResults.PureBraking.RearRideHeight);

%% Combined Braking-Cornering
Test.Ay = 1;                            %Test Vehicle Lateral Acceleration [g]
Test.Ax = 1;                            %Test Vehicle Longitudinal Acceleration [g]
Test.v = 20;                            %Test Vehicle Speed [m/s]
Test.rho = 1.2;                         %Air Density
%Results
ChassisConstants.Results.Combined.TestConditions = Test;
ChassisConstantsResults.Combined.RollAngle = 0;
[ChassisConstantsResults.Combined.FrontRideHeight, ChassisConstantsResults.Combined.RearRideHeight] = Calculate_PitchRideHeights(Vehicle, Test);
ChassisConstantsResults.Combined.PitchAngle = Calculate_PitchAngle(Vehicle, ChassisConstantsResults.Combined.FrontRideHeight, ChassisConstantsResults.Combined.RearRideHeight);

%% End of Straight
Test.Ay = 0;                            %Test Vehicle Lateral Acceleration [g]
Test.Ax = 0;                            %Test Vehicle Longitudinal Acceleration [g]
Test.v = 26;                            %Test Vehicle Speed [m/s]
Test.rho = 1.2;                         %Air Density
%Results
ChassisConstants.Results.EofS.TestConditions = Test;
ChassisConstantsResults.EofS.RollAngle = 0;
[ChassisConstantsResults.EofS.FrontRideHeight, ChassisConstantsResults.EofS.RearRideHeight] = Calculate_PitchRideHeights(Vehicle, Test);
ChassisConstantsResults.EofS.PitchAngle = Calculate_PitchAngle(Vehicle, ChassisConstantsResults.EofS.FrontRideHeight, ChassisConstantsResults.EofS.RearRideHeight);
