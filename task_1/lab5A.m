data_comX= [2 5;4 6;];
Y= [1 5;6 -2;];
for m=1:2
    for n=1:2
        Za (m, n) =X (m, n) + Y (m,n);
    end
end

display("Output for a")
display(Za)

m = 1;
n = 1;
while m<=2
    while n<=2
        Zb (m, n) =X (m, n) + Y (m,n);
        n = n + 1;
    end
    m = m + 1;
end

display("Output for b")
display(Zb)

Zc = X + Y;

display("Output for c")
display(Zc)
