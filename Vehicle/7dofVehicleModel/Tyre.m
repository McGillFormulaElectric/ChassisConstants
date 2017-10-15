classdef Tyre < handle
    %Tyre Class
    
    properties

        %Raw Test Rig Data Test points
        ID = [];                                     %Tyre ID
        Pressure = [];                               %Tyre Pressure [kPa]
        CorneringPower = [];                         %Cornering Power of tyre (Also called Cornering Siffness) [ N/deg ]
        RCF = [];                                    %Residual Cornering Force [N]       
        Fz = [];                                %Vertical Load Test points [N]
        SA = [];                                %Tyre Slip Angle Test points [deg]
        Camber;                                 %Camber Test points [deg]
        CF_SL = [];                             %Cornering force at Super Light Vertical Load [N]
        CF_L = [];                              %Cornering force at Light Vertical Load [N]
        CF_M = [];                              %Cornering force at Medium Vertical Load [N]
        CF_H = [];                              %Cornering force at High Vertical Load [N]
        CF_XH = [];                             %Cornering force at X High Vertical Load [N]
        CF_XXH = [];                            %Cornering force at XX High Vertical Load [N]
        SAT_SL = [];                            %Steering Aligning Torque at Super Light Vertical Load [Nm]
        SAT_L = [];                             %Steering Aligning Torque at Light Vertical Load [Nm]
        SAT_M = [];                             %Steering Aligning Torque at Medium Vertical Load [Nm]
        SAT_H = [];                             %Steering Aligning Torque at High Vertical Load [Nm]      
        SAT_XH = [];                            %Steering Aligning Torque at X High Vertical Load [Nm]      
        SAT_XXH = [];                           %Steering Aligning Torque at XX High Vertical Load [Nm]              
        CamberThrust_SL = [];                   %Camber Thrust at Super Light Vertical Load [N]
        CamberThrust_L = [];                    %Camber Thrust at Light Vertical Load [N]
        CamberThrust_M = [];                    %Camber Thrust at Medium Vertical Load [N]
        CamberThrust_H = [];                    %Camber Thrust at High Vertical Load [N]
        CamberThrust_XH = [];                   %Camber Thrust at X High Vertical Load [N]
        CamberThrust_XXH = [];                  %Camber Thrust at XX High Vertical Load [N]
        CF = [];                                %Cornering force matrix combining L, M, and H data [N]
        SAT = [];                               %Steering Aligning Torque matrix combining L, M, and H data [N]
        CamberThrust = [];                      %Camber Thrust matrix combining L, M, and H data [N]
                
    end
    
    methods
        
%         function OUT = ordinaryMethod(obj)
%         
%             x = Wheel.g(0.001);
%             
%             OUT = x;
%             
%         end
        
    end
    
    methods (Static)
       
        function p = pi(tol)
         [n,d] = rat(pi,tol);
         p = n/d;
            
        end
        
        function OUT = Test(a)
        
            x = Wheel.pi(0.001);
            
            OUT = x * Wheel.Iz * a * Vehicle.v;
            
        end
        
        
    end
    
end

