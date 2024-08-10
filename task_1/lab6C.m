disp("Vectors")
f= [1 4 -2 (4-2i)]
g= [-3 (5+7i) 6 2]

disp("Addition")
r1 = f + g

disp("Dot Product")
r2 = f.* g

disp("Mean")
r3 = mean(f)

disp("Average Energy")
r4 = mean(abs(f).^2)
