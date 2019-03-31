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
    mian=[T(1) 1 0];
    
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
    title('Cz³on Ca³kujacy Rzeczywisty od k Transmitancja: G(s)= k / ( s(Ts + 1))');
    grid on;
    hold off;
end