%% EV Energy Use Calculator
%% Load vehicle and test parameters into Vehicle_data.m
%% Ensure you have equal length csv test vectors for Speed and Accel (take from WLTC test data or make your own)
%% If you just save a spreadsheet with 1 second intervals of the speed and acceleration data in km/h and m/s^2
%% and save it as a csv with the name Speed.csv and Accel.csv in the same folder as this script it should load automatically
%% Select regen factor
%% press run!

%% Todo:
%%  - add estimater for auxiliary power use

Airdensity = 1.202; %% [kg/m^3];
Rolling_resistance_coefficent = 0.011;
Regen_factor = 0.3; % factor for how much regen power is captured. tesla
                    % claims around 60-70%, but depends on the driving style as well.

Vehicle_speed = csvread("Speed.csv")*(1/3.6); %%meters per second conversion (reads from csv file)
Vehicle_acceleration = csvread("Accel.csv"); %% read accel from csv file as well

Drag_force = ((1/2)*Airdensity*vehcd*vehfa).*(Vehicle_speed.^2); %%air density, coefficent of drag, frontal area, speed
Accel_force = Vehicle_acceleration*vehMass; %% accleration time total vehicle mass
Rolling_restance_force = 9.8*vehMass*Rolling_resistance_coefficent; %%note: rolling resistance is a single float as it is not calculated as velocity dependant
Total_forces = Drag_force+Accel_force+Rolling_restance_force;

Power = Total_forces.*Vehicle_speed; %% power in watts
Drive_power = (max(Power,0)/(vehdteff*vehpwrteff));%% only positive power used, vehicle drivetain and power efficency applied
Regen_power = min(Power,0)*Regen_factor; %%negative power recaptured according to regen factor
Tractive_power = Drive_power + Regen_power; %%summation on drive and regen power

Power_Kw = Power/1e3; %%unit conversion

Exp_dist_km = trapz(Vehicle_speed)/1e3; %% Find the distance elapsed. trapz is an integration of the data.
                                        %% works for discrete data at 1sec intervals

Total_Energy = trapz(Tractive_power); %% integrates for total test energy
Energy_kwh = Total_Energy/3.6e6; %%unit conversion
kilometerperkwh = Exp_dist_km/Energy_kwh; %%unit conversion
kwhper100km =  (Energy_kwh/Exp_dist_km)*100 %%unit conversion
Range = kilometerperkwh*vehbattsize %% Range calculation

## For Verifying Calculator: plot various matrixies
##figure(1)
##subplot (2, 1, 1)
##  plot(Power_Kw)
##subplot (2, 1, 2)
##  plot(Speed)







