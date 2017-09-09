function [ OUT_LongLT ] = Calculate_LongLT( Vehicle )
%This function calculates the Longitudinal Load Transfer for a 1G
%Longitudinal Acceleration


OUT_LongLT = Vehicle.h * Vehicle.m * 9.81 / Vehicle.wheelbase;

end

