close all;
clear all;

LB_k=[1.96 0
    2.35 8
    2.5 12
    2.5 38
    2.5 75];
LM1_k=[2.5 0
    2.5 8
    2.5 12
    2.5 38
    2.5 75];
LM1_k = [LM1_k(:,1) -LM1_k(:,2);LM1_k];
LM2_k=[2.5 0
    2.5 8
    2.5 12
    2.5 38
    2.5 75];
LM2_k = [LM2_k(:,1) -LM2_k(:,2);LM2_k];
UB_k=[1.96 0
    1.96 6
    2.35 6.01
    2.35 8
    2.35 11.99
    2.5 12
    2.5 37.99
    2.5 38
    2.5 75];
LB_B=[650 0
    500 8
    400 12
    400 38
    400 75];
LM1_B=[400 -75
    400 -38
    400 -12
    400 -8
    400 0
    400 8
    400 12
    400 38
    400 75];

LM2_B=[400 -75
    400 -38
    400 -37.99
    400 -12
    500 -11.99
    500 -8
    500 -6.01
    650 -6
    650 0
    650 6
    500 6.01
    500 8
    500 11.99
    400 12
    400 37.99
    400 38
    400 75];

UB_B=[650 0
    650 6
    500 6.01
    500 8
    500 11.99
    400 12
    400 37.99
    400 38
    400 75];
LB_n=[0.65 0
    0.5 8
    0.4 12
    0.4 38
    0.4 75];
LM1_n=[0.4 -75
    0.4 0
    0.4 8
    0.4 12
    0.4 38
    0.4 75];
%LM1_n = [LM1_n(:,1) -LM1_n(:,2);LM1_n];
LM2_n=[0.4 -38
    0.4 -37.99
    0.4 -12
    0.5 -11.99
    0.500 -8
    0.500 -6.01
    0.650 -6
    0.65 0
    0.65 6
    0.5 6.01
    0.5 8
    0.5 11.99
    0.4 12
    0.4 37.99
    0.4 38
    0.4 75];
%LM2_n = [LM2_n(:,1) -LM2_n(:,2);LM2_n];
UB_n=[0.65 0
    0.65 6
    0.5 6.01
    0.5 8
    0.5 11.99
    0.4 12
    0.4 37.99
    0.4 38
    0.4 75];

% h=figure;
% plot(LB_k(:,2),LB_k(:,1),'k',UB_k(:,2),UB_k(:,1),'--k');
% xlabel('Normalised distance from weld centre');
% ylabel('k-parameter distribution (MPa.Hv^{-1})');
% xlim([0 45]);
% ylim([1.75 2.75]);
% legend('LB distribution','UB distribution');
k=figure;
plot(LM1_k(:,2),LM1_k(:,1),'k',LM2_k(:,2),LM2_k(:,1),'--ok');
xlabel('Distance from weld centre');
ylabel('k-parameter distribution');
xlim([-40 40]);
ylim([1.8 2.8]);
legend('Simulations 1-3','Simulation 4');
% i=figure;
% plot(LB_B(:,2),LB_B(:,1),'k',UB_B(:,2),UB_B(:,1),'--k');
% xlabel('Normalised distance from weld centre');
% ylabel('B-parameter distribution (MPa)');
% xlim([0 45]);
% ylim([350 700]);
% legend('LB distribution','UB distribution');
% j=figure;
% plot(LB_n(:,2),LB_n(:,1),'k',UB_n(:,2),UB_n(:,1),'--k');
% xlabel('Normalised distance from weld centre');
% ylabel('n-parameter distribution');
% xlim([0 45]);
% ylim([0.35 0.7]);
% legend('LB distribution','UB distribution');
% saveas(h,'Kdistribtution','fig');
% saveas(i,'LMMBdistribtution','fig');





% saveas(k,'Allk','fig');
% saveas(j,'Ndistribtution','fig');