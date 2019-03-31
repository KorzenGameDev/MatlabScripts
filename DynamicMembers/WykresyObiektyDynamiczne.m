close all;
clear all;
clc;

fig=8;
k=[2 4 7]
T=[1 2 3]

for i=1:fig
    figure(i)
    hold on;
end

for i=1:length(k)
    licz=[k(1) 0];
    mian=[T(i) 1];
    
    %1
    figure(1)
    step(licz,mian)
    
    %2
    figure(2)
    impulse(licz,mian)
    
    %3
    figure(3)
    bode(licz,mian)
    
    %4
    figure(4)
    nyquist(licz, mian)
    
    licz=[k(i) 0];
    mian=[T(1) 1];
    
    %5
    figure(5)
    step(licz,mian)
    
    %6
    figure(6)
    impulse(licz,mian)
    
    %7
    figure(7)
    bode(licz,mian)
    
    %8
    figure(8)
    nyquist(licz, mian)
end

for i=1:fig
    figure(i)
    grid on;
    hold off;
end