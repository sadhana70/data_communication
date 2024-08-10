L=5;
t=[-5:0.01:5];
g=-t.^4+17*t.^3-t.^2-47;
plot(t,g);
hold on
title('Polynomial function');
xlabel('t');
ylabel('g(t)');


int=[-L:0.01:L];
y=-int.^4+17*int.^3-int.^2-47;
a0=1./L.*trapz(int,y);
sum=0;

%Set different value of m in below
m=10; % 1 or 5 or 10 or 20
for k=1:m
    a(k)=1./L.*trapz(int,y.*cos(pi.*int.*k./L));
    b(k)=1./L.*trapz(int,y.*sin(pi.*int.*k./L));
    sum=sum+a(k).*cos(pi.*int.*k./L)+b(k).*sin(pi.*int.*k./L);
end
sum2=sum+a0/2;
plot(t,sum2);
