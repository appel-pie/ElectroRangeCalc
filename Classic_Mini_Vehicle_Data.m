vehMassKerb = 700; %% [kg] just a guess
vehMassDriver = 80; %% [kg]
vehMassfm = 1.05; %% [-]
vehMass = vehMassKerb * vehMassfm + vehMassDriver; %% [kg]
vehcd = 0.5; %% [-] from forums
vehfa = 1.89; %% [m^2] from forums
vehdteff = 0.9; % drivetrain efficiency est of leaf
vehpwrteff = 0.9; % powertrain efficieny estimating a bit better for transaxel
vehbattsize = 22*0.8; %22kwh using 80 percent

%from reddit
##Tremelune
##•
##2y ago
##Classic Mini with a Leaf drivetrain.
##
##22kWh battery, maybe 80% of that really…
##
##I get about 60-80mi

% user says 97 - 128km, model says 125.5


