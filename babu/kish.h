clc; 
clear;
funcprot(0);
function y=f(z)
    y=z/((z^2+1)*(z^2-9));
endfunction
i=intl(0,2*%pi,0,2,f);
mprint("the integral value is:");
disp(i);
