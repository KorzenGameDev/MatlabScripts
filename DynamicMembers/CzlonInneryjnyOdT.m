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
    licz=[k(1)];
    mian=[T(i) 1];
    
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
    legend('k=3 T=3', 'k=3 T=6', 'k=3 T=9');
    title('Cz³on Ró¿niczkuj¹cy Inercyjny od k Transmitancja: G(s) = k / ( Ts +1 ) Równanie ró¿niczkowe: T dy / dt + y = ku');
    grid on;
    hold off;
end