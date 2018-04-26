% Apdullah Yayık, 2018
% Sine wave prediction example with conventional extreme learning machine

close all, clear all

%% create datasets
train_feature=(15*rand(1,1000)-5)';
train_target=sin(train_feature);
train_data=[train_target, train_feature];

test_feature=(sort(15*rand(1,1000)-5))'; % the reason behind sorting is to see sine wave
test_target=sin(test_feature);
test_data=[test_target, test_feature];

%% train and test
neuron_number=20; activation_function='sig';
[~, ~, train_mse, test_mse, train_out, test_out]= ...
   ELM(train_data, test_data, 0, neuron_number, activation_function);

%% Plot test data and see mean squared error
figure, plot(test_target, 'LineWidth',6), hold on, ...
plot(test_out, 'r-', 'LineWidth',1),  legend('actual', 'output'),
title(['MSE=' num2str(test_mse) ''], 'FontSize', 12, 'FontWeight', 'bold'),
set(gca,'FontSize',12);
set(gcf,'color','w');
set(gcf,'PaperUnits','inches');
set(gcf,'PaperSize', [12 12]);
set(gcf,'PaperPosition',[0.5 0.5 7 7]);
set(gcf,'PaperPositionMode','Manual');
box off;








