function [ OUT_FrontRideHeight, OUT_RearRideHeight ] = Calculate_PitchRideHeights( Vehicle, Test )
%This function calculates the Ride Heights at both axles under a constant
%acceleration.

Test.Ay = 0;

[Fz_FL, Fz_FR, Fz_RL, Fz_RR] = Calculate_wheelLoads( Vehicle, Test );

OUT_FrontRideHeight =  + Vehicle.axle.front.staticRH - ((Fz_FL + Fz_FR) / Vehicle.axle.front.Kr);

OUT_RearRideHeight =  + Vehicle.axle.rear.staticRH - ((Fz_RL + Fz_RR) / Vehicle.axle.rear.Kr);

end

