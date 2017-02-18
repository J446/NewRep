clear all
close all

h=open('AllQuasiStatic.fig'); %open figure
D=get(gca,'Children'); %get the handle of the line object
XData=get(D,'XData'); %get the x data
YData=get(D,'YData'); %get the y data
[Array_rows,Array_cols]=size(XData);
[Data_rows,Data_cols]=size(XData{1,1});

LOGSTRAIN=0;
LOGSTRESS=0;

figure;
for n=1:Array_rows
    clear LOGSTRAIN LOGSTRESS
    LOGSTRAIN=log10(XData{n,1});
    LOGSTRESS=log10(YData{n,1});
    if n==23%||n==21||n==3||n==4||n==4||n==4||n==4||n==4||n==4||n==4
    
    else
        hold on;
%     plot(LOGSTRAIN,LOGSTRESS,'Color',[n/Array_rows 0 (Array_rows-n)/Array_rows]);
    plot(10.^LOGSTRAIN,10.^LOGSTRESS,'Color',[(Array_rows-n)/Array_rows 0 n/Array_rows ]);
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
close(h);