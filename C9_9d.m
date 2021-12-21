%---------------------------------------------------------------
% EE254 Monson Hayes C9.9d
% Adaptive Noise Cancellation
% by Mahekkumar Pavthawala
% Task - Adaptive Noise Cancellation
%---------------------------------------------------------------
clc
clear all
close all

n=(1:1000);
N=length(n);

%% Noise observation x(n) = d(n) + v(n)
d = sin([1:N]*0.01*pi); %desired
rng(111197);
g = randn(1,N);
v= filter([1 0 0.5],1,g)
x = d + v;

x_ref=zeros(N,1);
ko=25; %shift
x_ref(1:end-ko)=x(ko+1:end);

b = 0.015;
M=20; % order of filter=4
W = zeros(1,M+1); % initializing weights to zero

y=zeros(1,N);
e=y;

%epochs for NLMS
for k=M+1:1:N
    X=x_ref(k:-1:k-M);
    y(k)=W*X;
    e(k)=x(k)-y(k);
    ab=X'*X+0.0001;
    W=W+b/ab*e(k)*X';
end

%plotting results
% subplot(2,1,1);plot(n,d,'b',n,x,'r')
% legend("Desired Signal","Primary Signal")
% title(['NLMS adaptive filter of order M=',num2str(M)])

% subplot(1,1,1);plot(n,y,'r',n,d,'b')
% xlabel('Number of Samples')
% ylabel('Weights')
% legend("Estimate of Desired Signal","Desired Signal")
% title(['NLMS adaptive filter of order M=',num2str(M)])