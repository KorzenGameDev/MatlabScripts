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
2.6
0.6
1.2
2.7
1
4.6
1.6
-0.9
1.7
-1.2
1.5
1.5
-1.5
1.3
-0.9
1.8
2.9]

figure(1)
plot(x,y,'ko-')
grid on;
title("Wykres ró¿nicy k¹ta zadanego do wartoœci ADXL, dla poszczególnych k¹tów.")
xlabel("wartosc kata zadanego")
ylabel("roznica k¹t zadany - wartosc ADXL")