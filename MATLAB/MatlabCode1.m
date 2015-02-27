% EE3370 Project 1
% MATLAB code for Project 1
% Murphy Granillo
% 02/23/2015

clc      % Clear screen 
clear    % Clear all variables
A = 3; f= 1000; omega = 2*pi*f; 
angle = degtorad(33); T=1/f;
t=linspace(-3000*T,3000*T,1000);
x_t=3*cos(omega*t+angle);
subplot(4,1,1)
plot(t,x_t, 'linewidth',2);grid on
subplot(4,1,2)
u_t=heaviside(t);
plot(t,u_t, 'linewidth',2);grid on
subplot(4,1,3)
plot(t,x_t.*u_t, 'linewidth',2);grid on
subplot(4,1,4)
u_t1=heaviside(t-1);
f_t=cos(omega*t).*sin(omega*t).*u_t1;
plot(t,f_t, ‘linewidth’, 2);grid on
