function dx=CancerModel(In)
u1=In(1);
u2=In(2);
x1=In(3);
x2=In(4);
x3=In(5);
c=5*1e-5;
p1=0.1245;
g2=1e5;
a=1;
M3=10;
g3=1e3;
M2=0.03;
g1=2e7;
r2=0.18;
b=1e-9;
p2=5;
fx=[c*x2-M2*x1+p1*x1*x3/(g1+x3);
    r2*(1-b*x2)*x2-a*x1*x2/(g2+x2);
    p2*x1*x2/(g3+x2)-M3*x3];
g1x=[1;0;0];
g2x=[0;0;1];
dx=fx+g1x*u1+g2x*u2;