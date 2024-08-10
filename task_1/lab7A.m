t = -5:0.01:5;
fxs=5. *sin(2. *pi.*(t)).*cos(pi.*(t)-8);
figure(1);
plot(t,fxs);
title('Continuous Time Signal');
xlabel('t(s)');
ylabel('fxs(t)');
t=-10:0.01:10;

fxe=5.*exp(-0.2.*t).*sin(2.*pi.*t);
figure(2);
plot(t,fxe)
title('Continuous Time Signal');
xlabel('t(s)');
ylabel('fxe(t)');
