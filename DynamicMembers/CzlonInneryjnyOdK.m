clear all;
close all;
clc;

k=[3 6 9];
T=[3 6 9];

for i=1:4
    figure(i)
    hold on
end

for i=1:3
    licz=[k(i)];
    mian=[T(1) 1];
    
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
    legend('k=3 T=3', 'k=6 T=3', 'k=9 T=3');
    title('Człon Różniczkujący Inercyjny od k Transmitancja: G(s) = k / ( Ts +1 ) Równanie różniczkowe: T dy / dt + y = ku');
    grid on;
    hold off;
end