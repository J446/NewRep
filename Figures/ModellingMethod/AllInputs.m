close all;
clear all;
xi = -40:4:40;
K_1_5 =[-40 2.5;40 2.5];
yi = interp1(K_1_5(:,1),K_1_5(:,2),xi);
K_1_5 =[xi' yi'];
K_6 =[-40 2.5;-11 2.5;-6.5 2.35;0 1.96;6.5 2.35;11 2.5;40 2.5];
xi = -40:0.2:40;
yi = interp1(K_6(:,1),K_6(:,2),xi);
K_6 =[xi' yi'];
K_7_10 =[-40 2.5; -11 2.5; -10.9 2.36; -3.01 2.36; -3 1.96;0 1.96;3 1.96;3.01 2.36;10.5 2.36;11 2.5;40 2.5];
xi = -40:0.2:40;
yi = interp1(K_7_10(:,1),K_7_10(:,2),xi);
K_7_10 =[xi' yi'];

k=figure;
plot(K_1_5(:,1),K_1_5(:,2),'kd-')
hold on;
plot(K_6(:,1),K_6(:,2),'k-');
hold on;
plot(K_7_10(:,1),K_7_10(:,2),'k:');
xlabel('Distance from weld centre (mm)');
ylabel('\itk\rm - parameter distribution (MPa.Hv{-1}) ');
xlim([-40 40]);
ylim([1.8 2.8]);
legend('Simulations 1-5','Simulation 6','Simulations 7-10');
saveas(k,'AllKparameter','fig');
xi = -40:4:40;
B_1_7 =[-40 250;40 250];
yi = interp1(B_1_7(:,1),B_1_7(:,2),xi);
B_1_7 =[xi' yi'];
B_8 =[-40 250;-11 250;-6.5 400;0 650;6.5 400;11 250;40 250];
xi = -40:0.2:40;
yi = interp1(B_8(:,1),B_8(:,2),xi);
B_8 =[xi' yi'];
B_9_10 =[-40 250; -11 250; -10.9 400; -3.01 400; -3 650;0 650;3 650;3.01 400;10.5 400;11 250;40 250];
xi = -40:0.2:40;
yi = interp1(B_9_10(:,1),B_9_10(:,2),xi);
B_9_10 =[xi' yi'];



l=figure;
plot(B_1_7(:,1),B_1_7(:,2),'kd-')
hold on;
plot(B_8(:,1),B_8(:,2),'k-');
hold on;
plot(B_9_10(:,1),B_9_10(:,2),'k:');
xlabel('Distance from weld centre (mm)');
ylabel('\itB\rm - parameter distribution (MPa)');
xlim([-40 40]);
ylim([200 700]);
legend('Simulations 1-7','Simulation 8','Simulations 9-10');
saveas(l,'AllBparameter','fig');


xi = -40:4:40;
N_1_3_5_7 =[-40 0.400;40 0.400];
yi = interp1(N_1_3_5_7(:,1),N_1_3_5_7(:,2),xi);
N_1_3_5_7 =[xi' yi'];
N_8 =[-40 0.400;-11 0.400;-6.5 0.500;0 0.650;6.5 0.500;11 0.400;40 0.400];
xi = -40:0.2:40;
yi = interp1(N_8(:,1),N_8(:,2),xi);
N_8 =[xi' yi'];
N_4_9_10 =[-40 0.400; -11 0.400; -10.9 0.500; -3.01 0.500; -3 0.650;0 0.650;3 0.650;3.01 0.500;10.5 0.500;11 0.400;40 0.400];
xi = -40:0.2:40;
yi = interp1(N_4_9_10(:,1),N_4_9_10(:,2),xi);
N_4_9_10 =[xi' yi'];

m=figure;
plot(N_1_3_5_7(:,1),N_1_3_5_7(:,2),'kd-')
hold on;
plot(N_8(:,1),N_8(:,2),'k-');
hold on;
plot(N_4_9_10(:,1),N_4_9_10(:,2),'k:');
xlabel('Distance from weld centre (mm)');
ylabel('\itn\rm - parameter distribution');
xlim([-40 40]);
ylim([0.350 0.700]);
legend('Simulations 1-3,5-7','Simulation 8','Simulations 4,9-10');
saveas(m,'AllNparameter','fig');