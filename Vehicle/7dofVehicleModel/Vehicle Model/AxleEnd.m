classdef AxleEnd < handle
    %Axle Class

    properties
        %Subclasses Definition    
        left;
        right;
        %Axle Properties
        track;                              %Axle Track [m]
        zRC;                                %Roll Center height (m - from ground)
        zCG;                                %Effective CG Height (m)
        designRH;                           %Axle design Ride height (mm0
        staticRH;                           %Axle Static Ride height (mm) (delta from designRH
        ARBratio;                           %ARB Rotation to Vehicle Roll
        ARBe;                               %ARB Torsional Stiffness [Nm/deg]
    end
    
    properties (Dependent)
        Ar;                            %Roll Resistance of axle wheel ride rate [Nm/deg]
        BF;                            %Anti Roll Bar Roll Resistance [N/mm]
        K;                             %Axle Roll Stiffness [Nm/deg]
        USM;                           %Unsprung Mass of axle [kg]
        Kr;                            %Axle Ride Rate [N/mm]
    end
    
    methods
        function val = AxleEnd()
            val.left = Corner;
            val.right = Corner;
        end
        function OUT = get.Ar(obj)
            OUT = (obj.Kr*100) * ((obj.track/2)^2) *(pi/180);
        end
        function OUT = get.BF(obj)
            OUT = obj.ARBe / obj.ARBratio;
        end
        function OUT = get.USM(obj)
            OUT = obj.left.USM + obj.right.USM;
        end
        function OUT = get.K(obj)
            OUT = obj.Ar + obj.BF;
        end
        function OUT = get.Kr(obj)
            OUT = (obj.left.Kr + obj.right.Kr);
        end
    end
end

