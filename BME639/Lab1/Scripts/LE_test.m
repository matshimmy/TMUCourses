%% PART A
% Turn off the specific warning
warning('off', 'MATLAB:table:ModifiedVarnames');
relaxedBP = readDirectoryCSV("..\Data\nex1.csv");
exerciseBP = readDirectoryCSV("..\Data\exersise.csv");
subplot(2,2,1);
Plotter('Time (s)', 'Blood Pressure Force', 'Relaxed Blood Pressure Force', 2, relaxedBP.ElapsedTime, relaxedBP.BloodPressureECG, 0, duration(0, 4, 0),'#487F9C');

subplot(2,2,2);
Plotter('Time (s)', 'PPG (Relative Volume Δ)', 'Relaxed PPG', 2, relaxedBP.ElapsedTime, relaxedBP.PPGPulseOx1, 0, duration(0, 4, 0), '#DB435E');

subplot(2,2,3);
Plotter('Time (s)', 'Blood Pressure Force', 'Exercising Blood Pressure Force', 2, exerciseBP.ElapsedTime, exerciseBP.BloodPressureECG, duration(0, 1, 0), duration(0, 3, 30), '#487F9C');

subplot(2,2,4);
Plotter('Time (s)', 'PPG (Relative Volume Δ)', 'Exercising PPG', 2, exerciseBP.ElapsedTime, exerciseBP.PPGPulseOx1, duration(0, 1, 0), duration(0, 3, 30),'#DB435E');



% Turn off the specific warning
warning('off', 'MATLAB:table:ModifiedVarnames');
relaxedBP2 = readDirectoryCSV("..\Data\nex2.csv");

subplot(2,2,1);
Plotter('Time (s)', 'Blood Pressure Force', 'Relaxed Blood Pressure Force', 2, relaxedBP2.ElapsedTime, relaxedBP2.BloodPressureECG, 0, duration(0, 4, 0),'#487F9C');

subplot(2,2,2);
Plotter('Time (s)', 'PPG (Relative Volume Δ)', 'Relaxed PPG', 2, relaxedBP2.ElapsedTime, relaxedBP2.PPGPulseOx1, 0, duration(0, 4, 0), '#DB435E');

subplot(2,2,3);
Plotter('Time (s)', 'Blood Pressure Force', 'Exercising Blood Pressure Force', 2, exerciseBP.ElapsedTime, exerciseBP.BloodPressureECG, duration(0, 1, 0), duration(0, 3, 30), '#487F9C');

subplot(2,2,4);
Plotter('Time (s)', 'PPG (Relative Volume Δ)', 'Exercising PPG', 2, exerciseBP.ElapsedTime, exerciseBP.PPGPulseOx1, duration(0, 1, 0), duration(0, 3, 30),'#DB435E');





% Turn off the specific warning
warning('off', 'MATLAB:table:ModifiedVarnames');
relaxedBP3 = readDirectoryCSV("..\Data\nex3.csv");

subplot(2,2,1);
Plotter('Time (s)', 'Blood Pressure Force', 'Relaxed Blood Pressure Force', 2, relaxedBP3.ElapsedTime, relaxedBP3.BloodPressureECG, 0, duration(0, 4, 0),'#487F9C');

subplot(2,2,2);
Plotter('Time (s)', 'PPG (Relative Volume Δ)', 'Relaxed PPG', 2, relaxedBP3.ElapsedTime, relaxedBP3.PPGPulseOx1, 0, duration(0, 4, 0), '#DB435E');

subplot(2,2,3);
Plotter('Time (s)', 'Blood Pressure Force', 'Exercising Blood Pressure Force', 2, exerciseBP.ElapsedTime, exerciseBP.BloodPressureECG, duration(0, 1, 0), duration(0, 3, 30), '#487F9C');

subplot(2,2,4);
Plotter('Time (s)', 'PPG (Relative Volume Δ)', 'Exercising PPG', 2, exerciseBP.ElapsedTime, exerciseBP.PPGPulseOx1, duration(0, 1, 0), duration(0, 3, 30),'#DB435E');