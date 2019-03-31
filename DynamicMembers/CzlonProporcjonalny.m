clear all;
close all;
clc;

k=[3 6 9];

for i=1:4
    figure(i)
    hold on
end

for i=1:3
    licz=[k(i)];
    mian=[1];
    
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
    legend('k=3', 'k=6', 'k=9');
    title('Cz³on Proporcjonalny Transmitancja: G(s)=k Równanie ró¿niczkowe: y=k*u');
    grid on;
    hold off;
end