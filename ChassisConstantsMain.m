%% Chassis Constants Main

%Instructions
%1. Define vehicle Parameters in Vehicle_Definition Script
%2. Run Vehicle Definition block.
%3. Choose Test Case and run block.
%4. If different test case is desired, then can modify directly or ideally
%Create a new test case below.

clc
clear all
close all
%% Vehicle Definition

Vehicle = Vehicle; 
Vehicle_Definition;

%% Test Cases

%% Static
Test.Ay = 0;                            %Test Vehicle Lateral Acceleration [g]
Test.Ax = 0;                            %Test Vehicle Longitudinal Acceleration [g]
Test.v = 0;                             %Test Vehicle Speed [m/s]
Test.rho = 1.18415;                     %Air Density
%Results
ChassisConstants.Results.Static.TestConditions = Test;
ChassisConstants.Results.Static.RollAngle = 0;
ChassisConstants.Results.Static.FrontRideHeight =  Vehicle.axle.front.staticRH;
ChassisConstants.Results.Static.RearRideHeight =  Vehicle.axle.rear.staticRH;
ChassisConstants.Results.Static.PitchAngle = Calculate_PitchAngle(Vehicle, ChassisConstants.Results.Static.FrontRideHeight, ChassisConstants.Results.Static.RearRideHeight);

%% Steady State
Test.Ay = 0;                            %Test Vehicle Lateral Acceleration [g]
Test.Ax = 0;                            %Test Vehicle Longitudinal Acceleration [g]
Test.v = 20;                            %Test Vehicle Speed [m/s]
Test.rho = 1.18415;                     %Air Density
Vehicle.aero.CLA = 4.2;                 %Updated CLA from CFD run
Vehicle.aero.CP = 0.52;                 %Updated CP from CFD run
%Results
ChassisConstants.Results.SS.TestConditions = Test;
ChassisConstants.Results.SS.RollAngle = 0;
[ChassisConstants.Results.SS.FrontRideHeight, ChassisConstants.Results.SS.RearRideHeight] = Calculate_PitchRideHeights(Vehicle, Test);
ChassisConstants.Results.SS.PitchAngle = Calculate_PitchAngle(Vehicle, ChassisConstants.Results.SS.FrontRideHeight, ChassisConstants.Results.SS.RearRideHeight);

%% Pure Cornering
Test.Ay = 2;                            %Test Vehicle Lateral Acceleration [g]
Test.Ax = 0;                            %Test Vehicle Longitudinal Acceleration [g]
Test.v = 16;                            %Test Vehicle Speed [m/s]
Test.rho = 1.18415;                     %Air Density
% Results
ChassisConstants.Results.Cornering.TestConditions = Test;
ChassisConstants.Results.Cornering.RollAngle = Calculate_RollAngle(Vehicle, Test);
[ChassisConstants.Results.Cornering.FrontRideHeight, ChassisConstants.Results.Cornering.RearRideHeight] = Calculate_PitchRideHeights(Vehicle, Test);
ChassisConstants.Results.Cornering.PitchAngle = Calculate_PitchAngle(Vehicle, ChassisConstants.Results.Cornering.FrontRideHeight, ChassisConstants.Results.Cornering.RearRideHeight);

%% Pure Braking
Test.Ay = 0;                            %Test Vehicle Lateral Acceleration [g]
Test.Ax = -2;                           %Test Vehicle Longitudinal Acceleration [g]
Test.v = 25;                            %Test Vehicle Speed [m/s]
Test.rho = 1.18415;                     %Air Density
%Results
ChassisConstants.Results.Braking.TestConditions = Test;
ChassisConstants.Results.Braking.RollAngle = 0;
[ChassisConstants.Results.Braking.FrontRideHeight, ChassisConstants.Results.Braking.RearRideHeight] = Calculate_PitchRideHeights(Vehicle, Test);
ChassisConstants.Results.Braking.PitchAngle = Calculate_PitchAngle(Vehicle, ChassisConstants.Results.Braking.FrontRideHeight, ChassisConstants.Results.Braking.RearRideHeight);

%% Corner Entry
Test.Ay = 1.25;                         %Test Vehicle Lateral Acceleration [g]
Test.Ax = -1.25;                        %Test Vehicle Longitudinal Acceleration [g]
Test.v = 20;                            %Test Vehicle Speed [m/s]
Test.rho = 1.18415;                     %Air Density
%Results
ChassisConstants.Results.CornerEntry.TestConditions = Test;
ChassisConstants.Results.CornerEntry.RollAngle = Calculate_RollAngle(Vehicle, Test);
[ChassisConstants.Results.CornerEntry.FrontRideHeight, ChassisConstants.Results.CornerEntry.RearRideHeight] = Calculate_PitchRideHeights(Vehicle, Test);
ChassisConstants.Results.CornerEntry.PitchAngle = Calculate_PitchAngle(Vehicle, ChassisConstants.Results.CornerEntry.FrontRideHeight, ChassisConstants.Results.CornerEntry.RearRideHeight);

%% Corner Exit
Test.Ay = 1.25;                         %Test Vehicle Lateral Acceleration [g]
Test.Ax = 1;                            %Test Vehicle Longitudinal Acceleration [g]
Test.v = 20;                            %Test Vehicle Speed [m/s]
Test.rho = 1.18415;                     %Air Density
%Results
ChassisConstants.Results.CornerExit.TestConditions = Test;
ChassisConstants.Results.CornerExit.RollAngle = Calculate_RollAngle(Vehicle, Test);
[ChassisConstants.Results.CornerExit.FrontRideHeight, ChassisConstants.Results.CornerExit.RearRideHeight] = Calculate_PitchRideHeights(Vehicle, Test);
ChassisConstants.Results.CornerExit.PitchAngle = Calculate_PitchAngle(Vehicle, ChassisConstants.Results.CornerExit.FrontRideHeight, ChassisConstants.Results.CornerExit.RearRideHeight);

%% End of Straight
Test.Ay = 0;                            %Test Vehicle Lateral Acceleration [g]
Test.Ax = 0;                            %Test Vehicle Longitudinal Acceleration [g]
Test.v = 33;                            %Test Vehicle Speed [m/s]
Test.rho = 1.18415;                     %Air Density
%Results
ChassisConstants.Results.EofS.TestConditions = Test;
ChassisConstants.Results.EofS.RollAngle = 0;
[ChassisConstants.Results.EofS.FrontRideHeight, ChassisConstants.Results.EofS.RearRideHeight] = Calculate_PitchRideHeights(Vehicle, Test);
ChassisConstants.Results.EofS.PitchAngle = Calculate_PitchAngle(Vehicle, ChassisConstants.Results.EofS.FrontRideHeight, ChassisConstants.Results.EofS.RearRideHeight);
