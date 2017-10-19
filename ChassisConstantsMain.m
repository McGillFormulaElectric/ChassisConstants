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

%% Steady State 3m/s
Test.Ay = 0;                            %Test Vehicle Lateral Acceleration [g]
Test.Ax = 0;                            %Test Vehicle Longitudinal Acceleration [g]
Test.v = 3;                             %Test Vehicle Speed [m/s]
Test.rho = 1.18415;                     %Air Density
%Results
ChassisConstants.Results.SS3.TestConditions = Test;
ChassisConstants.Results.SS3.RollAngle = 0;
[ChassisConstants.Results.SS3.FrontRideHeight, ChassisConstants.Results.SS3.RearRideHeight] = Calculate_PitchRideHeights(Vehicle, Test);
ChassisConstants.Results.SS3.PitchAngle = Calculate_PitchAngle(Vehicle, ChassisConstants.Results.SS3.FrontRideHeight, ChassisConstants.Results.SS3.RearRideHeight);


%% Steady State 6m/s
Test.Ay = 0;                            %Test Vehicle Lateral Acceleration [g]
Test.Ax = 0;                            %Test Vehicle Longitudinal Acceleration [g]
Test.v = 6;                             %Test Vehicle Speed [m/s]
Test.rho = 1.18415;                     %Air Density
%Results
ChassisConstants.Results.SS6.TestConditions = Test;
ChassisConstants.Results.SS6.RollAngle = 0;
[ChassisConstants.Results.SS6.FrontRideHeight, ChassisConstants.Results.SS6.RearRideHeight] = Calculate_PitchRideHeights(Vehicle, Test);
ChassisConstants.Results.SS6.PitchAngle = Calculate_PitchAngle(Vehicle, ChassisConstants.Results.SS6.FrontRideHeight, ChassisConstants.Results.SS6.RearRideHeight);


%% Steady State 9m/s
Test.Ay = 0;                            %Test Vehicle Lateral Acceleration [g]
Test.Ax = 0;                            %Test Vehicle Longitudinal Acceleration [g]
Test.v = 9;                             %Test Vehicle Speed [m/s]
Test.rho = 1.18415;                     %Air Density
%Results
ChassisConstants.Results.SS9.TestConditions = Test;
ChassisConstants.Results.SS9.RollAngle = 0;
[ChassisConstants.Results.SS9.FrontRideHeight, ChassisConstants.Results.SS9.RearRideHeight] = Calculate_PitchRideHeights(Vehicle, Test);
ChassisConstants.Results.SS9.PitchAngle = Calculate_PitchAngle(Vehicle, ChassisConstants.Results.SS9.FrontRideHeight, ChassisConstants.Results.SS9.RearRideHeight);


%% Steady State 12m/s
Test.Ay = 0;                            %Test Vehicle Lateral Acceleration [g]
Test.Ax = 0;                            %Test Vehicle Longitudinal Acceleration [g]
Test.v = 12;                            %Test Vehicle Speed [m/s]
Test.rho = 1.18415;                     %Air Density
%Results
ChassisConstants.Results.SS12.TestConditions = Test;
ChassisConstants.Results.SS12.RollAngle = 0;
[ChassisConstants.Results.SS12.FrontRideHeight, ChassisConstants.Results.SS12.RearRideHeight] = Calculate_PitchRideHeights(Vehicle, Test);
ChassisConstants.Results.SS12.PitchAngle = Calculate_PitchAngle(Vehicle, ChassisConstants.Results.SS12.FrontRideHeight, ChassisConstants.Results.SS12.RearRideHeight);


%% Steady State 15m/s
Test.Ay = 0;                            %Test Vehicle Lateral Acceleration [g]
Test.Ax = 0;                            %Test Vehicle Longitudinal Acceleration [g]
Test.v = 15;                            %Test Vehicle Speed [m/s]
Test.rho = 1.18415;                     %Air Density
%Results
ChassisConstants.Results.SS15.TestConditions = Test;
ChassisConstants.Results.SS15.RollAngle = 0;
[ChassisConstants.Results.SS15.FrontRideHeight, ChassisConstants.Results.SS15.RearRideHeight] = Calculate_PitchRideHeights(Vehicle, Test);
ChassisConstants.Results.SS15.PitchAngle = Calculate_PitchAngle(Vehicle, ChassisConstants.Results.SS15.FrontRideHeight, ChassisConstants.Results.SS15.RearRideHeight);


%% Steady State 18m/s
Test.Ay = 0;                            %Test Vehicle Lateral Acceleration [g]
Test.Ax = 0;                            %Test Vehicle Longitudinal Acceleration [g]
Test.v = 18;                            %Test Vehicle Speed [m/s]
Test.rho = 1.18415;                     %Air Density
%Results
ChassisConstants.Results.SS18.TestConditions = Test;
ChassisConstants.Results.SS18.RollAngle = 0;
[ChassisConstants.Results.SS18.FrontRideHeight, ChassisConstants.Results.SS18.RearRideHeight] = Calculate_PitchRideHeights(Vehicle, Test);
ChassisConstants.Results.SS18.PitchAngle = Calculate_PitchAngle(Vehicle, ChassisConstants.Results.SS18.FrontRideHeight, ChassisConstants.Results.SS18.RearRideHeight);


%% Steady State 21m/s
Test.Ay = 0;                            %Test Vehicle Lateral Acceleration [g]
Test.Ax = 0;                            %Test Vehicle Longitudinal Acceleration [g]
Test.v = 21;                            %Test Vehicle Speed [m/s]
Test.rho = 1.18415;                     %Air Density
%Results
ChassisConstants.Results.SS21.TestConditions = Test;
ChassisConstants.Results.SS21.RollAngle = 0;
[ChassisConstants.Results.SS21.FrontRideHeight, ChassisConstants.Results.SS21.RearRideHeight] = Calculate_PitchRideHeights(Vehicle, Test);
ChassisConstants.Results.SS21.PitchAngle = Calculate_PitchAngle(Vehicle, ChassisConstants.Results.SS21.FrontRideHeight, ChassisConstants.Results.SS21.RearRideHeight);


%% Steady State 24m/s
Test.Ay = 0;                            %Test Vehicle Lateral Acceleration [g]
Test.Ax = 0;                            %Test Vehicle Longitudinal Acceleration [g]
Test.v = 24;                            %Test Vehicle Speed [m/s]
Test.rho = 1.18415;                     %Air Density
%Results
ChassisConstants.Results.SS24.TestConditions = Test;
ChassisConstants.Results.SS24.RollAngle = 0;
[ChassisConstants.Results.SS24.FrontRideHeight, ChassisConstants.Results.SS24.RearRideHeight] = Calculate_PitchRideHeights(Vehicle, Test);
ChassisConstants.Results.SS24.PitchAngle = Calculate_PitchAngle(Vehicle, ChassisConstants.Results.SS24.FrontRideHeight, ChassisConstants.Results.SS24.RearRideHeight);


%% Steady State 27m/s
Test.Ay = 0;                            %Test Vehicle Lateral Acceleration [g]
Test.Ax = 0;                            %Test Vehicle Longitudinal Acceleration [g]
Test.v = 27;                            %Test Vehicle Speed [m/s]
Test.rho = 1.18415;                     %Air Density
%Results
ChassisConstants.Results.SS27.TestConditions = Test;
ChassisConstants.Results.SS27.RollAngle = 0;
[ChassisConstants.Results.SS27.FrontRideHeight, ChassisConstants.Results.SS27.RearRideHeight] = Calculate_PitchRideHeights(Vehicle, Test);
ChassisConstants.Results.SS27.PitchAngle = Calculate_PitchAngle(Vehicle, ChassisConstants.Results.SS27.FrontRideHeight, ChassisConstants.Results.SS27.RearRideHeight);


%% Steady State 30m/s
Test.Ay = 0;                            %Test Vehicle Lateral Acceleration [g]
Test.Ax = 0;                            %Test Vehicle Longitudinal Acceleration [g]
Test.v = 30;                            %Test Vehicle Speed [m/s]
Test.rho = 1.18415;                     %Air Density
%Results
ChassisConstants.Results.SS30.TestConditions = Test;
ChassisConstants.Results.SS30.RollAngle = 0;
[ChassisConstants.Results.SS30.FrontRideHeight, ChassisConstants.Results.SS30.RearRideHeight] = Calculate_PitchRideHeights(Vehicle, Test);
ChassisConstants.Results.SS30.PitchAngle = Calculate_PitchAngle(Vehicle, ChassisConstants.Results.SS30.FrontRideHeight, ChassisConstants.Results.SS30.RearRideHeight);


%% Steady State 33m/s
Test.Ay = 0;                            %Test Vehicle Lateral Acceleration [g]
Test.Ax = 0;                            %Test Vehicle Longitudinal Acceleration [g]
Test.v = 33;                            %Test Vehicle Speed [m/s]
Test.rho = 1.18415;                     %Air Density
%Results
ChassisConstants.Results.SS33.TestConditions = Test;
ChassisConstants.Results.SS33.RollAngle = 0;
[ChassisConstants.Results.SS33.FrontRideHeight, ChassisConstants.Results.SS33.RearRideHeight] = Calculate_PitchRideHeights(Vehicle, Test);
ChassisConstants.Results.SS33.PitchAngle = Calculate_PitchAngle(Vehicle, ChassisConstants.Results.SS33.FrontRideHeight, ChassisConstants.Results.SS33.RearRideHeight);


