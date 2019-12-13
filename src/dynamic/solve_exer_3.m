
function [lambda_0_star, u_t, x_t, lambda_t] = solve_exer_3()

% format bank

% [alf, a, b, x0, N, q, r, p] = get_para();

opt = optimset('fsolve');
opt = optimset(opt, 'Display', 'iter');

lambda_0_star = fsolve('cal_fejlf', 0, opt);
% Initial guess search of lambda_0 is 0
[~, u_t, x_t, lambda_t] = fejlf(lambda_0_star);

%% Plot the results
subplot(211);
bar(u_t); grid; title('Input sequence');
axis([0 15 0 50000]);
subplot(212);
bar(x_t); grid; title('Balance');
axis([0 15 0 50000]);
shg

end
