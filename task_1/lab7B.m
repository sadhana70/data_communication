k = -10:20;
fxs = -0.92.*sin(0.1.*pi.*k-3.*pi./4);
figure(1);
stem(k,fxs)
title('Discrete Time Signal');
xlabel('k');
ylabel('fxs(k)');


k=0:50;
fxe=(-0.93).^k.*exp(j.*pi.*k/sqrt(350));
figure(2);
stem(k,fxe)
title('Discrete Time Signal');
xlabel('k');
ylabel('fxe(k)');
