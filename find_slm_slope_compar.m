function [t_val, t_alpha, t_halfalpha] = ...
    find_slm_slope_compar(x1, y1, x2, y2, alpha)

    [beta1_1, beta0_1, sigma_sq_1, s_sq_1, beta1_low, beta1_high] = ...
        find_slm_slope_confidence(x1, y1, alpha);

    [beta1_2, beta0_2, sigma_sq_2, s_sq_2, beta1_low, beta1_high] = ...
        find_slm_slope_confidence(x2, y2, alpha);

    n = length(x1);
    m = length(x2);
    S_square = ((n * sigma_sq_1) + (m * sigma_sq_2)) / (n + m - 4)
    S = sqrt(S_square);

    x1_bar = sum(x1)/n;
    sum_sq_x1_minus_x1bar = sum((x1 - x1_bar) .^ 2);

    x2_bar = sum(x2)/n;
    sum_sq_x2_minus_x1bar = sum((x2 - x2_bar) .^ 2);

    t_val = (beta1_1 - beta1_2)/(S*sqrt((1/sum_sq_x1_minus_x1bar) + (1/sum_sq_x2_minus_x1bar)));

    halfalpha = alpha/2;
    t_alpha = tinv(((100-(alpha))/100), (n+m-4));
    t_halfalpha = tinv(((100-(halfalpha))/100), (n+m-4));
end

