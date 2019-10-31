clear all;
close all;

%-resistor-%
    R_src =500;
    R_b1  =100e3;
    R_b2  =100e3;
    R_c   =1e3;
    R_L   =10e3;
%-Voltage-%
    V_cc  =3.3;
    V_t   =26e-3; 
    V_A   =50;
    V_E   =0.2;
%-Current-%
    I_s   =5e-16;
%-etc-%
    e_tol =1e-7;
    beta  =100;
    

%%main


%-funtion for caculating Parellel Resistance-%
function R=P_Resistance(varargin)
    resistor_num     =nargin;                     %number of input parameter
    resistor_vec     =zeros(1,resistor_num);      %intializing vector
    
    for i=1:resistor_num
        resistor_vec(i) = varargin{i};            %input value in vector
    end
    
    R = 1/sum(1./resistor_vec(1,1:resistor_num)); %Caculating Parellel Resistance 
                                                  %from vector value
end