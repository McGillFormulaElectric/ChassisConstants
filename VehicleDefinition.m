%% Vehicle Parameters


%% Vehicle Chassis Parameters
Vehicle.m = 175;                        %Vehicle mass [kg]
Vehicle.weightdistribution = 45;      %Vehicle Weight Distribution [%front]


%% Vehicle Suspension Parameters

Vehicle.l = 1.2;                        %Vehicle Wheelbase [m]
Vehicle.front.track = 1;                %Vehicle front trackwidth [m]
Vehicle.rear.track = 1;                 %Vehicle rear trackwidth [m]
Vehicle.front.RCH = 0.3;                 %Vehicle Front Roll Center Height [m]
Vehicle.rear.RCH = 0.45;                    %Vehicle Rear Roll Center Height [m]
Vehicle.front.motiondamper = 0.6;      %Damper Displacement / Wheel Displacement
Vehicle.rear.motionratiodamper = 0.6;      %Damper Displacement / Wheel Displacement
Vehicle.front.springrate = 350;             %Front Spring rate [lbs/inch]
Vehicle.front.springpreload = 0;            %Front Spring Preload [mm]
Vehicle.rear.springrate = 350;             %Front Spring rate [lbs/inch]
Vehicle.rear.springpreload = 0;            %Front Spring Preload [mm]



%% Aero Parameters
Vehicle.aero.CL = -3.5;
Vehicle.aero.CD = 1.6;
Vehicle.aero.CP = 0.45;             %Aerodynamic Center of Pressure [%front]




