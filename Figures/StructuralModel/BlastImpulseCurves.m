clear all;
close all;
% 
% FILENAME='LoadTraceX.txt';
% M1=dlmread(FILENAME);
% FILENAME='LoadTraceXY.txt';
% M2=dlmread(FILENAME);
% FILENAME='LoadTraceXYZ.txt';
% M3=dlmread(FILENAME);
% % FILENAME='LoadTrace4567.txt';
% % M4=dlmread(FILENAME);
% DATA=[M1;M2;M3];
% 
% [row col]=size(DATA);
% DATA2=DATA(1,:);
% count=2;
% for n=2:row
%     if DATA(n,1)==DATA(n-1,1)
%         count=count+0;
%     else
%         count=count+1;
%         DATA2(count,:)=DATA(n,:);
%     end
%     
% end
%     
% DATA3=sortrows(DATA2,1);
% 
% 
% figure;
% plot(DATA3(:,1),4.1*DATA3(:,2));
% 
% FILENAME='CrossSectionForce.txt';
% M8=dlmread(FILENAME);
% 
% hold on;
% plot(M8(:,1)*10-0.8,-M8(:,2),'k');
% xlim([0 5]);
% 
% xlabel('Time (ms)');
% ylabel('Load (kN)');
% 
% legend('Experiment','JWL Model');
% 
% 
% 
% 
% 
% 





FILENAME='BoomJWL.txt';
BOOM1=dlmread(FILENAME);
FILENAME='BoomSmoothJWL.txt';
BOOM1s=dlmread(FILENAME);
FILENAME='BoomCONWEP.txt';
BOOM2=dlmread(FILENAME);
FILENAME='BoomSmoothCONWEP.txt';
BOOM2s=dlmread(FILENAME);
FILENAME='BoomEXP.txt';
BOOM3a=dlmread(FILENAME);
BOOM3a=sortrows(BOOM3a,1);

[R C]=size(BOOM3a);
BOOM3=BOOM3a(1,:);
count=1;
for n=2:R
    if BOOM3a(n-1,1) == BOOM3a(n,1)
        count=count+0;
    else
        count=count+1;
        BOOM3(count,:)=BOOM3a(n,:);
    end
end

%RAW DATAS
figure;
% plot(BOOM1s(:,1)+0.4,-BOOM1s(:,2),'--k');
plot(BOOM1(:,1)+0.4,-BOOM1(:,2),'--k');
hold on;
plot(1*BOOM2s(:,1)+0.4,BOOM2s(:,2),':k');
plot(BOOM3(:,1),4*BOOM3(:,2),'k');
xlim([0 5]);
ylim([-2000 3000])

legend('JWL','CONWEP','Experiment');
xlabel('Time (ms)');
ylabel('Force (kN)');

% 
% %Smoothed DATAS
% figure;
% plot(BOOM1(:,1)+0.5,-BOOM1(:,2),'k');
% hold on;
% plot(1*BOOM1s(:,1)+0.5,-BOOM1s(:,2),':k');
% xlim([0 5]);
% ylim([-2000 3000])
% 
% legend('JWL','JWL SMOOTH');
% xlabel('Time (ms)');
% ylabel('Force (kN)');

%Matched samples

BOOM1M(1,:)=BOOM1(1,:);
[RR CC]=size(BOOM1);
count=1;
for n = 1:RR
    if mod(n,10)==0
        count=count+1;
    else
        count=count+0;
    end
    BOOM1M(count,:)=BOOM1(n,:);
end

clear RR CC

BOOM2M(1,:)=BOOM2(1,:);
[RR CC]=size(BOOM2);
count=1;
for n = 1:RR
    if mod(n,10)==0
        count=count+1;
    else
        count=count+0;
    end
   BOOM2M(count,:)=BOOM2(n,:);
end

figure;
plot(BOOM1M(:,1)+0.4,-BOOM1M(:,2),'--k');
hold on;
plot(1*BOOM2M(:,1)+0.4,BOOM2M(:,2),':k');
plot(BOOM3(:,1),4*BOOM3(:,2),'k');
xlim([0 5]);
ylim([-2000 3000])

legend('JWL','CONWEP','Experiment');
xlabel('Time (ms)');
ylabel('Force (kN)');

%Impulses DATAS
[r c]=size(BOOM1s);
dt=0;
area=0;
Impulse=0;
% for n=1:r-1;
%     dt(n)=BOOM1s(n+1,1)-BOOM1s(n,1);
%     area(n)=(BOOM1s(n+1,2)+BOOM1s(n,2))*0.5;
%     Impulse(n+1)=dt(n)*area(n);
% end
for n=1:r-1;
    dt(n)=BOOM1(n+1,1)-BOOM1(n,1);
    area(n)=(BOOM1(n+1,2)+BOOM1(n,2))*0.5;
    Impulse(n+1)=dt(n)*area(n);
end

h=figure;
plot(BOOM1s(:,1)+0.3,-2*cumsum(Impulse),'--k')

clear r c dt area Impulse

[r c]=size(BOOM2s);
dt=0;
area=0;
Impulse=0;
% for n=1:r-1;
%     dt(n)=BOOM2s(n+1,1)-BOOM2s(n,1);
%     area(n)=(BOOM2s(n+1,2)+BOOM2s(n,2))*0.5;
%     Impulse(n+1)=dt(n)*area(n);
% end
for n=1:r-1;
    dt(n)=BOOM2(n+1,1)-BOOM2(n,1);
    area(n)=(BOOM2(n+1,2)+BOOM2(n,2))*0.5;
    Impulse(n+1)=dt(n)*area(n);
end
hold on;
plot(BOOM2(:,1)+0.3,2*cumsum(Impulse),':k')

clear r c dt area Impulse

[r c]=size(BOOM3);
dt=0;
area=0;
Impulse=0;
for n=1:r-1;
    dt(n)=BOOM3(n+1,1)-BOOM3(n,1);
    area(n)=(BOOM3(n+1,2)+BOOM3(n,2))*0.5;
    Impulse(n+1)=dt(n)*area(n);
end
hold on;
plot(BOOM3(:,1)-0.3,4*cumsum(Impulse)/.96,'k')
xlabel('Time (ms)');
ylabel('Impulse (kN.ms)');
legend('JWL','CONWEP','Experiment');
xlim([0 5]);
ylim([0 2500]);

saveas(h,'BlastImpulses','fig');




%%
% 
% 
% 
% FILENAME='EXPBLASTALL.txt';
% EXP=dlmread(FILENAME);
% figure;plot(EXP(:,1),EXP(:,2))
% 
% 
% hold on;
% plot(BOOM3(:,1),BOOM3(:,2),'k');
% figure;
% [r c]=size(EXP);
% dt=0;
% area=0;
% Impulse=0;
% for n=1:r-1;
%     dt(n)=EXP(n+1,1)-EXP(n,1);
%     area(n)=(EXP(n+1,2)+EXP(n,2))*0.5;
%     Impulse(n+1)=dt(n)*area(n);
% end
% ImpulseT=cumsum(Impulse);
% hold on;
% plot(EXP(:,1)-0.4,ImpulseT,'k')
% xlabel('Time (ms)');
% ylabel('Impulse (kN.ms)');
