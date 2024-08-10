m =[0 0 1 1 1 0 1 0 0 0 0 1 0 0 0];

n = length(m);
x = [];
y = [];

u = [];
v = [];

r = [];
t = [];
%nrz
for i=1:n
    x=[x i-1 i];
    if(m(i)==1)
        y=[y 1 1 ];
    else
        y=[y -1 -1];
    end
      u=[u i-1 i-1+0.5 i-1+0.5 i];
    if(y(i*2)==-1)
        v=[v 1 1 -1 -1];
    else
        v=[v -1 -1 1 1];
    end
     r=[r i-1  i];
    if(v(i*4)==-1)
        if(u(i*4)==i)
            t=[t -1 -1];
        end
    else
         t=[t 1 1];

    end
end
subplot(3, 1, 1);
plot(x, y);
axis([0, n, -2, 2]);
grid on;
title('Unipolar NRZ');

% Plot second graph (a, b)
subplot(3, 1, 2);
plot(u, v);
axis([0, n, -2, 2]);
grid on;
title('Manchester');



% plot(x,y,u,v,r,t),axis([0,n,-6,4]);
% grid on;
% title('Manchester');
