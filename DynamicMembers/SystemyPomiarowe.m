clear all;
clc;

k=[2 5 7];
% % s=[1 0];
% n=length(k);
% % T=[10 20 50];
% Wn=[300 600 900];
% ksi=[0.3 1 2];

for i=1:1
    figure(i)
hold on;
end


for i=1:3
%     figure(1)
%     step(k(i),s)
%     figure(2)
%     impulse(k(i),s)
%     figure(1)
%    nyquist(k(i),s)
% licz=[k(i)*Wn(1)^2];
% mian=[1 2*ksi(1)*Wn(1) Wn(1)^2];
% nyquist(licz, mian)
% grid on;
licz=[k(i)];
mian=[1];
impulse(licz, mian)
grid on;
end

for i=1:1
    figure(i)
    hold off;
    grid on;
     legend('1.: k=2 ' , '2.: k=5 ', '3.: k=7 ' )
end



