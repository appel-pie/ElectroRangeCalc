%electrogustos type 3 conversion
vehMassKerb = 1100; %% [kg]
vehMassDriver = 80; %% [kg]
vehMassfm = 1.05; %% [-]
vehMass = vehMassKerb * vehMassfm + vehMassDriver; %% [kg]
vehcd = 0.37; %% [-] from forums
vehfa = 2.01; %% [m^2] estimated from dimensions
vehdteff = 0.9; % drivetrain efficiency est
vehpwrteff = 0.85; % powertrain efficieny estimating
vehbattsize = 30; %

%model returns 196km range. As of yet untested
%This site is dead now: but someone on a forum is quoted saying:
##From John Jaransens web site. (he is an aerodynamics engineer).
##CD CL
##Notch 0.34 0.38
##Fasty 0.32 0.36
##Square 0.37 0.41

