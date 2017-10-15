%% Vehicle and Test Configurations - MFE19

%% Vehicle Object

Vehicle.m = 245;                            %Total Vehicle Mass [kg]
Vehicle.MD = 0.48;                          %Vehicle Mass distribution [%front]
Vehicle.h = 0.27;                           %Vehicle Centre of Gravity Height [m]
Vehicle.wheelbase = 1.56;                   %Vehicle Wheelbase [m]
Vehicle.hs = 0.25;                          %Vehicle Sprung Mass CG height [m]
Vehicle.designRake = 0;                     %Vehicle Design Rake Angle [deg]

%Aero Parameters
Vehicle.aero.CL = -3.9;                     %Vehicle Coefficient of Lift
Vehicle.aero.CD = 1.53;                      %Vehicle Coefficient of Drag
Vehicle.aero.CP = 0.49;                     %Vehicle Center of Pressure
Vehicle.aero.A = 1.05;                      %Vehicle Reference Area for CL [m^2]
Vehicle.aero.CLA = Vehicle.aero.CL*Vehicle.aero.A; %Vehicle Coefficient of Lift*Ref Area [m^2]

%Axle Parameters
Vehicle.axle.front.track = 1.1176;               %Front Axle Track [m]
Vehicle.axle.rear.track = 1.1176;                %Front Axle Track [m]

Vehicle.axle.front.zRC = 0.0882;              %Front Roll Center height (m - from ground)
Vehicle.axle.rear.zRC = 0.0892;               %Rear Roll Center height (m - from ground)

Vehicle.axle.front.zCG = 0.22;              %Effective CG Height at front axle (m)
Vehicle.axle.rear.zCG = 0.30;               %Effective CG Height at rear axle (m)

Vehicle.axle.front.designRH = 65;           %Vehicle Front Design Ride Height [mm]
Vehicle.axle.rear.designRH = 30;            %Vehicle Rear Design Ride Height

Vehicle.axle.front.staticRH = 0;            %Axle Static Delta Ride height to Design Ride Height (m)
Vehicle.axle.rear.staticRH = 0;             %Axle Static Delta Ride height to Design Ride Height (m)

Vehicle.axle.front.ARBratio = 0.207;            %Front ARB Rotation to Vehicle Roll
Vehicle.axle.rear.ARBratio = 0.231;             %Rear ARB Rotation to Vehicle Roll

Vehicle.axle.front.ARBe = 0;%6.65;                 %Front ARB Torsional Stiffness [Nm/deg]
Vehicle.axle.rear.ARBe = 0;%5;                  %Rear ARB Torsional Stiffness [Nm/deg]

%Corner Parameters
Vehicle.axle.front.left.USM = 15;           %Front Left Unsprung mass [kg]
Vehicle.axle.front.right.USM = 15;          %Front Right Unsprung mass [kg]
Vehicle.axle.rear.left.USM = 15;            %Rear Left Unsprung mass [kg]
Vehicle.axle.rear.right.USM = 15;           %Rear Right Unsprung mass [kg]

Vehicle.axle.front.left.zCG = 0.15;           %Front Left Unsprung CG height [m]
Vehicle.axle.front.right.zCG = 0.15;          %Front Right Unsprung CG height [m]
Vehicle.axle.rear.left.zCG = 0.15;            %Rear Left Unsprung CG height [m]
Vehicle.axle.rear.right.zCG = 0.15;           %Rear Right Unsprung CG height [m]

Vehicle.axle.front.left.springrate = 300;   %Front Left Spring Rate in [lbs/in]
Vehicle.axle.front.right.springrate = 300;  %Front Right Spring Rate in [lbs/in]
Vehicle.axle.rear.left.springrate = 300;    %Rear Left Spring Rate in [lbs/in]
Vehicle.axle.rear.right.springrate = 300;   %Rear Right Spring Rate in [lbs/in]

Vehicle.axle.front.left.preload = 0;        %Front Left Spring Preload [mm]
Vehicle.axle.front.right.preload = 0;       %Front Right Spring Preload [mm]
Vehicle.axle.rear.left.preload = 0;         %Rear Left Spring Preload [mm]
Vehicle.axle.rear.right.preload = 0;        %Rear RightSpring Preload [mm]

Vehicle.axle.front.left.MR = 0.73;           %Front Left DamperDisplacement/WheelDisplacement [unitless]
Vehicle.axle.front.right.MR = 0.73;          %Front Right DamperDisplacement/WheelDisplacement [unitless]
Vehicle.axle.rear.left.MR = 0.72;            %Rear Left DamperDisplacement/WheelDisplacement [unitless]
Vehicle.axle.rear.right.MR = 0.72;           %Rear Right DamperDisplacement/WheelDisplacement [unitless]

Vehicle.axle.front.left.Kt = 100;          %Front Left Tyre Vertical Stiffness [N/mm]
Vehicle.axle.front.right.Kt = 100;         %Front Right Tyre Vertical Stiffness [N/mm]
Vehicle.axle.rear.left.Kt = 100;           %Rear Left Tyre Vertical Stiffness [N/mm]
Vehicle.axle.rear.right.Kt = 100;          %Rear Right Tyre Vertical Stiffness [N/mm]


%% Test Conditions








