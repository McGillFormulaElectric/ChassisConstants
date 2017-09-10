%% Write to Excel File

filename = 'MFE19_ChassisConstantsReport_A1.xlsx';
A = [ChassisConstants.Results.Cornering.RollAngle];
xlswrite(filename, A, 'Results', 'C16')