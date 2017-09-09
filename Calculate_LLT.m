function [ OUT_FLLT, OUT_RLLT ] = Calculate_LLT( Vehicle )
%This function calculates the front and the rear Lateral Load Transfers for
%1G of Lateral Acceleration

OUT_FLLT = (Vehicle.m*9.81*Vehicle.axle.front.track)*(((Vehicle.H*Vehicle.axle.front.K)/(Vehicle.axle.front.K + Vehicle.axle.rear.K))+(Vehicle.b*Vehicle.axle.front.zRC/Vehicle.wheelbase));

OUT_RLLT = (Vehicle.m*9.81*Vehicle.axle.rear.track)*(((Vehicle.H*Vehicle.axle.rear.K)/(Vehicle.axle.front.K + Vehicle.axle.rear.K))+(Vehicle.a*Vehicle.axle.rear.zRC/Vehicle.wheelbase));


end

