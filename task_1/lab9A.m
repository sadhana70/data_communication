% Characteristics
f=1;
T=1/f;
amp=5;
dcBias= -3;
tinterval = [-3:0.01:3];

%wave function
y=amp*square(2*pi*f*tinterval)+dcBias;
plot(tinterval,y)
hold on
title('Square wave');
xlabel('t');
ylabel('y');
tint=[0:0.01:T];

%for different value of m
y1=amp*square(2*pi*f*tint)+dcBias;
a0=2./T.*trapz(tint,y1)
sum=0;

%set different value of m from below line
m= 10; %or 5 or 10 or 20
for k=1:m
    am(k)=2./T.*trapz(tint,y1.*cos(k.*2.*pi.*f.*tint));
    bm(k)=2./T.*trapz(tint,y1.*sin(k.*2.*pi.*f.*tint));
    sum=sum+am(k).*cos(k.*2.*pi.*f.*tinterval)+bm(k).*sin(k.*2.*pi.*f.*tinterval);
end

s_t=a0/2+sum
plot(tinterval,s_t)
