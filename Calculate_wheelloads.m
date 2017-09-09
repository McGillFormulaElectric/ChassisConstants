function [ OUT_Fz_FL, OUT_Fz_FR, OUT_Fz_RL, OUT_Fz_RR ] = Calculate_wheelLoads( Vehicle, Ay, Ax )
%This function calculates all four wheel loads for a given vehicle under a
%combined longitudinal acceleration and lateral acceleration. 
%Reference: 
%Lateral LT: RCVD p. 683, using the simplified Lateral Load transfer
%calculations.
%Longitudinal LT: RCVD p. 684

%1. Calculate Lateral Load Tranfer deltas

[FLLT, RLLT] = Ay * Calculate_LLT(Vehicle);

deltaLLT_FL = FLLT;
deltaLLT_FR = -FLLT;
deltaLLT_RL = RLLT;
deltaLLT_RR = RLLT;

%2. Longitudinal Load Transfer

LongLT = Ax * Calculate_LongLT(Vehicle);

deltaLongLt_FL = -LongLT;
deltaLongLt_FR = -LongLT;
deltaLongLt_RL = LongLT;
deltaLongLt_RR = LongLT;

%3. Aerodynamic Loads

[deltaAeroLoad_FL, deltaAeroLoad_FR, deltaAeroLoad_RL, deltaAeroLoad_RR] = Calculate_AeroLoad(Vehicle, Test);


%4. Compile all deltas

OUT_Fz_FL = deltaLLT_FL + deltaLongLt_FL + deltaAeroLoad_FL;
OUT_Fz_FR = deltaLLT_FR + deltaLongLt_FR + deltaAeroLoad_FR;
OUT_Fz_RL = deltaLLT_RL + deltaLongLt_RL + deltaAeroLoad_RL;
OUT_Fz_RR = deltaLLT_RR + deltaLongLt_RR + deltaAeroLoad_RR;


end

