vehMassKerb = 1300; %% [kg] BMW quoted
vehMassDriver = 80; %% [kg]
vehMassfm = 1.05; %% [-]
vehMass = vehMassKerb * vehMassfm + vehMassDriver; %% [kg]
vehcd = 0.32; %% [-] a bit condended
vehfa = 1.96; %% [m^2]
vehdteff = 0.85; % drivetrain efficiency est
vehpwrteff = 0.85; % powertrain efficieny
vehbattsize = 21*0.93; %7 percent remaining quoted

%318iev
##2y ago
##21kwh Lithium Titanate pack (2x 10.5kwh i MiEV packs)
##
##1997 BMW 318i, clutchless 5 speed manual.
##
##~100km range with mixed highway and city driving.
##
##Oddly range seems to increase with highway driving, I’ve done 117km with 7% remaining @ 95km/h whereas
##I struggle to get 100km round the suburbs. (Although the suburbs round here are quite hilly)

% Model Returns 119. I think bmws cd number is a bit optimistic. i also am guessing the vehicle converted
% curb mass may be a bit higher. The batterys are probably not giving their all either

