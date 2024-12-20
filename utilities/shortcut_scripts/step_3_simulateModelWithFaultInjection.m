% This script initializes workspace variables for the UAV Toolbox Reference
% Application.

% Set guidance type to Full Guidance
guidanceType = 1;

% Configure the drone as a Multicopter
isDroneMulticopter = 1;

% Do not use full photo realistic sim
isPhotoRealisticSim = 2;

% High fidelity plant model with gain scheduled control
plantModelFi = 2;

% No show for Lidar Point Cloud
showLidarPointCloud = 0;

% No show the Video Viewer
showVideoViewer = 0;

% Show the UAV Animation as it flies
showUAVAnimation = 0;

% Use heading in the guidance model
useHeading = 1;

% Set model to takeoff at initial condition
startFlightTime = 0;

% Do not use QGroundControl
useQGC = 0;

% Simulation Stop Time
simTime = 40;

% Fault injection time
faultTime = 30;

% Rotor thrust gain
rotor4ThrustGain = 1;

% New Obstacle Avoidance
isNewOA = 0;

% Open data dictionary
dataDict = Simulink.data.dictionary.open('uavPackageDeliveryDataDict.sldd');

% Load system and launch Control System Tuner session
open_system("uavInflightFailureRecovery.slx");
sim("uavInflightFailureRecovery.slx");

% Discard data dictionary changes
discardChanges(dataDict);
clear('dataDict');
