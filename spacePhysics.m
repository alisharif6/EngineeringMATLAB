% In order to give the initial position of the spacecraft at x and y axis
%we use "x=initial position;" and "y=initial position;"
%to assign the initial velocity of the spacecraft at x and y axis
%"xprime=initial velocity;" and "yprime=initial velocity;"
%"tspan=[initial time,final time];"
%in order to solve a 2nd order ODEs with ode45()we use this code"[t,z]=ode45(@alien123,tspan,z);"
%we use "plot(x,y)" to plot a graph
%we used the "text(axis,'insert text')" to allow us to write texts on our
%graph we which we later use to add labels on our graph
%we used "grid on" to add a grid on our graph
%we used the code "title('choose a title')" to add a title on our graph
%we use the code "xlabel('label it')" to add a label on the x axis
%we use the code "ylabel('label it')" to add a label on the y axis




x=1.15;

xprime=0;

y=0;

yprime=0.008688;

tspan=[0,24];

z(1)=x;

z(2)=xprime;

z(3)=y;

z(4)=yprime;

z0=[z(1) z(2) z(3) z(4)];



[t,z]= ode45(@alien123, tspan, z0);

plot(z(:,1),z(:,3))
text(0,0.06,'earth')
text(1,-0.11,'moon')
text(0,0,'x')
text(1,0,'x')
grid on
title('trajectory of the ali spacecraft in a rotating coordinate system')
xlabel('x')
ylabel('y')