classdef Corner < handle
    %Corner Class
    
    
    properties
        %Subclasses Definition
        USM;                            %Unsprung mass [kg]
        zCG;                            %Unsprung CG height [m]
        springrate;                     %Spring Rate in [lbs/in]
        preload;                        %Spring Preload [mm]
        MR;                             %DamperDisplacement/WheelDisplacement [unitless]
        Kt;                             %Tyre Vertical Stiffness [N/mm]
    end
    
    properties (Dependent)
        SS;                             %Spring Stiffness [N/mm]
        Wr;                             %Wheel Centre Spring Rate [N/mm]
        Kr;                             %Ride Rate [N/mm]
    end
    
    methods
        
        function OUT = get.SS(obj)
            OUT = (obj.springrate * 0.175126835);         %Converting factor between lbs/inch to N/m
        end
        function OUT = get.Wr(obj)
            OUT = obj.SS * (obj.MR^2);
        end
        function OUT = get.Kr(obj)
            OUT = (obj.Wr*obj.Kt)/(obj.Wr + obj.Kt);
        end
    end
    
end

