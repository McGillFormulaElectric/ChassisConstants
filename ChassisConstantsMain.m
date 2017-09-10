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
ChassisConstants.Results.Static.RollAngle = 0;
ChassisConstants.Results.Static.FrontRideHeight = Vehicle.axle.front.designRH + Vehicle.axle.front.staticRH;
ChassisConstants.Results.Static.RearRideHeight = Vehicle.axle.rear.designRH + Vehicle.axle.rear.staticRH;
ChassisConstants.Results.Static.PitchAngle = Calculate_PitchAngle(Vehicle, ChassisConstants.Results.Static.FrontRideHeight, ChassisConstants.Results.Static.RearRideHeight);

%% Pure Cornering
Test.Ay = 1;                            %Test Vehicle Lateral Acceleration [g]
Test.Ax = 0;                            %Test Vehicle Longitudinal Acceleration [g]
Test.v = 20;                            %Test Vehicle Speed [m/s]
Test.rho = 1.2;                         %Air Density
% Results
ChassisConstants.Results.PureCornering.TestConditions = Test;
ChassisConstants.Results.PureCornering.RollAngle = Calculate_RollAngle(Vehicle, Test);
ChassisConstants.Results.PureCornering.FrontRideHeight = Vehicle.axle.front.staticRH;
ChassisConstants.Results.PureCornering.RearRideHeight = Vehicle.axle.front.staticRH;
ChassisConstants.Results.PureCornering.PitchAngle = Calculate_PitchAngle(Vehicle, ChassisConstants.Results.PureCornering.FrontRideHeight, ChassisConstants.Results.PureCornering.RearRideHeight);

%% Pure Braking
Test.Ay = 0;                                %Test Vehicle Lateral Acceleration [g]
Test.Ax = -1.5;                               %Test Vehicle Longitudinal Acceleration [g]
Test.v = 20;                                %Test Vehicle Speed [m/s]
Test.rho = 1.2;                             %Air Density
%Results
ChassisConstants.Results.PureBraking.TestConditions = Test;
ChassisConstants.Results.PureBraking.RollAngle = 0;
[ChassisConstants.Results.PureBraking.FrontRideHeight, ChassisConstants.Results.PureBraking.RearRideHeight] = Calculate_PitchRideHeights(Vehicle, Test);
ChassisConstants.Results.PureBraking.PitchAngle = Calculate_PitchAngle(Vehicle, ChassisConstants.Results.PureBraking.FrontRideHeight, ChassisConstants.Results.PureBraking.RearRideHeight);

%% Combined Braking-Cornering
Test.Ay = 1.25;                            %Test Vehicle Lateral Acceleration [g]
Test.Ax = -1.25;                            %Test Vehicle Longitudinal Acceleration [g]
Test.v = 20;                            %Test Vehicle Speed [m/s]
Test.rho = 1.2;                         %Air Density
%Results
ChassisConstants.Results.Combined.TestConditions = Test;
ChassisConstants.Results.Combined.RollAngle = Calculate_RollAngle(Vehicle, Test);
[ChassisConstants.Results.Combined.FrontRideHeight, ChassisConstants.Results.Combined.RearRideHeight] = Calculate_PitchRideHeights(Vehicle, Test);
ChassisConstants.Results.Combined.PitchAngle = Calculate_PitchAngle(Vehicle, ChassisConstants.Results.Combined.FrontRideHeight, ChassisConstants.Results.Combined.RearRideHeight);

%% End of Straight
Test.Ay = 0;                            %Test Vehicle Lateral Acceleration [g]
Test.Ax = 0;                            %Test Vehicle Longitudinal Acceleration [g]
Test.v = 26;                            %Test Vehicle Speed [m/s]
Test.rho = 1.2;                         %Air Density
%Results
ChassisConstants.Results.EofS.TestConditions = Test;
ChassisConstants.Results.EofS.RollAngle = 0;
[ChassisConstants.Results.EofS.FrontRideHeight, ChassisConstants.Results.EofS.RearRideHeight] = Calculate_PitchRideHeights(Vehicle, Test);
ChassisConstants.Results.EofS.PitchAngle = Calculate_PitchAngle(Vehicle, ChassisConstants.Results.EofS.FrontRideHeight, ChassisConstants.Results.EofS.RearRideHeight);
