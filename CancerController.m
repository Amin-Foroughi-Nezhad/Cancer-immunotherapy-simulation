function u=CancerController(In)
x1=In(1);
x2=In(2);
x3=In(3);
Eps=0.1;
v1=-10*Eps^(-2)*x2-10*Eps^(-1)*(0.18*x2-0.18*1e-9*x2^2-x1*x2/(x2+1e5));
v2=-1*Eps^(-1)*x3;
v=[v1;v2];
A=[-x2/(x2+1e5),0;
    0,1];
b1=(-x2/(x2+1e5))*(-0.03*x1+5*1e-5*x2+0.1245*x1*x3/(x3+2e7))+(0.18-0.36*1e-9*x2-1e5*x1/(x2+1e5)^2)*(0.18*x2-0.18*1e-9*x2-x1*x2/(x2+1e5));
b2=5*x1*x2/(x2+1e3)-10*x3;
b=[b1;b2];
if (min(abs(eig(A)))==0)
u=[0,0;0,0]*(-b+v);
else
u=A\(-b+v);
end