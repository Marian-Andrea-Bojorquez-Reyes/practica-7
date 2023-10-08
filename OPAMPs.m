%Función del amplificador operacional
function dx=OPAMPs(t,x)
%-----Definimos nuestro parametros------%
R1=5e6; %Resistencia 1 (Ohms)
R2=5e6; %Resistencia 2 (Ohms)
R3=5e6; %Resistencia 3 (Ohms)
C1=100e-9; %Capacitor 1 (F)
C2=100e-9; %Capacitor 2 (F)
vin=1; %Voltaje de entrada (v)
%------Creamos nuestra matriz de las variables de estado----%
dx=zeros(2,1);
%-----Definición dinamica del sistema (Representanción de estados)-----%
dx(1)=x(2);
dx(2)=(1/(R1*R2*R3*C1*C2))*(R2*vin-R1*R3*C2*x(2));