% %Open a figure you want to adjust. Change the FILENAME that you want to 
% %save. Then run this program. Only 1 figure at a time.
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%% Set Filename and figure label
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FILENAME='JCC';
% FigureLabel='e)';
% h=gcf;
% j=annotation('textbox','Position',[0 0 1 1],'LineStyle','none','string',FigureLabel);
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%% Set Axis Labels
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% TITLE=get(gca,'Title');
% LABELX=get(gca,'Xlabel');
% LABELY=get(gca,'Ylabel');
% title_string=get(TITLE,'String');
% labelx_string=get(LABELX,'String');
% labely_string=get(LABELY,'String');
% %%%% These will set the titles to the current ones
% % title(title_string,'Fontname','Times','FontSize',12);
% % xlabel(title_string,'Fontname','Times','FontSize',12);
% % ylabel(title_string,'Fontname','Times','FontSize',12);
% title('');
% xlabel('Distance from weld centreline (mm)','Fontname','Times','FontSize',12);
% ylabel({'Distance from top'; 'surface of weld (mm)'},'Fontname','Times','FontSize',12);
% grid off;
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%% Set Image size
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% width=6*2.25;% 4inches in cm
% GR=0.5*(1+(5^0.5));
% set(gcf,'paperunits','centimeters');
% % set(gcf,'papersize',[width,width/GR]);
% set(gcf,'papersize',[width,5]);
% % set(gcf,'paperposition',[0,0,width,width/GR]);
% set(gcf,'paperposition',[0,0,width,5]);
% set(gca,'TickDir','out');
% set(gca,'XMinorTick','on','YMinorTick','on');
% set(gca,'Position',[0.12,0.4,0.72,0.18]);
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%% Set Axis Ticks
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % set(gca, 'YTick',-4.5:.5:-.5);
% set(gca, 'YTick',-4.5:4:-.5);
% set(gca, 'XTick',-50:10:50);
% % ax.YTickLabel = {'0.000','0.625','1.250','1.875','2.500','3.125','3.750','4.375','5.000'};
% % ax.YTickLabel = {'5.000','4.375','3.750','3.125','2.500','1.875','1.250','0.625','0.000',};
% ax.YTickLabel = {'5','0'};
% set(gca, 'YTickLabel',ax.YTickLabel);
% % ax.XTickLabel = {'0','5','10','15','20','25','30'};
% % set(gca, 'XTickLabel',ax.XTickLabel);
% box on;
% grid on;
% grid minor;
% set(gca,'Fontname','Times','fontsize',12);
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%% Set Legend
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% %%% This is if you want to define all curves
% % set(gca, 'XTickLabel', 'FontSize', 8)
% % set(gca, 'YTickLabel', 'FontSize', 8)
% % ax=legend('Measurement set 1','Measurement set 2','Measurement set 3','4 point moving average');
% % LEG = findobj(ax,'type','text');
% % set(LEG,'FontSize',8)
% 
% %%% This is if you want to manually define specific curves
% % hold on;
% % h1=plot(-80,-80,'b');
% % h2=plot(-80,-80,'r');
% % h3=plot(-80,-80,'Color',[0.5 0 0.5]);
% % ax=legend([h1 h2 h3],{'Start','End','0.1mm step'});
% % LEG = findobj(ax,'type','text');
% % set(LEG,'FontSize',8)
% colorbar('Location','northoutside');
% xlim([-40 40]);
% ylim([-5 0]);
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%% Outputs figure as .png
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% print('-dpng','-r300',sprintf('%s%s',FILENAME,'altered'));
% 
% 
% 
% 










% Code for Strain evolution curves


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% Set Filename and figure label
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
FILENAME='Something';
FigureLabel='';
h=gcf;
j=annotation('textbox','Position',[0 0 1 1],'LineStyle','none','string',FigureLabel);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% Set Axis Labels
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
TITLE=get(gca,'Title');
LABELX=get(gca,'Xlabel');
LABELY=get(gca,'Ylabel');
title_string=get(TITLE,'String');
labelx_string=get(LABELX,'String');
labely_string=get(LABELY,'String');
%%%% These will set the titles to the current ones
% title(title_string,'Fontname','Times','FontSize',12);
% xlabel(title_string,'Fontname','Times','FontSize',12);
% ylabel(title_string,'Fontname','Times','FontSize',12);
title('');
xlabel('Distance from weld centreline (mm)','Fontname','Times','FontSize',12);
ylabel('Strain (%)','Fontname','Times','FontSize',12);
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
set(gca, 'YTick',0:.05:.30);
set(gca, 'XTick',-40:10:40);
ax.YTickLabel = {'0','5','10','15','20','25','30'};
set(gca, 'YTickLabel',ax.YTickLabel);
% ax.XTickLabel = {'0','5','10','15','20','25','30'};
% set(gca, 'XTickLabel',ax.XTickLabel);
box on;
grid on;
% grid minor;
set(gca,'Fontname','Times','fontsize',12);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% Set Legend
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% This is if you want to define all curves
% set(gca, 'XTickLabel', 'FontSize', 8)
% set(gca, 'YTickLabel', 'FontSize', 8)
% ax=legend('Measurement set 1','Measurement set 2','Measurement set 3','4 point moving average');
% LEG = findobj(ax,'type','text');
% set(LEG,'FontSize',8)

%%% This is if you want to manually define specific curves
hold on;
h1=plot(-80,-80,'b');
h2=plot(-80,-80,'r');
h3=plot(-80,-80,'Color',[0.5 0 0.5]);
ax=legend([h1 h2 h3],{'Start','End','1e-7 time step'});
LEG = findobj(ax,'type','text');
set(LEG,'FontSize',8)
xlim([-40 40]);
ylim([0 .30]);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% Outputs figure as .png
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
print('-dpng','-r300',sprintf('%s%s',FILENAME,'altered'));