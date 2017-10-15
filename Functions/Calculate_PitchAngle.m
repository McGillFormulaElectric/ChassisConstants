function [ OUT_PitchAngle ] = Calculate_PitchAngle( Vehicle, frontRH, rearRH )
%This function calculates the pitch angle of the vehicle for a given
%frontRH and rearRH

delta_frontRH = frontRH  - Vehicle.axle.front.staticRH;
delta_rearRH = rearRH  - Vehicle.axle.rear.staticRH;

OUT_PitchAngle = atand((delta_frontRH - delta_rearRH)/(Vehicle.wheelbase*1000));

end

