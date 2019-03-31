clear all;
close all;
clc;

k=[3 6 9];
T=[1 5 10];
T2=[3 6 9];
ksi=[0.1 1 2];

%charaktrystyki czasowe
for i=1:12
    figure(i)
    hold on;
end

%obiekt innercyjny I rzêdu
for i=1:3
    licz=[k(1)];
    mian=[T(i) 1];
    figure(1)
    bode(licz, mian);
    figure(2)
    nyquist(licz, mian);
end
for i=1:3
    licz=[k(i)];
    mian=[T(1) 1];
    figure(1)
    bode(licz, mian);
    figure(2)
    nyquist(licz, mian);
end
figure(1)
title('Obiekt innercyjny I rzêdu charakterystyka logarytmiczna');
legend('k=const T=1','k=const T=5', 'k=const T=10', 'k=3 T=const', 'k=6 T=const', 'k=9 T=const')
figure(2)
title('obiekt innercyjny I rzêdu charakterystyka amplitudowo - fazowa');
legend('k=const T=1','k=const T=5', 'k=const T=10', 'k=3 T=const', 'k=6 T=const', 'k=9 T=const')
%obiekt inercyjny II rzêdu o transmitancji:
for i=1:3
    licz=[k(i)];
    mian=[T(1)*T2(1) T(1)+T2(1) 1];
    figure(3)
    bode(licz, mian);
    figure(4)
    nyquist(licz, mian);
end
for i=1:3
    licz=[k(1)];
    mian=[T(i)*T2(1) T(i)+T2(1) 1];
    figure(3)
    bode(licz, mian);
    figure(4)
    nyquist(licz, mian);
end
for i=1:3
    licz=[k(1)];
    mian=[T(1)*T2(i) T(1)+T2(i) 1];
    figure(3)
    bode(licz, mian);
    figure(4)
    nyquist(licz, mian);
end
figure(3)
title('Obiekt inercyjny II rzêdu charakterystyka logarytmiczna');
legend('k=3 T1=const(1) T2=const(3)','k=6 T1=const(1), T2=const(3)', 'k=9 T1=const(1) T2=const(3)', 'k=const(3) T1=1 T2=const(3)','k=const(3) T1=5, T2=const(3)', 'k=const(3) T1=10 T2=const(3)','k=const(3) T1=const(5) T2=3', 'k=const(3) T1=const(5) T2=6','k=const(3) T1=const(5) T2=9')
figure(4)
title('Obiekt inercyjny II rzêdu charakterystyka amplitudowo - fazowa');
legend('k=3 T1=const(1) T2=const(3)','k=6 T1=const(1), T2=const(3)', 'k=9 T1=const(1) T2=const(3)', 'k=const(3) T1=1 T2=const(3)','k=const(3) T1=5, T2=const(3)', 'k=const(3) T1=10 T2=const(3)','k=const(3) T1=const(5) T2=3', 'k=const(3) T1=const(5) T2=6','k=const(3) T1=const(5) T2=9')
%obiekt oscylacyjny II rzêdu o transmitancji:
for i=1:3
    licz=[k(i)];
    mian=[T(1) 2*ksi(1)*T(1) 1];
    figure(5)
    bode(licz, mian);
    figure(6)
    nyquist(licz, mian);
end
for i=1:3
    licz=[k(1)];
    mian=[T(i) 2*ksi(1)*T(i) 1];
    figure(5)
    bode(licz, mian);
    figure(6)
    nyquist(licz, mian);
end
for i=1:3
    licz=[k(1)];
    mian=[T(1) 2*ksi(i)*T(1) 1];
    figure(5)
    bode(licz, mian);
    figure(6)
    nyquist(licz, mian);
end
figure(5)
title('Obiekt oscylacyjny II rzêdu charakterystyka logarytmiczna');
legend('k=3 T=const(1) ksi=const(0.1)','k=6 T=const(1) ksi=const(0.1)','k=9 T=const(1) ksi=const(0.1)','k=const(3) T=1 ksi=const(0.1)','k=const(3) T=5 ksi=const(0.1)','k=const(3) T=10 ksi=const(0.1)','k=const(3) T=const(1) ksi=0.1','k=const(3) T=const(1) ksi=1','k=const(3) T=const(1) ksi=2')
figure(6)
title('Obiekt oscylacyjny II rzêdu charakterystyka amplitudowo - fazowa');
legend('k=3 T=const(1) ksi=const(0.1)','k=6 T=const(1) ksi=const(0.1)','k=9 T=const(1) ksi=const(0.1)','k=const(3) T=1 ksi=const(0.1)','k=const(3) T=5 ksi=const(0.1)','k=const(3) T=10 ksi=const(0.1)','k=const(3) T=const(1) ksi=0.1','k=const(3) T=const(1) ksi=1','k=const(3) T=const(1) ksi=2')

%obiekt ca³kuj¹cy z inercj¹ I rzêdu o transmitancji:
for i=1:3
    licz=[k(i)];
    mian=[T(1)*T2(1) T2(1) 0];
    figure(7)
    bode(licz, mian);
    figure(8)
    nyquist(licz, mian);
end
for i=1:3
    licz=[k(1)];
    mian=[T(i)*T2(1) T2(1) 0];
    figure(7)
    bode(licz, mian);
    figure(8)
    nyquist(licz, mian);
end
for i=1:3
    licz=[k(1)];
    mian=[T(1)*T2(i) T2(i) 0];
    figure(7)
    bode(licz, mian);
    figure(8)
    nyquist(licz, mian);
end
figure(7)
title('Obiekt ca³kuj¹cy z inercj¹ I rzêdu charakterystyka logarytmiczna');
legend('k=3 T=const(1) Ti=const(3)','k=6 T=const(1) Ti=const(3)','k=9 T=const(1) Ti=const(3)','k=const(3) T=1 Ti=const(3)','k=const(3) T=5 Ti=const(3)','k=const(3) T=10 Ti=const(3)','k=const(3) T=const(1) Ti=3','k=const(3) T=const(1) Ti=6','k=const(3) T=const(1) Ti=9')
figure(8)
title('Obiekt ca³kuj¹cy z inercj¹ I rzêdu charakterystyka amplitudowo - fazowa');
legend('k=3 T=const(1) Ti=const(3)','k=6 T=const(1) Ti=const(3)','k=9 T=const(1) Ti=const(3)','k=const(3) T=1 Ti=const(3)','k=const(3) T=5 Ti=const(3)','k=const(3) T=10 Ti=const(3)','k=const(3) T=const(1) Ti=3','k=const(3) T=const(1) Ti=6','k=const(3) T=const(1) Ti=9')
%obiekt ró¿niczkuj¹cy rzeczywisty o transmitancji:
for i=1:3
    licz=[T2(1) k(i)];
    mian=[T(1) 1];
    figure(9)
    bode(licz, mian);
    figure(10)
    nyquist(licz, mian);
end
for i=1:3
    licz=[T2(i) k(1)];
    mian=[T(1) 1];
    figure(9)
    bode(licz, mian);
    figure(10)
    nyquist(licz, mian);
end
for i=1:3
    licz=[T2(1) k(1)];
    mian=[T(i) 1];
    figure(9)
    bode(licz, mian);
    figure(10)
    nyquist(licz, mian);
end
figure(9)
title('Obiekt ró¿niczkuj¹cy rzeczywisty charakterystyka logarytmiczna');
legend('k=3 T=const(1) Td=const(3)','k=6 T=const(1) Td=const(3)','k=9 T=const(1) Td=const(3)','k=const(3) T=const(1) Td=3','k=const(3) T=const(1) Td=6','k=const(3) T=const(1) Td=9','k=const(3) T=1 Td=const(3)','k=const(3) T=5 Td=const(3)','k=const(3) T=10 Td=const(3)')
figure(10)
title('Obiekt ró¿niczkuj¹cy rzeczywisty charakterystyka amplitudowo - fazowa');
legend('k=3 T=const(1) Td=const(3)','k=6 T=const(1) Td=const(3)','k=9 T=const(1) Td=const(3)','k=const(3) T=const(1) Td=3','k=const(3) T=const(1) Td=6','k=const(3) T=const(1) Td=9','k=const(3) T=1 Td=const(3)','k=const(3) T=5 Td=const(3)','k=const(3) T=10 Td=const(3)')
%obiekt inercyjny I rzêdu z opóŸnieniem o transmitancji:
tau=10;
n=10;
[del_l,del_m] = pade(tau ,n);
for i=1:3
    licz=[k(i)];
    mian=[T(1) 1];
    [licz_d,mian_d] = series(del_l,del_m ,licz, mian);
    figure(11)
    bode(licz_d, mian_d);
    figure(12)
    nyquist(licz_d, mian_d);
end
for i=1:3
    licz=[k(1)];
    mian=[T(i) 1];
    [licz_d,mian_d] = series(del_l,del_m ,licz, mian);
    figure(11)
    bode(licz_d, mian_d);
    figure(12)
    nyquist(licz_d, mian_d);
end
figure(11)
title('Obiekt inercyjny I rzêdu z opóŸnieniem charakterystyka logarytmiczna');
legend('k=3 T=const(1) Taus=const(10) N=const(10)','k=6 T=const(1) Tau=const(10) N=const(10)','k=9 T=const(1) Tau=const(10) N=const(10)','k=const(3) T=1 Tau=const(10) N=const(10)','k=const(3) T=5 Tau=const(10) N=const(10)','k=const(3) T=10 Tau=const(10) N=const(10)')
figure(12)
title('Obiekt inercyjny I rzêdu z opóŸnieniem charakterystyka amplitudowo - fazowa');
legend('k=3 T=const(1) Tau=const(10) N=const(10)','k=6 T=const(1) Tau=const(10) N=const(10)','k=9 T=const(1) Tau=const(10) N=const(10)','k=const(3) T=1 Tau=const(10) N=const(10)','k=const(3) T=5 Tau=const(10) N=const(10)','k=const(3) T=10 Tau=const(10) N=const(10)')
for i=1:12
    figure(i)
    hold off;
    grid on;
end
