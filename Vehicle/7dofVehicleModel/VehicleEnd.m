classdef VehicleEnd < handle
    %Axle Class
    
    properties
        %Subclasses Definition
        front;
        rear;
    end
    
    methods
        function val = VehicleEnd()
            val.front = AxleEnd;
            val.rear = AxleEnd;
        end
    end
end

