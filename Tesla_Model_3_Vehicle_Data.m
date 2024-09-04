vehMassKerb = 1700; %% [kg]
vehMassDriver = 80; %% [kg]
vehMassfm = 1.05; %% [-]
vehMass = vehMassKerb * vehMassfm + vehMassDriver; %% [kg]
vehcd = 0.219; %% co-efficient of drag [-] from tesla
vehfa = 2.41; %% frontal area, [m^2] approximated
vehdteff = 0.90 % drivetrain efficiency est
vehpwrteff = 0.90 % powertrain efficieny
vehbattsize = 57.5 %
%model says 16 kwh/km, 358.2km range. relatively in line with online sources for real world efficien
