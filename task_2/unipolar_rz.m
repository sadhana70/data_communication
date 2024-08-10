X=[0 0 1 1 1 0 1 0 0 0 0 1 0 0 0];

% Unipolar  return to zero line coding
% Arguments:
%           X - binary input vector
% Returns:
%          Unipolar RZ line coding plot

n = 1;
L = length(X);
X(L+1) = 1;

while n<=length(X)-1
    t = n-1:0.001:n;
    if X(n) == 0
        if X(n+1) == 0
            y = (t>n);
        else
            y = (t==n);
        end
        plot(t, y, 'LineWidth', 2.5)
        title('Unipolar RZ line coding')
        grid on
        hold on
        axis([0 length(X)-1 -1.5 1.5]);
    else
        if X(n+1) == 0
            y = (t < n-0.5);
        else
            y = (t < n-0.5) + 1*(t == n);
        end
        plot(t, y, 'LineWidth', 2.5)
        title('Unipolar RZ line coding')
        grid on
        hold on
        axis([0 length(X)-1 -1.5 1.5]);
    end
    n = n+1;
end
