clear all;
close all;
clc;

k=[3 6 9];

for i=1:2
    figure(i)
    hold on
end

for i=1:3
    licz=[k(i) 0];
    mian=[1];
    
    figure(1)
    bode(licz,mian)
    
    figure(2)
    nyquist(licz,mian)
end

for i=1:2
    figure(i)
    legend('k=3', 'k=6', 'k=9');
    title('Cz³on Ró¿niczkuj¹cy Idealny Transmitancja: G(s)=ks Równanie ró¿niczkowe: y=kdu / dt');
    grid on;
    hold off;
end