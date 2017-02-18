close all;
clear all;

data=importdata('B00001.txt');% Percentage Strain measured
data2=importdata('LocalStress.txt'); %Predicted local stress
data3=importdata('SF.txt');%Predicted scalefactor to stress
const=importdata('GlobalLoadNew.txt');%Soft area Stress strain
const3=importdata('GlobalLoadNEWS.txt');%Base Metal area Stress Strain
const5=importdata('GlobalLoad3.txt');%Base Metal area Stress Strain
Area=importdata('Area.txt');%Predicted area change
Area = Area.*Area;
DICdisp=importdata('DICdisp.txt');%MeasuredDsip
Preddisp=importdata('DisplacementPred.txt');%PredDisp
LoadCell=importdata('LoadCell.txt');%PredDisp

const2 = const(1,:);
count = 1;
[l,m] = size(const);
for i=2:l
    if const(i,1) > const(i-1,1)
        count = count + 1;
        const2(count,:) = const(i,:);
    end
end

const4 = const3(1,:);
count = 1;
[n,o] = size(const3);
for i=2:n
    if const3(i,1) > const3(i-1,1)
        count = count + 1;
        const4(count,:) = const3(i,:);
    end
end

const6 = const5(1,:);
count = 1;
[n,o] = size(const5);
for i=2:n
    if const5(i,1) > const5(i-1,1)
        count = count + 1;
        const6(count,:) = const5(i,:);
    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%FIGURE 1
figure;plot(const2(:,1),const2(:,2));
hold on;plot(const4(:,1),const4(:,2),'r');
hold on;plot(const6(:,1),const6(:,2),'g');
legend('Soft','BaseMetal','nugget');
xlabel('Strain');
ylabel('Stress (MPA)');

data(2,:) = data(2,:) - min(data(2,:));
% data(2,1:190) = data(2,1:190)*22/190;
% data(2,191:469) = data(2,191:469)*1;

data(1,:) = data(1,:) - min(data(1,:));
MeasuredLoad = 4.93*4.97*0.001*interp1(const4(:,1),const4(:,2),data(1,:)/100);
PredLoad = Area.*data2(:,2);%./data3(:,3);
% PredLoadAdj = Area.*data2(:,2);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%FIGURE 2
figure;plot(data(2,:),MeasuredLoad);
hold on; plot(data2(:,1),PredLoad,'r');
hold on; plot(LoadCell(:,1),LoadCell(:,3),'g');
legend('Measured by dic','Prel','Loadcell');
xlabel('Time');
ylabel('Load (kN)');

MeasuredLoad2 = interp1(LoadCell(:,1),LoadCell(:,3),data(2,:));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%FIGURE 3
figure;
plot(DICdisp,MeasuredLoad');
hold on;
plot(Preddisp,PredLoad,'r');
hold on;
plot(DICdisp,MeasuredLoad2','g');
legend('DIC','Prediction','loadcell');
xlabel('Global Displacement (mm)');
ylabel('Global Load (kN)');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%FIGURE 4
figure;
plot(DICdisp*100/60,1000*MeasuredLoad'/25);
hold on;
plot(Preddisp*100/60,1000*PredLoad/25,'r');
hold on;
plot(DICdisp*100/60,1000*MeasuredLoad2'/25,'g');
legend('DIC','Prediction','Loadcell');
xlabel('Global Engineering Strain (%)');
ylabel('Global Engineering Stress (MPa)');
xlim([0 15]);
ylim([0 1000]);

X=Preddisp*100/60;
Y=1000*PredLoad/25;
X(46:602)=(X(46:602)-0.55)*7/8.5 + 0.55;
% MeasuredLoad2(1:86) = Me

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%FIGURE 5

figure;
% plot(DICdisp*100/60,1000*MeasuredLoad'/25);
hold on;
plot(X,Y,'k-');
hold on;
plot(DICdisp*100/60,1000*MeasuredLoad2'/25,'k-.');
% plot(X(1:45),Y(1:45),'r');


% legend('DIC','Prediction','loadcell');
legend('Prediction','loadcell');
xlabel('Global Engineering Strain (%)');
ylabel('Global Engineering Stress (MPa)');
xlim([0 10]);
ylim([0 600]);
%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%FIGURE 6
figure;
Load = 1
% b=data(2,87);
% data(2,1:86) = data(2,1:86)*23/86;
% c=data(2,86);
% d=b-c;
% data(2,87:469) = data(2,87:469)-d;

data(2,:) = data(2,:) - min(data(2,:));
plot(data(2,:),Load);

hold on;
plot(data2(:,1),data2(:,2),'r');
plot(data2(:,1),data2(:,2)./data3(:,3),'g');