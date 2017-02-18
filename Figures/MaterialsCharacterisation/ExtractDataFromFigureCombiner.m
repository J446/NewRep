clear all
close all

h=open('MechProps.fig'); %open figure
D=get(gca,'Children'); %get the handle of the line object
XData=get(D,'XData'); %get the x data
YData=get(D,'YData'); %get the y data
close(h);
[Array_rows,Array_cols]=size(XData);
[Data_rows,Data_cols]=size(XData{1,1});


h=open('Nuggets.fig'); %open figure
D=get(gca,'Children'); %get the handle of the line object
XData2=get(D,'XData'); %get the x data
YData2=get(D,'YData'); %get the y data
close(h);
[Array_rows2,Array_cols2]=size(XData2);
[Data_rows2,Data_cols2]=size(XData2{1,1});

LOGSTRAIN=0;
LOGSTRESS=0;

figure;
for n=1:Array_rows
    clear LOGSTRAIN LOGSTRESS
    LOGSTRAIN=log10(XData{n,1});
    LOGSTRESS=log10(YData{n,1});
    if n==1||n==2||n==3||n==4||n==12||n==13||n==11
    
    else
        hold on;
%     plot(LOGSTRAIN,LOGSTRESS,'Color',[n/Array_rows 0 (Array_rows-n)/Array_rows]);
    plot(10.^LOGSTRAIN,10.^LOGSTRESS,'Color',[n/(Array_rows+Array_rows2) 0 (Array_rows+Array_rows2-n)/(Array_rows+Array_rows2)]);
    end
end

for n=1:Array_rows2
    ncount=n+Array_rows;
    clear LOGSTRAIN LOGSTRESS
    LOGSTRAIN2=log10(XData2{n,1});
    LOGSTRESS2=log10(YData2{n,1});
    if n==4%||n==2||n==3||n==4||n==5||n==6||n==7||n==8||n==9||n==10%||n==3||n==4||n==12||n==13||n==11
    
    else
        hold on;
%     plot(LOGSTRAIN,LOGSTRESS,'Color',[n/Array_rows 0 (Array_rows-n)/Array_rows]);
    plot(10.^LOGSTRAIN2,10.^LOGSTRESS2,'Color',[ncount/(Array_rows+Array_rows2) 0 (Array_rows+Array_rows2-ncount)/(Array_rows+Array_rows2)]);
    end
end

% xlabel('Log10 True Strain');
% ylabel(' True Stress');
xlabel('True Strain');
ylabel(' True Stress');
% xlim([-3 -0.5]);
% ylim([4 8]);
xlim([0 0.15]);
ylim([0 600]);
