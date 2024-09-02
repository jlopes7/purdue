% MATLAB Code to plot Net Speedup vs Percent Encryption

% Percent of computation spent on encryption (P) from 0 to 100%
percent_encryption = 0:1:100;

% Convert percentage to fraction
P = percent_encryption / 100;

% Speedup encyrption enhacement
enhancement_factor = 20;

% Calculate the speedup using Amdahl's Law
net_speedup_no_enhancement = 1 ./ (1 - P);
net_speedup_with_enhancement = 1 ./ ((1 - P)+(P/enhancement_factor));

% Plotting the graph
figure;
plot(percent_encryption, net_speedup_no_enhancement, 'b-', 'LineWidth', 1);
hold on;
plot(percent_encryption, net_speedup_with_enhancement, 'r--', 'LineWidth', 1);
grid on;

% Labeling the axes
xlabel('Percent encryption');
ylabel('Net speedup');
title('Speedup vs Percent of Computation Spent on Encryption');

% Adding a legend to distinguish the two curves
legend('Infinite Enhancement', '20x Encryption Enhancement', 'Location', 'NorthWest');

% Setting the limits for x and y axes
xlim([0 100]);
ylim([1 max([max(net_speedup_no_enhancement), max(net_speedup_with_enhancement)])]);

% Display the plot
shg;
