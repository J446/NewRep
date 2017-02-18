close all;
clear all;

props=[0.28 0.4 0.4; 0.28 0.55 0.55;0.28 0.65 0.65; 0.3 0.25 0.4];
eps=0:0.0001:0.2;
sig=[props(1,1)+props(1,2)*eps.^props(1,3);props(2,1)+props(2,2)*eps.^props(2,3);props(3,1)+props(3,2)*eps.^props(3,3);props(4,1)+props(4,2)*eps.^props(4,3)];

figure;
hold on;
h=plot(eps,sig(1,:),'k');
h=plot(eps,sig(2,:),'--k');
h=plot(eps,sig(3,:),':k');
h=plot(eps,sig(4,:),'b');

legend('LM','LB-work hardening','UB-work hardenign','Outer HAZ');
xlim([0 0.2]);
ylim([0.2 0.6]);
xlabel('Plastic strain');
ylabel('Flow stress(GPa)');

saveas(h,'Workhardening.fig','fig');