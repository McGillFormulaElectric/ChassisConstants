classdef Vehicle < handle
    %This is the vehicle class. This vehicle model is structured for...
    
    
    properties  %Subclasses      
        %Subclasses Definition
        axle;        
        aero;   
    end
    
    properties
        %Upper-Level Vehicle Parameters
        m;                                      %Total Vehicle Mass [kg]
        MD;                                     %Vehicle Mass distribution [%front]
        h;                                      %Vehicle Centre of Gravity Height [m]
        wheelbase;                              %Vehicle Wheelbase [m]
        hs;                                     %Vehicle Sprung Mass CG height [m]
        designRake;                             %Design Rake Angle [deg]
    end
    
    properties (Dependent)
        %Upper-Level Vehicle Parameters
        a;                              %Distance between Vehicle CG and front axle [m]
        b;                              %Distance between Vehicle CG and rear axle [m]
        h2;                             %Sprung Mass Moment arm around Roll Axis [m]
        H;                              %Distance between vehicle CG and Roll Centre at CG [m]
        as;                             %Sprung Mass Distribution [%front]
        SM;                             %Sprung mass [kg]
        SprungMassFrontSMF;                            %Front Sprung mass [kg]
        SMF;                            %Front Sprung mass [kg]
        SMR;                            %Rear Sprung mass [kg]
        TM;                             %Track at CG position [m]
        RCM;                            %Roll Centre Height at CG Vehicle x-position
        K;                              %Vehicle Roll Stiffness [Nm/deg]
        RSD;                            %Roll Stiffness Distribution [%front]
        RollGradient;                   %Vehicle Roll Gradient [deg/g]
        staticRake;                     %Vehicle Rake Angle [deg]
    end
    
    methods
        function val = Vehicle()
           val.axle = VehicleEnd;
           val.aero = Aerodynamics;
        end
        function OUT = get.a(obj)
            OUT = (1 - obj.MD) * obj.wheelbase; 
        end
        function OUT = get.b(obj)
            OUT = obj.MD * obj.wheelbase;
        end
        function OUT = get.SM(obj)
            OUT = obj.m - obj.axle.front.left.USM - obj.axle.front.right.USM ...
                            - obj.axle.rear.left.USM - obj.axle.rear.right.USM;
        end
        function OUT = get.SMF(obj)
            FUM =  obj.axle.front.left.USM + obj.axle.front.right.USM;
            SWD = ((obj.MD * obj.m) - (FUM))/obj.SM;
            OUT = SWD * obj.SM;
        end
        function OUT = get.SMR(obj) 
            OUT = obj.SM - obj.SMF;
        end
        function OUT = get.TM(obj)
            adj = obj.MD * obj.wheelbase;
            teta = atan(((obj.axle.front.track-obj.axle.rear.track)/2)/obj.wheelbase);
            x = adj*tan(teta);
            OUT = obj.axle.front.track + (2 * x);
        end
        function OUT = get.RCM(obj)
            if obj.axle.front.zRC < obj.axle.rear.zRC
                OUT = obj.axle.front.zRC + (obj.wheelbase*obj.MD*(obj.axle.rear.zRC - obj.axle.front.zRC));
            else
                OUT = obj.axle.rear.zRC + (obj.wheelbase*(1-obj.MD)*(obj.axle.front.zRC - obj.axle.rear.zRC));
            end
        end
        function OUT = get.RSD(obj)
            OUT = 100 * obj.axle.front.K / (obj.axle.front.K + obj.axle.rear.K);
        end
        function OUT = get.h2(obj)
            teta = atan((obj.axle.rear.zRC-obj.axle.front.zRC)/obj.wheelbase);
            if obj.axle.front.zRC < obj.axle.rear.zRC
                x1 = obj.axle.front.zRC + (obj.as*(obj.axle.rear.zRC - obj.axle.front.zRC));
            else
                x1 = obj.axle.rear.zRC + (obj.as*(obj.axle.front.zRC - obj.axle.rear.zRC));
            end
            x2 = obj.hs - x1;
            OUT = x2 * cos(teta);
        end
        function OUT = get.H(obj)
            OUT = obj.h-obj.RCM;
        end
        function OUT = get.RollGradient(obj)
            OUT = -(obj.m * 9.81 * obj.H)/(obj.axle.front.K + obj.axle.rear.K);
        end
        function OUT = get.as(obj)
            OUT = 100 * obj.SMF/(obj.SMF + obj.SMR);
        end
        function OUT = get.staticRake(obj)
            OUT = obj.designRake + atand(((obj.axle.rear.staticRH)-(obj.axle.front.staticRH))/obj.wheelbase);
        end
    end
end

