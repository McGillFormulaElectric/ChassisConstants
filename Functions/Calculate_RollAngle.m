function [ OUT_RollAngle ] = Calculate_RollAngle( Vehicle, Test )
%This function calculates the roll angle of the chassis based on the roll
%gradient and the lateral acceleration.

OUT_RollAngle = Vehicle.RollGradient * Test.Ay;

end

