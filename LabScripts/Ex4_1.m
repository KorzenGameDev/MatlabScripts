x=[
20
40
60
80
100
120
140
160
180
200
220
240
260
280
300
320
340]
y=[
-3
-1.1
-1.7
-3.2
-1.6
-4.9
-2.3
0.5
-2.2
0.3
-2.1
-2.2
0.8
-2.2
0.4
-2.7
-3.5]

figure(1)
plot(x,y,'ko-')
grid on;
title("Wykres ró¿nicy wart. Enkodera i wart ADXL, dla poszczególnych k¹tów")
xlabel("wartosc kata zadanego")
ylabel("roznica wart Enkodera - wartosc ADXL")