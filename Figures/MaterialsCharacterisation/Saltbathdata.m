clear all;
close all;
data.time=[3
10
30
100
300
1000
3
10
30
100
300
1000
3
10
30
100
300
1000
3
10
30
100
300
1000
];
data.temp=[350
350
350
350
350
350
400
400
400
400
400
400
450
450
450
450
450
450
500
500
500
500
500
500
];
data.HV=[169.0	171.0	167.0	169.0
153.0	158.0	149.0	153.0
118.0	119.0	113.0	113.0
111.0	109.0	109.0	115.0
107.0	106.0	107.0	105.0
97.0	99.0	99.0	96.0
158.0	159.0	152.0	150.0
123.0	118.0	122.0	121.0
101.0	105.0	104.0	105.0
99.0	94.0	91.0	94.0
85.0	83.0	84.0	87.0
75.0	72.0	75.0	76.0
134.0	131.0	137.0	133.0
106.0	107.0	106.0	105.0
86.0	87.0	88.0	85.0
81.0	82.0	78.0	82.0
72.0	74.0	74.0	75.0
75.0	74.0	77.0	73.0
117.0	115.0	111.0	112.0
93.0	87.0	87.0	85.0
86.0	85.0	84.0	83.0
91.0	85.0	88.0	85.0
81.0	81.0	83.0	82.0
83.0	85.0	87.0	83.0
];

a=1;
sizes=size(data.HV);
while a<sizes(1,1)+1;
data.CL95(a,1)=2.776*std(data.HV(a,:))/2;
a=a+1;
end
a=1;
sizes=size(data.HV);
while a<sizes(1,1)+1;
data.mean(a,1)=mean(data.HV(a,:));
a=a+1;
end
robson=[0.477121255	122
1	91
1.477121255	78
2	72
2.477121255	71
3	71
3.477121255	71
4	68
4.477121255	66
];
errorbar(log10(data.time(1:6)),data.mean(1:6),data.CL95(1:6),'k^-');
hold on;
errorbar(log10(data.time(7:12)),data.mean(7:12),data.CL95(7:12),'ko-');
hold on;
errorbar(log10(data.time(13:18)),data.mean(13:18),data.CL95(13:18),'kv-');
hold on;
errorbar(log10(data.time(19:24)),data.mean(19:24),data.CL95(19:24),'ks-');
hold on;
plot(robson(:,1),robson(:,2),'k--');
legend('350C','400C','450C','500C','2014-T6 400C(Shercliff)');
ylim([0 200]);
xlim([0 3.5]);
xlabel('Time (Log10(seconds)) ','FontSize',11,'FontWeight','bold');
ylabel('Hardness (HV) ','FontSize',11,'FontWeight','bold');
title('Isothermal Salt bath data ','FontSize',11,'FontWeight','bold');