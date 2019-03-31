clear,clc;
GW=false;
ODR=false;
JB=true;
K=false;

if(GW)
t =[0:.000125:.30]; %GwiezdneWojny
end
if(ODR)
    t =[0:.000125:.4]; %Oda do Radoœci
end
if(JB)
    t =[0:.000125:.35]; %Jingle Bells
end
if(K)
    t =[0:.000125:.35]; %Kaczuszki
end
h=sin(2*pi*246.9*t);
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
%OKTAWA IV
C4=sin(2*pi*2*1046.5*t);
Cis4=sin(2*pi*2*1108.7*t);
D4=sin(2*pi*2*1174.7*t);
Dis4=sin(2*pi*2*1244.5*t);
E4=sin(2*pi*2*1318.5*t);
F4=sin(2*pi*2*1396.5*t);
Fis4=sin(2*pi*2*1480*t);
G4=sin(2*pi*2*1568*t);
Gis4=sin(2*pi*4*830.6*t);
A4=sin(2*pi*4*880*t);
B4=sin(2*pi*4*932.3*t);
H4=sin(2*pi*4*987.8*t);
%SPECJAL
As = sin(2*pi*466.16*t);

if(GW)
    line1=[C2,G2,F2,E2,D2,C3,G2];
    line2=[F2,E2,D2,C3,G2];
    line3=[F2,E2,F2,D2];
    line4=[C2,G2,F2,E2,D2,C3,G2];
    line5=[F2,E2,D2,C3,G2];
    line6=[F2,E2,F2,D2];
    line7=[G1,A1,A1,F2,E2,D2];
    line8=[C2,C2,D2,E2,D2,A1,B1];
    line9=[G2,G2,A2];
    line10=[A2,F2,E2,D2,C2,G2,D2,D2];
    line11=[G1,A1,A1,F2,E2,D2];
    line12=[C2,C2,D2,E2,D2,A1,B1];
    line13=[G2,G2,C4];
    line14=[As,Gis2,G2,F2,Dis2,D2,C2,G2];
    line15=[G2,G2,G2,G2];
    line16=[G1,G1,A1,C2,F2,D2,C2];
    line17=[G2,F2,E2,D2,C3];
    line18=[G2,F2,E2,D2,C3,G2,F2,E2,F2,D2];
    line19=[C2,G2,F2,E2,D2,C3,G2];
    line20=[F2,E2,D2,C3,G2];
    line21=[F2,E2,F2,D2];
    line22=[G2,G2,C3];

    Gwiezdne_wojny  =  [line1,line2,line3,line4,line5,line6,line7,line8,line9,line10,line11,line12,line13,line14,line15,line16,line17,line18,line19,line20,line21,line21,line22];
    soundsc(Gwiezdne_wojny)
end
if(ODR)
    line1=[E2,E2,F2,G2,G2,F2,E2,D2,C2,C2,D2,E2,E2,D2,D2];
    line2=[E2,E2,F2,G2,G2,F2,E2,D2,C2,C2,D2,E2,D2,C2,C2];
    line3=[D2,D2,E2,C2,D2,E2,F2,E2,C2,D2,E2,F2,E2,C2,C2,D2];
    line4=[G2,E2,E2,F2,G2,G2,F2,E2,D2,C2,C2,D2,E2,D2,C2,C2];

    Oda_do_radosci=[line1,line2,line3,line4];
    %Oda_do_radosci=[line1,line2,line3,line4,line4,line1,line2,line3,line4,line4,line1,line2,line3,line4,line4];
    soundsc(Oda_do_radosci);
end

if(JB)
    line1=[D1,H1,A1,G1,D2,D1,D1,H1,A1,G2,E1,E1,C2,H1,A1,Fis1,D2,D2,C2,A1,H1];
    line2=[D1,H1,A1,G1,D1,D1,D1,H1,A1,G1,E1,E1,C2,H1,A1,H1,C2,C2,C2,C2,C2,H1,H1];
    line3=[H1,H1,A1,A1,G1,A1,D2,H1,H1,H1,H1,H1,H1,H1,D2,G1,A1,H1,C2,C2,C2,C2,C2,H1,H1,D2,D2,C2,A1,G1];
    
    Jingle_bells=[line1,line2,line3];
    soundsc(Jingle_bells);
end
if(K)
    line1=[G2,G2,A2,A2,E2,E2,G2];
    line2=[G2,A2,C3,H3];
    line3=[H2,A2,G2,F2];

    Kaczuszki=[line1,line1,line2,line3];
    soundsc(Kaczuszki);
end