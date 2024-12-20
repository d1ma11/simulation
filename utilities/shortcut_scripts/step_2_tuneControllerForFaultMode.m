% Load system and launch Control System Tuner session
load_system("MultirotorModelControlDesign.slx");
controlSystemTuner('ControlSystemTunerSession_FaultFlightMode.mat');
