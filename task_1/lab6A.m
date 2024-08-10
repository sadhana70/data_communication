display("Domain k:[1,30]")
k = 1:30;

display("Function: func(k) = exp(0.05*k)")
func = exp(0.05 * k);

display ("Maximum")
func_max = max(func)

display ("Minimum")
func_min = min(func)

display ("Sum of all entries")
func_sum = sum(func)

display ("Product of all entries")
func_mul = prod(func)

display ("Mean")
func_mean = mean(func)

display ("Variance")
func_var = var(func)

display ("Dimension")
func_dim = size(func)

display ("Length")
func_len = length(func)
