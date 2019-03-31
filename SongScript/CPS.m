clc;
clear all;

t = [0:.0000150:.2];

As=sin(2*pi*466.16*t);
%OKTAWA I
C1=sin(2*pi*261.6*t);
Cis1=sin(2*pi*277.2*t);
D1=sin(2*pi*293.7*t);
Dis1=sin(2*pi*311.1*t);
E1=sin(2*pi*329.6*t);
F1=sin(2*pi*349.2*t);
Fis1=sin(2*pi*370*t);
G1=sin(2*pi*392*t);
Gis1=sin(2*pi*415.3*t);
A1=sin(2*pi*440*t);
B1=sin(2*pi*466.2*t);
H1=sin(2*pi*493.9*t);
%OKTAWA II
C2=sin(2*pi*523.3*t);
Cis2=sin(2*pi*554.4*t);
D2=sin(2*pi*587.3*t);
Dis2=sin(2*pi*622.3*t);
E2=sin(2*pi*659.3*t);
F2=sin(2*pi*698.5*t);
Fis2=sin(2*pi*740*t);
G2=sin(2*pi*784*t);
Gis2=sin(2*pi*830.6*t);
A2=sin(2*pi*880*t);
B2=sin(2*pi*932.3*t);
H2=sin(2*pi*987.8*t);
%OKTAWA III
C3=sin(2*pi*1046.5*t);
Cis3=sin(2*pi*1108.7*t);
D3=sin(2*pi*1174.7*t);
Dis3=sin(2*pi*1244.5*t);
E3=sin(2*pi*1318.5*t);
F3=sin(2*pi*1396.5*t);
Fis3=sin(2*pi*1480*t);
G3=sin(2*pi*1568*t);
Gis3=sin(2*pi*2*830.6*t);
A3=sin(2*pi*2*880*t);
B3=sin(2*pi*2*932.3*t);
H3=sin(2*pi*2*987.8*t);

% G2D1=G2+D1;
% 
% line_1=[As,As,D1,D1,As,As,G2D1,C1,D1,Dis1,D1,C1];
% line_2=[As,D1,D1,As,As,G2];
% line_3=[D1,C1,D1,Dis1,D1,C1,As];
% line_4=[D1,D1,As,As,G2];
% line_5=[D1,C1,D1,Dis1,D1,C1,As];
% line_6=[D1,As,D1,C1,D1,C1];
% 
% havana=[line_1,line_2,line_3,line_4,line_5,line_6];
% soundsc(havana);

line=[G2,G2,A2,C3,H2,A2,D3,D3,D3,E3,H2,C3,A2,A2,A2,C3,H2,A2,G2,G3,Fis3,E3,D3,C3,H2,A2];

line_x=[G2,G2,A2,C3,H2,A2,D3,D3,D3,E3,H2,C3,A2,A2,A2,C3,H2,A2,G2,D3,A2,H2,G2];


kankan=[line,line_x];
soundsc(kankan);
