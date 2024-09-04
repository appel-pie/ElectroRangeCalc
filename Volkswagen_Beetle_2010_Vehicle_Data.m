vehMassKerb = 1009; %% [kg]
vehMassDriver = 80; %% [kg]
vehMassfm = 1.05; %% [-]
vehMass = vehMassKerb * vehMassfm + vehMassDriver; %% [kg]
vehcd = 0.38; %% [-] from ecomodder.com
vehfa = 2.108899; %% [m^2] from ecomodder
vehdteff = 0.85; % drivetrain efficiency est
vehpwrteff = 0.9; % powertrain efficieny (estimating a bit better for transaxel, newer car
vehbattsize = 15.552; %

%http://www.evalbum.com/5574
##%Owner	Guillermo
##Location	Capital Federal, Buenos Aires Argentina map
##Web/Email	WebPage email image
##Vehicle	2010 Volkswagen New Beetle
##Motor	HPEVS AC50 72V 3-Phase AC
##132Nm
##Controller	Curtis 1238
##Batteries	69 CALB/Skyenergy CAM72, 3.20 Volt, Lithium Iron Phosphate
##System Voltage	72 Volts
##Charger	72V 3.3kW/h
##DC/DC Converter	500W 72V-12V
##Top Speed	75 MPH (120 KPH)
##Range	70 Miles (112 Kilometers)
##Watt Hours/Mile	16 Wh/Mile
##Curb Weight	2,220 Pounds (1,009 Kilograms)

%model returns 101km
