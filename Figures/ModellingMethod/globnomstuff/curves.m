% Code for NOMINAL STRESS STRAIN


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% Set Filename and figure label
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
FILENAME='GlobalStressStrain';
FigureLabel='';
h=gcf;
j=annotation('textbox','Position',[0 0 1 1],'LineStyle','none','string',FigureLabel);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% Set Axis Labels
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% TITLE=get(gca,'Title');
% LABELX=get(gca,'Xlabel');
% LABELY=get(gca,'Ylabel');
% title_string=get(TITLE,'String');
% labelx_string=get(LABELX,'String');
% labely_string=get(LABELY,'String');
% %%% These will set the titles to the current ones
% title(title_string,'Fontname','Times','FontSize',12);
% xlabel(title_string,'Fontname','Times','FontSize',12);
% ylabel(title_string,'Fontname','Times','FontSize',12);
title('');
xlabel('Engineering Strain (%)','Fontname','Times','FontSize',12);
ylabel('Engineering Stress (MPa)','Fontname','Times','FontSize',12);
grid off;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% Set Image size
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
width=6*2.25;% 4inches in cm
GR=0.5*(1+(5^0.5));
set(gca,'ActivePositionProperty','outerposition');
set(gcf,'paperunits','centimeters');
set(gcf,'papersize',[width,width/GR]);
set(gcf,'paperposition',[0,0,width,width/GR]);
% set(gcf,'Position',[38 472 641 429]);
set(gca,'outerposition',[0 0 1 1]);
set(gca,'Position',[0.13 0.1455 0.775 0.78]);%Need this for the blast prediction
% set(gca,'TightInset',[0.1 0.120098 0.0178571 0.0220588]);
set(gca,'TickDir','out');
set(gca,'XMinorTick','on','YMinorTick','on');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% Set Axis Ticks
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
set(gca, 'YTick',0:100:1000);
set(gca, 'XTick',0:2:10);
% ax.YTickLabel = {'0','5','10','15','20','25','30'};
% set(gca, 'YTickLabel',ax.YTickLabel);
% ax.XTickLabel = {'0','5','10','15','20','25','30'};
% set(gca, 'XTickLabel',ax.XTickLabel);
box on;
% grid on;
% grid minor;
set(gca,'Fontname','Times','fontsize',12);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% Set Legend
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% This is if you want to define all curves
% set(gca, 'XTickLabel', 'fontsize', 8)
% set(gca, 'yticklabel', 'fontsize', 8)
% ax=legend('1 mm','5 mm','8 mm','12 mm','15 mm','18 mm','22 mm','24 mm','25 mm','30 mm');
% ax=legend('600-800s^{-1}','1500-2000s^{-1}','3000-4000s^{-1}','Youngs modulus 72 GPa','location','southeast');
% leg = findobj(ax,'type','text');
% set(leg,'fontsize',8)

% %%% This is if you want to manually define specific curves
hold on;
h1=plot(-80,-80,'k-');
h2=plot(-80,-80,'k-.');
% h3=plot(-80,-80,'Color',[0.8 0 0.2]);
% h4=plot(-80,-80,'Color',[0.2 0 0.8]);
ax=legend([h1 h2],{'Prediction','Experimental measurements'},'location','northeast');
LEG = findobj(ax,'type','text');
set(LEG,'FontSize',8)
xlim([0 10]);
ylim([0 600]);


hold on;
point1 = [0.2 0;0.2 20];%135];
plot(point1(:,1),point1(:,2),'k');
hold on;
point2 = [0.6 0;0.6 20];%280;0.6 360];
plot(point2(:,1),point2(:,2),'k');
hold on;
point3 = [4 0;4 20];%398;4 418];
plot(point3(:,1),point3(:,2),'k');
hold on;
point4 = [6.4 0;6.4 20];%421;6.4 421];
plot(point4(:,1),point4(:,2),'k');
hold on;
point4 = [8.2 0;8.2 20];%380;8.2 390];
plot(point4(:,1),point4(:,2),'k');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% Outputs figure as .png
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
print('-dpng','-r300',sprintf('%s%s',FILENAME,'altered'));