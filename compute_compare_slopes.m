
#load the data
compute_global_average

# 1913 - 1928
period1_idx = (1913:1928)-1800+1;
y1 = (1913:1928) - 1913;
[beta1_k1, beta0, sigma_sq, s_sq, beta1_k1_low, beta1_k1_high] = ...
    find_slm_slope_confidence(y1, income_kuwait(period1_idx), 5);
[1913, 1928, beta1_k1_low, beta1_k1, beta1_k1_high]

[beta1_w1, beta0, sigma_sq, s_sq, beta1_w1_low, beta1_w1_high] = ...
    find_slm_slope_confidence(y1, income_world(period1_idx), 5);
[1913, 1928, beta1_w1_low, beta1_w1, beta1_w1_high]

[t_val1, t_alpha1, t_halfalpha1] = ...
    find_slm_slope_compar(y1, income_kuwait(period1_idx), y1, income_world(period1_idx), 5)

# 1928 - 1933
period2_idx = (1928:1933)-1800+1;
y2 = (1928:1933) - 1928;
[beta1_k2, beta0, sigma_sq, s_sq, beta1_k2_low, beta1_k2_high] = ...
    find_slm_slope_confidence(y2, income_kuwait(period2_idx), 5);
[1928, 1933, beta1_k2_low, beta1_k2, beta1_k2_high]

[beta1_w2, beta0, sigma_sq, s_sq, beta1_w2_low, beta1_w2_high] = ...
    find_slm_slope_confidence(y2, income_world(period2_idx), 5);
[1928, 1933, beta1_w2_low, beta1_w2, beta1_w2_high]

[t_val2, t_alpha2, t_halfalpha2] = ...
    find_slm_slope_compar(y2, income_kuwait(period2_idx), y2, income_world(period2_idx), 5)

[t_val2b, t_alpha2b, t_halfalpha2b] = ...
    find_slm_slope_compar(y2, income_kuwait(period2_idx), y1, income_kuwait(period1_idx), 5)
    
# 1933 - 1946
period3_idx = (1933:1946)-1800+1;
y3 = (1933:1946) - 1933;
[beta1_k3, beta0, sigma_sq, s_sq, beta1_k3_low, beta1_k3_high] = ...
    find_slm_slope_confidence(y3, income_kuwait(period3_idx), 5);
[1933, 1946, beta1_k3_low, beta1_k3, beta1_k3_high]

[beta1_w3, beta0, sigma_sq, s_sq, beta1_w3_low, beta1_w3_high] = ...
    find_slm_slope_confidence(y3, income_world(period3_idx), 5);
[1933, 1946, beta1_w3_low, beta1_w3, beta1_w3_high]

[t_val3, t_alpha3, t_halfalpha3] = ...
    find_slm_slope_compar(y3, income_kuwait(period3_idx), y3, income_world(period3_idx), 5)

# 1946 - 1971
period4_idx = (1946:1971)-1800+1;
y4 = (1946:1971) - 1946;
[beta1_k4, beta0, sigma_sq, s_sq, beta1_k4_low, beta1_k4_high] = ...
    find_slm_slope_confidence(y4, income_kuwait(period4_idx), 5);
[1946, 1971, beta1_k4_low, beta1_k4, beta1_k4_high]

[beta1_w4, beta0, sigma_sq, s_sq, beta1_w4_low, beta1_w4_high] = ...
    find_slm_slope_confidence(y4, income_world(period4_idx), 5);
[1946, 1971, beta1_w4_low, beta1_w4, beta1_w4_high]

[t_val4, t_alpha4, t_halfalpha4] = ...
    find_slm_slope_compar(y4, income_kuwait(period4_idx), y4, income_world(period4_idx), 5)

# 1974 to 1991
period5_idx = (1974:1991)-1800+1;
y5 = (1974:1991) - 1974;
[beta1_k5, beta0, sigma_sq, s_sq, beta1_k5_low, beta1_k5_high] = ...
    find_slm_slope_confidence(y5, income_kuwait(period5_idx), 5);
[1974, 1991, beta1_k5_low, beta1_k5, beta1_k5_high]

[beta1_w5, beta0, sigma_sq, s_sq, beta1_w5_low, beta1_w5_high] = ...
    find_slm_slope_confidence(y5, income_world(period5_idx), 5);
[1974, 1991, beta1_w5_low, beta1_w5, beta1_w5_high]

[t_val5, t_alpha5, t_halfalpha5] = ...
    find_slm_slope_compar(y5, income_kuwait(period5_idx), y5, income_world(period5_idx), 5)

# 1992 to 2018: data is too structured to assume linearity
period6_idx = (1992:2018)-1800+1;
y6 = (1992:2018) - 1992;
[beta1_k6, beta0, sigma_sq, s_sq, beta1_k6_low, beta1_k6_high] = ...
    find_slm_slope_confidence(y6, income_kuwait(period6_idx), 5);
[1992, 2018, beta1_k6_low, beta1_k6, beta1_k6_high]

[beta1_w6, beta0, sigma_sq, s_sq, beta1_w6_low, beta1_w6_high] = ...
    find_slm_slope_confidence(y6, income_world(period6_idx), 5);
[1992, 2018, beta1_w6_low, beta1_w6, beta1_w6_high]

[t_val6, t_alpha6, t_halfalpha6] = ...
    find_slm_slope_compar(y6, income_kuwait(period6_idx), y6, income_world(period6_idx), 5)

