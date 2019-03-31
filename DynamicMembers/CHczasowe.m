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

%obiekt innercyjny I rz�du
for i=1:3
    licz=[k(1)];
    mian=[T(i) 1];
    figure(1)
    step(licz, mian);
    figure(2)
    impulse(licz, mian);
end
for i=1:3
    licz=[k(i)];
    mian=[T(1) 1];
    figure(1)
    step(licz, mian);
    figure(2)
    impulse(licz, mian);
end
figure(1)
title('Obiekt innercyjny I rz�du odpowied� skokowa');
legend('k=const T=1','k=const T=5', 'k=const T=10', 'k=3 T=const', 'k=6 T=const', 'k=9 T=const')
figure(2)
title('obiekt innercyjny I rz�du odpowied� impulsowa');
legend('k=const T=1','k=const T=5', 'k=const T=10', 'k=3 T=const', 'k=6 T=const', 'k=9 T=const')
%obiekt inercyjny II rz�du o transmitancji:
for i=1:3
    licz=[k(i)];
    mian=[T(1)*T2(1) T(1)+T2(1) 1];
    figure(3)
    step(licz, mian);
    figure(4)
    impulse(licz, mian);
end
for i=1:3
    licz=[k(1)];
    mian=[T(i)*T2(1) T(i)+T2(1) 1];
    figure(3)
    step(licz, mian);
    figure(4)
    impulse(licz, mian);
end
for i=1:3
    licz=[k(1)];
    mian=[T(1)*T2(i) T(1)+T2(i) 1];
    figure(3)
    step(licz, mian);
    figure(4)
    impulse(licz, mian);
end
figure(3)
title('Obiekt inercyjny II rz�du odpowied� skokowa');
legend('k=3 T1=const(1) T2=const(3)','k=6 T1=const(1), T2=const(3)', 'k=9 T1=const(1) T2=const(3)', 'k=const(3) T1=1 T2=const(3)','k=const(3) T1=5, T2=const(3)', 'k=const(3) T1=10 T2=const(3)','k=const(3) T1=const(5) T2=3', 'k=const(3) T1=const(5) T2=6','k=const(3) T1=const(5) T2=9')
figure(4)
title('Obiekt inercyjny II rz�du odpowied� impulsowa');
legend('k=3 T1=const(1) T2=const(3)','k=6 T1=const(1), T2=const(3)', 'k=9 T1=const(1) T2=const(3)', 'k=const(3) T1=1 T2=const(3)','k=const(3) T1=5, T2=const(3)', 'k=const(3) T1=10 T2=const(3)','k=const(3) T1=const(5) T2=3', 'k=const(3) T1=const(5) T2=6','k=const(3) T1=const(5) T2=9')
%obiekt oscylacyjny II rz�du o transmitancji:
for i=1:3
    licz=[k(i)];
    mian=[T(1) 2*ksi(1)*T(1) 1];
    figure(5)
    step(licz, mian);
    figure(6)
    impulse(licz, mian);
end
for i=1:3
    licz=[k(1)];
    mian=[T(i) 2*ksi(1)*T(i) 1];
    figure(5)
    step(licz, mian);
    figure(6)
    impulse(licz, mian);
end
for i=1:3
    licz=[k(1)];
    mian=[T(1) 2*ksi(i)*T(1) 1];
    figure(5)
    step(licz, mian);
    figure(6)
    impulse(licz, mian);
end
figure(5)
title('Obiekt oscylacyjny II rz�du odpowied� skokowa');
legend('k=3 T=const(1) ksi=const(0.1)','k=6 T=const(1) ksi=const(0.1)','k=9 T=const(1) ksi=const(0.1)','k=const(3) T=1 ksi=const(0.1)','k=const(3) T=5 ksi=const(0.1)','k=const(3) T=10 ksi=const(0.1)','k=const(3) T=const(1) ksi=0.1','k=const(3) T=const(1) ksi=1','k=const(3) T=const(1) ksi=2')
figure(6)
title('Obiekt oscylacyjny II rz�du odpowied� impulsowa');
legend('k=3 T=const(1) ksi=const(0.1)','k=6 T=const(1) ksi=const(0.1)','k=9 T=const(1) ksi=const(0.1)','k=const(3) T=1 ksi=const(0.1)','k=const(3) T=5 ksi=const(0.1)','k=const(3) T=10 ksi=const(0.1)','k=const(3) T=const(1) ksi=0.1','k=const(3) T=const(1) ksi=1','k=const(3) T=const(1) ksi=2')

%obiekt ca�kuj�cy z inercj� I rz�du o transmitancji:
for i=1:3
    licz=[k(i)];
    mian=[T(1)*T2(1) T2(1) 0];
    figure(7)
    step(licz, mian);
    figure(8)
    impulse(licz, mian);
end
for i=1:3
    licz=[k(1)];
    mian=[T(i)*T2(1) T2(1) 0];
    figure(7)
    step(licz, mian);
    figure(8)
    impulse(licz, mian);
end
for i=1:3
    licz=[k(1)];
    mian=[T(1)*T2(i) T2(i) 0];
    figure(7)
    step(licz, mian);
    figure(8)
    impulse(licz, mian);
end
figure(7)
title('Obiekt ca�kuj�cy z inercj� I rz�du odpowied� skokowa');
legend('k=3 T=const(1) Ti=const(3)','k=6 T=const(1) Ti=const(3)','k=9 T=const(1) Ti=const(3)','k=const(3) T=1 Ti=const(3)','k=const(3) T=5 Ti=const(3)','k=const(3) T=10 Ti=const(3)','k=const(3) T=const(1) Ti=3','k=const(3) T=const(1) Ti=6','k=const(3) T=const(1) Ti=9')
figure(8)
title('Obiekt ca�kuj�cy z inercj� I rz�du odpowied� impulsowa');
legend('k=3 T=const(1) Ti=const(3)','k=6 T=const(1) Ti=const(3)','k=9 T=const(1) Ti=const(3)','k=const(3) T=1 Ti=const(3)','k=const(3) T=5 Ti=const(3)','k=const(3) T=10 Ti=const(3)','k=const(3) T=const(1) Ti=3','k=const(3) T=const(1) Ti=6','k=const(3) T=const(1) Ti=9')
%obiekt r�niczkuj�cy rzeczywisty o transmitancji:
for i=1:3
    licz=[T2(1) k(i)];
    mian=[T(1) 1];
    figure(9)
    step(licz, mian);
    figure(10)
    impulse(licz, mian);
end
for i=1:3
    licz=[T2(i) k(1)];
    mian=[T(1) 1];
    figure(9)
    step(licz, mian);
    figure(10)
    impulse(licz, mian);
end
for i=1:3
    licz=[T2(1) k(1)];
    mian=[T(i) 1];
    figure(9)
    step(licz, mian);
    figure(10)
    impulse(licz, mian);
end
figure(9)
title('Obiekt r�niczkuj�cy rzeczywisty  odpowied� skokowa');
legend('k=3 T=const(1) Td=const(3)','k=6 T=const(1) Td=const(3)','k=9 T=const(1) Td=const(3)','k=const(3) T=const(1) Td=3','k=const(3) T=const(1) Td=6','k=const(3) T=const(1) Td=9','k=const(3) T=1 Td=const(3)','k=const(3) T=5 Td=const(3)','k=const(3) T=10 Td=const(3)')
figure(10)
title('Obiekt r�niczkuj�cy rzeczywisty  Odpowied� impulsowa');
legend('k=3 T=const(1) Td=const(3)','k=6 T=const(1) Td=const(3)','k=9 T=const(1) Td=const(3)','k=const(3) T=const(1) Td=3','k=const(3) T=const(1) Td=6','k=const(3) T=const(1) Td=9','k=const(3) T=1 Td=const(3)','k=const(3) T=5 Td=const(3)','k=const(3) T=10 Td=const(3)')
%obiekt inercyjny I rz�du z op�nieniem o transmitancji:
tau=10;
n=10;
[del_l,del_m] = pade(tau ,n);
for i=1:3
    licz=[k(i)];
    mian=[T(1) 1];
    [licz_d,mian_d] = series(del_l,del_m ,licz, mian);
    figure(11)
    step(licz_d, mian_d);
    figure(12)
    impulse(licz_d, mian_d);
end
for i=1:3
    licz=[k(1)];
    mian=[T(i) 1];
    [licz_d,mian_d] = series(del_l,del_m ,licz, mian);
    figure(11)
    step(licz_d, mian_d);
    figure(12)
    impulse(licz_d, mian_d);
end
figure(11)
title('Obiekt inercyjny I rz�du z op�nieniem odpowied� skokowa');
legend('k=3 T=const(1) Taus=const(10) N=const(10)','k=6 T=const(1) Tau=const(10) N=const(10)','k=9 T=const(1) Tau=const(10) N=const(10)','k=const(3) T=1 Tau=const(10) N=const(10)','k=const(3) T=5 Tau=const(10) N=const(10)','k=const(3) T=10 Tau=const(10) N=const(10)')
figure(12)
title('Obiekt inercyjny I rz�du z op�nieniem odpowied� impulsowa');
legend('k=3 T=const(1) Tau=const(10) N=const(10)','k=6 T=const(1) Tau=const(10) N=const(10)','k=9 T=const(1) Tau=const(10) N=const(10)','k=const(3) T=1 Tau=const(10) N=const(10)','k=const(3) T=5 Tau=const(10) N=const(10)','k=const(3) T=10 Tau=const(10) N=const(10)')
for i=1:12
    figure(i)
    hold off;
    grid on;
end
