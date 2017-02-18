clear all;
close all;

JC=[0.0025 0.200 0.4;0.0025 0.200 0.4;0.00235 0.500 0.5; 0.00196 0.650 0.65];

ep=0:0.0001:0.75;
fs=[175*JC(1,1)+JC(1,2)*ep.^JC(1,3)
    150*JC(2,1)+JC(2,2)*ep.^JC(2,3)
    130*JC(3,1)+JC(3,2)*ep.^JC(3,3)
    145*JC(4,1)+JC(4,2)*ep.^JC(4,3)];
h=figure;
plot(ep,1000*fs(1,:),'-k');
hold on;
plot(ep,1000*fs(2,:),'--k');
plot(ep,1000*fs(3,:),':k');
plot(ep,1000*fs(4,:),'-.k');
legend('Base Metal','Outer HAZ','Inner HAZ','Nugget');
xlabel('Plastic strain (%)');
ylabel('Flow stress (MPa)');
xlim([0 0.2]);
ylim([200 600]);
saveas(h,'ConstitutiveModels','fig');




