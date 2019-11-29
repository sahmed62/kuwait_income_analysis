function [beta1, beta0, sigma_sq, s_sq, beta1_low, beta1_high] = ...
    find_slm_slope_confidence(x, y, alpha)
    
    % Theorem 11.3.1 (p546)
    n = length(x);
    n_sum_x_y = n * sum(x .* y);
    sum_x = sum(x);
    sum_y = sum(y);
    n_sum_x_sq = n * sum(x .* x);
    sq_sum_x = sum_x .* sum_x;
    
    beta1 = (n_sum_x_y - (sum_x*sum_y)) / (n_sum_x_sq - sq_sum_x);

    y_bar = sum_y / n;
    x_bar = sum_x / n;

    beta0 = y_bar - beta1 * x_bar;

    sigma_sq = (1/n) * sum((y - beta0 - (beta1*x)).^2);
    s_sq = (1/(n-2)) * sum((y - beta0 - (beta1*x)).^2);

    beta1_var = s_sq / sum( (x - x_bar) .^ 2 );
    beta1_std = sqrt(beta1_var);

    t_value = tinv(((100-(alpha/2))/100), (n-2));
    
    beta1_low = beta1 - t_value * beta1_std;
    beta1_high = beta1 + t_value * beta1_std;
end
