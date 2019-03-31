clear all;
close all;
clc;

k=[3 6 9];
Wn=[300 600 900];
ksi=[0.3 1 2];

for i=1:4
    figure(i)
    hold on
end

for i=1:3
    licz=[k(1)*Wn(i)^2];
    mian=[1 2*ksi(1)*Wn(i) Wn(i)^2];
    
    figure(1)
    step(licz,mian)
    
    figure(2)
    impulse(licz,mian)
    
    figure(3)
    bode(licz,mian)
    
    figure(4)
    nyquist(licz,mian)
end

for i=1:4
    figure(i)
    legend('k=3 Wn=300 ksi=0.3', 'k=3 Wn=600 ksi=0.3', 'k=3 Wn=900 ksi=0.3');
    title('Cz³on Oscylacyjny od Wn Transmitancja: G(s)=( k * Wn^2 ) \ ( s^2 + 2*ksi*Wn*s + Wn^2 ) ');
    grid on;
    hold off;
end