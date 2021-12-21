% Adaptive Noise Cancellation Algorithm
% by Mahekkumar Maynkkumar Pavthawala
% EE 254 | Adaptive Signal Processing
% San Jose State University 2021-2023
% Citation - MathWorks
% ----------------------------------------------------------------
clc;
close all;
clear all;

t=1:0.025:5;

desired=5*sin(2*3.*t); % Desired Output
 
noise=5*sin(2*50*3.*t); % Noise Signal
 
refer=5*sin(2*50*3.*t+ 3/20); % Reference Signal
 
primary=desired+noise; % Primary Signal
 
subplot(4,1,1);
plot(t,desired);
title('Desired Output')
xlabel('Time')
ylabel('desired');
 
subplot(4,1,2);
plot(t,refer);
title('Reference Signal')
xlabel('Time')
ylabel('refer'); 
 
subplot(4,1,3);
plot(t,primary);
title('Primary Input')
xlabel('Time')
ylabel('primary');
 
order=8;
mu=0.005;
n=length(primary)
delayed=zeros(1,order);
adap=zeros(1,order);
cancelled=zeros(1,n);
 
for k=1:n,
    delayed(1)=refer(k);
    y=delayed*adap';
    cancelled(k)=primary(k)-y;
    adap = adap + 2*mu*cancelled(k) .* delayed;
    delayed(2:order)=delayed(1:order-1);
end
 
subplot(4,1,4);
plot(t,cancelled);
ylabel('cancelled');