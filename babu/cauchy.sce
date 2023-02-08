clc;
clear;
disp("RungeKutta Method")
disp("dy/dx=1/(x+y),y(0.4)=1,h=0.5")
function df=f(x,y)
df = 3*x+(y/2)
endfunction
x0=0;
y0=1;
h=0.2;
disp(" x     y")
for i=1:3
k1=h*f(x0,y0)
k2=h*f(x0+h/2,y0+k1/2)
k3=h*f(x0+h/2,y0+k2/2)
k4=h*f(x0+h,y0+k3)
y1=y0+(1/6)*(k1+2*k2+2*k3+k4)
x0=x0+h
mprintf("  %14.6f, %14.6f\n",x0,y1)
y0=y1
end

