function [ OUT_AeroLoad_FL, OUT_AeroLoad_FR, OUT_AeroLoad_RL, OUT_AeroLoad_RR ] = Calculate_AeroLoad( Vehicle, Test )
%This function calculates the load delta on each corner from aerodynamic
%forces.

OUT_AeroLoad_FL = 0.5 * Test.rho * (Test.v)^2 * Vehicle.aero.CL * Vehicle.aero.CP / 2;
OUT_AeroLoad_FR = 0.5 * Test.rho * (Test.v)^2 * Vehicle.aero.CL * Vehicle.aero.CP / 2;
OUT_AeroLoad_RL = 0.5 * Test.rho * (Test.v)^2 * Vehicle.aero.CL * (1-Vehicle.aero.CP) / 2;
OUT_AeroLoad_RR = 0.5 * Test.rho * (Test.v)^2 * Vehicle.aero.CL * (1-Vehicle.aero.CP) / 2;


end

