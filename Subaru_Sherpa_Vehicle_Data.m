vehMassKerb = 650; %% [kg] just a guess
vehMassDriver = 80; %% [kg]
vehMassfm = 1.05; %% [-]
vehMass = vehMassKerb * vehMassfm + vehMassDriver; %% [kg]
vehcd = 0.4; %% [-] estimate from
vehfa = 1.6; %% [m^2] estimate from dimensions
vehdteff = 0.9; % drivetrain transaxel
vehpwrteff = 0.9; % powertrain
vehbattsize = 24; %24kwh


