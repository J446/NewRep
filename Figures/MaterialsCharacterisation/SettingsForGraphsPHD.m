%Open a figure you want to adjust. Change the FILENAME that you want to 
%save. Then run this program. Only 1 figure at a time.





% 
% % Code for HSR
% 
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%% Set Filename and figure label
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FILENAME='HSRBaseMetalRolling';
% FigureLabel='';
% h=gcf;
% j=annotation('textbox','Position',[0 0 1 1],'LineStyle','none','string',FigureLabel);
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%% Set Axis Labels
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % TITLE=get(gca,'Title');
% % LABELX=get(gca,'Xlabel');
% % LABELY=get(gca,'Ylabel');
% % title_string=get(TITLE,'String');
% % labelx_string=get(LABELX,'String');
% % labely_string=get(LABELY,'String');
% % %%% These will set the titles to the current ones
% % title(title_string,'Fontname','Times','FontSize',12);
% % xlabel(title_string,'Fontname','Times','FontSize',12);
% % ylabel(title_string,'Fontname','Times','FontSize',12);
% title('');
% xlabel('Estimated True Strain ','Fontname','Times','FontSize',12);
% ylabel('Estimated True Stress (MPa)','Fontname','Times','FontSize',12);
% grid off;
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%% Set Image size
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% width=6*2.25;% 4inches in cm
% GR=0.5*(1+(5^0.5));
% set(gca,'ActivePositionProperty','outerposition');
% set(gcf,'paperunits','centimeters');
% set(gcf,'papersize',[width,width/GR]);
% set(gcf,'paperposition',[0,0,width,width/GR]);
% % set(gcf,'Position',[38 472 641 429]);
% set(gca,'outerposition',[0 0 1 1]);
% set(gca,'Position',[0.13 0.1455 0.775 0.78]);%Need this for the blast prediction
% % set(gca,'TightInset',[0.1 0.120098 0.0178571 0.0220588]);
% set(gca,'TickDir','out');
% set(gca,'XMinorTick','on','YMinorTick','on');
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%% Set Axis Ticks
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% set(gca, 'YTick',0:100:1000);
% set(gca, 'XTick',0:0.05:0.25);
% % ax.YTickLabel = {'0','5','10','15','20','25','30'};
% % set(gca, 'YTickLabel',ax.YTickLabel);
% % ax.XTickLabel = {'0','5','10','15','20','25','30'};
% % set(gca, 'XTickLabel',ax.XTickLabel);
% box on;
% % grid on;
% % grid minor;
% set(gca,'Fontname','Times','fontsize',12);
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%% Set Legend
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% %% This is if you want to define all curves
% % set(gca, 'XTickLabel', 'fontsize', 8)
% % set(gca, 'yticklabel', 'fontsize', 8)
% % ax=legend('1 mm','5 mm','8 mm','12 mm','15 mm','18 mm','22 mm','24 mm','25 mm','30 mm');
% % ax=legend('600-800s^{-1}','1500-2000s^{-1}','3000-4000s^{-1}','Youngs modulus 72 GPa','location','southeast');
% % leg = findobj(ax,'type','text');
% % set(leg,'fontsize',8)
% 
% % %%% This is if you want to manually define specific curves
% hold on;
% h1=plot(-80,-80,'Color',[0 0 1]);
% h2=plot(-80,-80,'Color',[0.5 0 0.5]);
% h3=plot(-80,-80,'Color',[1 0 0]);
% h4=plot(-80,-80,'Color',[0 0 0]);
% ax=legend([h1 h2 h3 h4],{'600-800s^{-1}','1500-2000s^{-1}','3000-4000s^{-1}','Youngs modulus 72 GPa'},'location','southeast');
% LEG = findobj(ax,'type','text');
% set(LEG,'FontSize',8)
% xlim([0 0.25]);
% ylim([0 1000]);
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%% Outputs figure as .png
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% print('-dpng','-r300',sprintf('%s%s',FILENAME,'altered'));
% 



% Code for mech props
% 
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%% Set Filename and figure label
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FILENAME='AllQuasiStatic3';
% FigureLabel='';
% h=gcf;
% j=annotation('textbox','Position',[0 0 1 1],'LineStyle','none','string',FigureLabel);
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%% Set Axis Labels
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % TITLE=get(gca,'Title');
% % LABELX=get(gca,'Xlabel');
% % LABELY=get(gca,'Ylabel');
% % title_string=get(TITLE,'String');
% % labelx_string=get(LABELX,'String');
% % labely_string=get(LABELY,'String');
% % %%% These will set the titles to the current ones
% % title(title_string,'Fontname','Times','FontSize',12);
% % xlabel(title_string,'Fontname','Times','FontSize',12);
% % ylabel(title_string,'Fontname','Times','FontSize',12);
% title('');
% xlabel('True Strain ','Fontname','Times','FontSize',12);
% ylabel('True Stress (MPa)','Fontname','Times','FontSize',12);
% grid off;
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%% Set Image size
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% width=6*2.25;% 4inches in cm
% GR=0.5*(1+(5^0.5));
% set(gca,'ActivePositionProperty','outerposition');
% set(gcf,'paperunits','centimeters');
% set(gcf,'papersize',[width,width/GR]);
% set(gcf,'paperposition',[0,0,width,width/GR]);
% % set(gcf,'Position',[38 472 641 429]);
% set(gca,'outerposition',[0 0 1 1]);
% set(gca,'Position',[0.13 0.1455 0.775 0.78]);%Need this for the blast prediction
% % set(gca,'TightInset',[0.1 0.120098 0.0178571 0.0220588]);
% set(gca,'TickDir','out');
% set(gca,'XMinorTick','on','YMinorTick','on');
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%% Set Axis Ticks
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% set(gca, 'YTick',0:100:1000);
% set(gca, 'XTick',0:0.05:0.25);
% % ax.YTickLabel = {'0','5','10','15','20','25','30'};
% % set(gca, 'YTickLabel',ax.YTickLabel);
% % ax.XTickLabel = {'0','5','10','15','20','25','30'};
% % set(gca, 'XTickLabel',ax.XTickLabel);
% box on;
% % grid on;
% % grid minor;
% set(gca,'Fontname','Times','fontsize',12);
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%% Set Legend
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% %% This is if you want to define all curves
% % set(gca, 'XTickLabel', 'fontsize', 8)
% % set(gca, 'yticklabel', 'fontsize', 8)
% % ax=legend('1 mm','5 mm','8 mm','12 mm','15 mm','18 mm','22 mm','24 mm','25 mm','30 mm');
% % ax=legend('600-800s^{-1}','1500-2000s^{-1}','3000-4000s^{-1}','Youngs modulus 72 GPa','location','southeast');
% % leg = findobj(ax,'type','text');
% % set(leg,'fontsize',8)
% 
% % %%% This is if you want to manually define specific curves
% hold on;
% h1=plot(-80,-80,'Color',[0 0 1]);
% h2=plot(-80,-80,'Color',[1 0 0]);
% h3=plot(-80,-80,'Color',[0.8 0 0.2]);
% h4=plot(-80,-80,'Color',[0.2 0 0.8]);
% ax=legend([h1 h2 h3 h4],{'Base Metal','Outer HAZ','Inner HAZ','Nugget'},'location','southeast');
% LEG = findobj(ax,'type','text');
% set(LEG,'FontSize',8)
% xlim([0 0.25]);
% ylim([0 1000]);
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%% Outputs figure as .png
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% print('-dpng','-r300',sprintf('%s%s',FILENAME,'altered'));
% 

%Thermal sensitivity
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%% Set Filename and figure label
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FILENAME='ThermalSensitivity';
% FigureLabel='';
% h=gcf;
% j=annotation('textbox','Position',[0 0 1 1],'LineStyle','none','string',FigureLabel);
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%% Set Axis Labels
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % TITLE=get(gca,'Title');
% % LABELX=get(gca,'Xlabel');
% % LABELY=get(gca,'Ylabel');
% % title_string=get(TITLE,'String');
% % labelx_string=get(LABELX,'String');
% % labely_string=get(LABELY,'String');
% % %%% These will set the titles to the current ones
% % title(title_string,'Fontname','Times','FontSize',12);
% % xlabel(title_string,'Fontname','Times','FontSize',12);
% % ylabel(title_string,'Fontname','Times','FontSize',12);
% title('');
% xlabel('Temperature (C) ','Fontname','Times','FontSize',12);
% ylabel('Yield Stress at 2% offset (MPa)','Fontname','Times','FontSize',12);
% grid off;
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%% Set Image size
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% width=6*2.25;% 4inches in cm
% GR=0.5*(1+(5^0.5));
% set(gca,'ActivePositionProperty','outerposition');
% set(gcf,'paperunits','centimeters');
% set(gcf,'papersize',[width,width/GR]);
% set(gcf,'paperposition',[0,0,width,width/GR]);
% % set(gcf,'Position',[38 472 641 429]);
% set(gca,'outerposition',[0 0 1 1]);
% set(gca,'Position',[0.13 0.1455 0.775 0.78]);%Need this for the blast prediction
% % set(gca,'TightInset',[0.1 0.120098 0.0178571 0.0220588]);
% set(gca,'TickDir','out');
% set(gca,'XMinorTick','on','YMinorTick','on');
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%% Set Axis Ticks
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% set(gca, 'YTick',0:50:600);
% set(gca, 'XTick',-100:50:500);
% % ax.YTickLabel = {'0','5','10','15','20','25','30'};
% % set(gca, 'YTickLabel',ax.YTickLabel);
% % ax.XTickLabel = {'0','5','10','15','20','25','30'};
% % set(gca, 'XTickLabel',ax.XTickLabel);
% box on;
% % grid on;
% % grid minor;
% set(gca,'Fontname','Times','fontsize',12);
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%% Set Legend
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% %% This is if you want to define all curves
% % set(gca, 'XTickLabel', 'fontsize', 8)
% % set(gca, 'yticklabel', 'fontsize', 8)
% % % ax=legend('1 mm','5 mm','8 mm','12 mm','15 mm','18 mm','22 mm','24 mm','25 mm','30 mm');
% % ax=legend('Base Metal','Outer HAZ','Inner HAZ','Nugget','Vural 2139-T8','Vural curve fit','location','northwest');
% % leg = findobj(ax,'type','text');
% % set(leg,'fontsize',8)
% 
% % %%% This is if you want to manually define specific curves
% % hold on;
% h1=plot(-80,-80,'ks','MarkerFaceColor',[0.5 0.5 0.5]);
% h2=plot(-80,-80,'ks','Markersize',10);
% h3=plot(-80,-80,'k^','MarkerFaceColor',[0.5 0.5 0.5]);
% h4=plot(-80,-80,'k^','Markersize',10);
% h5=plot(-80,-80,'k<','MarkerFaceColor',[0.5 0.5 0.5]);
% h6=plot(-80,-80,'k<','Markersize',10);
% h7=plot(-80,-80,'ko','MarkerFaceColor',[0.5 0.5 0.5]);
% h8=plot(-80,-80,'*k');
% % h9=plot(-80,-80,'-k');
% ax=legend([h1 h2 h3 h4 h5 h6 h7 h8],{'Base Metal (RD)','Base Metal (TD)','Outer HAZ (RD)','Outer HAZ (TD)','Inner HAZ (RD)','Inner HAZ (TD)','Nugget (RD)','2139-T8 (Vural et al.)'},'location','northeast');
% LEG = findobj(ax,'type','text');
% set(LEG,'FontSize',8)
% xlim([-100 500]);
% ylim([0 600]);
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%% Outputs figure as .png
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% print('-dpng','-r300',sprintf('%s%s',FILENAME,'altered'));

% %Thermalsoftening
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%% Set Filename and figure label
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FILENAME='BaseMetalThermalSoftening';
% FigureLabel='';
% h=gcf;
% j=annotation('textbox','Position',[0 0 1 1],'LineStyle','none','string',FigureLabel);
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%% Set Axis Labels
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % TITLE=get(gca,'Title');
% % LABELX=get(gca,'Xlabel');
% % LABELY=get(gca,'Ylabel');
% % title_string=get(TITLE,'String');
% % labelx_string=get(LABELX,'String');
% % labely_string=get(LABELY,'String');
% % %%% These will set the titles to the current ones
% % title(title_string,'Fontname','Times','FontSize',12);
% % xlabel(title_string,'Fontname','Times','FontSize',12);
% % ylabel(title_string,'Fontname','Times','FontSize',12);
% title('');
% xlabel('True Strain ','Fontname','Times','FontSize',12);
% ylabel('True Stress (MPa)','Fontname','Times','FontSize',12);
% grid off;
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%% Set Image size
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% width=6*2.25;% 4inches in cm
% GR=0.5*(1+(5^0.5));
% set(gca,'ActivePositionProperty','outerposition');
% set(gcf,'paperunits','centimeters');
% set(gcf,'papersize',[width,width/GR]);
% set(gcf,'paperposition',[0,0,width,width/GR]);
% % set(gcf,'Position',[38 472 641 429]);
% set(gca,'outerposition',[0 0 1 1]);
% set(gca,'Position',[0.13 0.1455 0.775 0.78]);%Need this for the blast prediction
% % set(gca,'TightInset',[0.1 0.120098 0.0178571 0.0220588]);
% set(gca,'TickDir','out');
% set(gca,'XMinorTick','on','YMinorTick','on');
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%% Set Axis Ticks
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % set(gca, 'YTick',0:50:600);
% % set(gca, 'XTick',-100:50:500);
% ax.YTickLabel = {'0','50','100','150','200','250','300','350','400','450','500','550','600'};
% set(gca, 'YTickLabel',ax.YTickLabel);
% ax.XTickLabel = {'0','0.01','0.02','0.03','0.04','0.05','0.06','0.07','0.08','0.09','0.10'};
% set(gca, 'XTickLabel',ax.XTickLabel);
% box on;
% % grid on;
% % grid minor;
% set(gca,'Fontname','Times','fontsize',12);
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%% Set Legend
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% %% This is if you want to define all curves
% % set(gca, 'XTickLabel', 'fontsize', 8)
% % set(gca, 'yticklabel', 'fontsize', 8)
% % % ax=legend('1 mm','5 mm','8 mm','12 mm','15 mm','18 mm','22 mm','24 mm','25 mm','30 mm');
% % ax=legend('Base Metal','Outer HAZ','Inner HAZ','Nugget','Vural 2139-T8','Vural curve fit','location','northwest');
% % leg = findobj(ax,'type','text');
% % set(leg,'fontsize',8)
% 
% % %%% This is if you want to manually define specific curves
% % hold on;
% h1=plot(-80,-80,'Color',[0.25 0 0.75]);
% h2=plot(-80,-80,'Color',[0.5 0 0.5]);
% h3=plot(-80,-80,'Color',[0.75 0 0.25]);
% h4=plot(-80,-80,'Color',[1 0 0]);
% h5=plot(-80,-80,'k');
% h6=plot(-80,-80,'k<','Markersize',10);
% h7=plot(-80,-80,'ko','MarkerFaceColor',[0.5 0.5 0.5]);
% h8=plot(-80,-80,'*k');
% % h9=plot(-80,-80,'-k');
% ax=legend([h1 h2 h3 h4 h5],{'100 C','200 C','300 C','400 C','E = 72 GPa'},'location','northeast');
% LEG = findobj(ax,'type','text');
% set(LEG,'FontSize',8)
% xlim([0 0.1]);
% ylim([0 0.60]);
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%% Outputs figure as .png
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% print('-dpng','-r300',sprintf('%s%s',FILENAME,'altered'));
% 
% 





%Thermalsoftening

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% Set Filename and figure label
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
FILENAME='YieldHardnessVariation';
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
xlabel('Distance from centre of weld (mm)','Fontname','Times','FontSize',12);
ylabel('YS/Hv (MPa/Hv)','Fontname','Times','FontSize',12);
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
set(gca, 'YTick',0:1:4);
set(gca, 'XTick',0:5:45);
% ax.YTickLabel = {'0','50','100','150','200','250','300','350','400','450','500','550','600'};
% set(gca, 'YTickLabel',ax.YTickLabel);
% ax.XTickLabel = {'0','0.01','0.02','0.03','0.04','0.05','0.06','0.07','0.08','0.09','0.10'};
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
% % ax=legend('1 mm','5 mm','8 mm','12 mm','15 mm','18 mm','22 mm','24 mm','25 mm','30 mm');
% ax=legend('Base Metal','Outer HAZ','Inner HAZ','Nugget','Vural 2139-T8','Vural curve fit','location','northwest');
% leg = findobj(ax,'type','text');
% set(leg,'fontsize',8)

% %%% This is if you want to manually define specific curves
% hold on;
% h1=plot(-80,-80,'k-o');
% h2=plot(-80,-80,'k-o');
% h1=plot(-80,-80,'k-o');
% h2=plot(-80,-80,'k-s');
% h3=plot(-80,-80,'k-<');
% h4=plot(-80,-80,'k-*');
% h5=plot(-80,-80,'k');
% h6=plot(-80,-80,'k<','Markersize',10);
% h7=plot(-80,-80,'ko','MarkerFaceColor',[0.5 0.5 0.5]);
% h8=plot(-80,-80,'*k');
% h9=plot(-80,-80,'-k');
% ax=legend([h1],{'<600 s^{-1}'},'location','east');
% ax=legend([h1 h2 h3 h4],{'100 C','200 C','300 C','400 C'},'location','northwest');
% LEG = findobj(ax,'type','text');
% set(LEG,'FontSize',8)
xlim([0 45]);
ylim([0 4]);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% Outputs figure as .png
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
print('-dpng','-r300',sprintf('%s%s',FILENAME,'altered'));



% %Strain rate sensitivity
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%% Set Filename and figure label
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FILENAME='HSRSensitivityfigs2';
% FigureLabel='';
% h=gcf;
% j=annotation('textbox','Position',[0 0 1 1],'LineStyle','none','string',FigureLabel);
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%% Set Axis Labels
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % TITLE=get(gca,'Title');
% % LABELX=get(gca,'Xlabel');
% % LABELY=get(gca,'Ylabel');
% % title_string=get(TITLE,'String');
% % labelx_string=get(LABELX,'String');
% % labely_string=get(LABELY,'String');
% % %%% These will set the titles to the current ones
% % title(title_string,'Fontname','Times','FontSize',12);
% % xlabel(title_string,'Fontname','Times','FontSize',12);
% % ylabel(title_string,'Fontname','Times','FontSize',12);
% title('');
% xlabel('Log10 Strain rate (s^{-1}) ','Fontname','Times','FontSize',12);
% ylabel('Flow Stress at 5% offset (MPa)','Fontname','Times','FontSize',12);
% grid off;
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%% Set Image size
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% width=6*2.25;% 4inches in cm
% GR=0.5*(1+(5^0.5));
% set(gca,'ActivePositionProperty','outerposition');
% set(gcf,'paperunits','centimeters');
% set(gcf,'papersize',[width,width/GR]);
% set(gcf,'paperposition',[0,0,width,width/GR]);
% % set(gcf,'Position',[38 472 641 429]);
% set(gca,'outerposition',[0 0 1 1]);
% set(gca,'Position',[0.13 0.1455 0.775 0.78]);%Need this for the blast prediction
% % set(gca,'TightInset',[0.1 0.120098 0.0178571 0.0220588]);
% set(gca,'TickDir','out');
% set(gca,'XMinorTick','on','YMinorTick','on');
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%% Set Axis Ticks
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% set(gca, 'YTick',250:50:750);
% set(gca, 'XTick',-5:1:5);
% % ax.YTickLabel = {'0','5','10','15','20','25','30'};
% % set(gca, 'YTickLabel',ax.YTickLabel);
% % ax.XTickLabel = {'0','5','10','15','20','25','30'};
% % set(gca, 'XTickLabel',ax.XTickLabel);
% box on;
% % grid on;
% % grid minor;
% set(gca,'Fontname','Times','fontsize',12);
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%% Set Legend
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% %% This is if you want to define all curves
% % set(gca, 'XTickLabel', 'fontsize', 8)
% % set(gca, 'yticklabel', 'fontsize', 8)
% % % ax=legend('1 mm','5 mm','8 mm','12 mm','15 mm','18 mm','22 mm','24 mm','25 mm','30 mm');
% % ax=legend('Base Metal','Outer HAZ','Inner HAZ','Nugget','Vural 2139-T8','Vural curve fit','location','northwest');
% % leg = findobj(ax,'type','text');
% % set(leg,'fontsize',8)
% 
% % %%% This is if you want to manually define specific curves
% % hold on;
% h1=plot(-80,-80,'ks');
% h2=plot(-80,-80,'vk','MarkerFaceColor',[0 0 0]);
% h3=plot(-80,-80,'ok');
% h4=plot(-80,-80,'*k');
% h5=plot(-80,-80,'xk');
% h6=plot(-80,-80,':k');
% ax=legend([h1 h2 h3 h4 h5 h6],{'Base Metal','Outer HAZ','Inner HAZ','Nugget','2139-T8 (Vural et al.)','Fit'},'location','northwest');
% LEG = findobj(ax,'type','text');
% set(LEG,'FontSize',8)
% xlim([-5 5]);
% ylim([250 750]);
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%% Outputs figure as .png
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% print('-dpng','-r300',sprintf('%s%s',FILENAME,'altered'));
% 
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% Set Filename and figure label
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
%%%% Set Legend
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% This is if you want to define all curves
% set(gca, 'XTickLabel', 'FontSize', 8)
% set(gca, 'YTickLabel', 'FontSize', 8)
% ax=legend('Measurement set 1','Measurement set 2','Measurement set 3','4 point moving average');
% LEG = findobj(ax,'type','text');
% set(LEG,'FontSize',8)

%%% This is if you want to manually define specific curves
% hold on;
% h1=plot(-80,-80,'b');
% h2=plot(-80,-80,'r');
% h3=plot(-80,-80,'Color',[0.5 0 0.5]);
% ax=legend([h1 h2 h3],{'Start','End','0.1mm step'});
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
% % Code for Hardness distribution curves
% 
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%% Set Filename and figure label
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FILENAME='HardnessDistribution';
% FigureLabel='';
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
% ylabel('Vickers hardness (Hv)','Fontname','Times','FontSize',12);
% grid off;
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%% Set Image size
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% width=6*2.25;% 4inches in cm
% GR=0.5*(1+(5^0.5));
% set(gca,'ActivePositionProperty','outerposition');
% set(gcf,'paperunits','centimeters');
% set(gcf,'papersize',[width,width/GR]);
% set(gcf,'paperposition',[0,0,width,width/GR]);
% % set(gcf,'Position',[38 472 641 429]);
% set(gca,'outerposition',[0 0 1 1]);
% set(gca,'Position',[0.13 0.1455 0.775 0.78]);%Need this for the blast prediction
% % set(gca,'TightInset',[0.1 0.120098 0.0178571 0.0220588]);
% set(gca,'TickDir','out');
% set(gca,'XMinorTick','on','YMinorTick','on');
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%% Set Axis Ticks
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% set(gca, 'YTick',0:20:200);
% set(gca, 'XTick',-60:20:60);
% % ax.YTickLabel = {'0','5','10','15','20','25','30'};
% % set(gca, 'YTickLabel',ax.YTickLabel);
% % ax.XTickLabel = {'0','5','10','15','20','25','30'};
% % set(gca, 'XTickLabel',ax.XTickLabel);
% box on;
% % grid on;
% % grid minor;
% set(gca,'Fontname','Times','fontsize',12);
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%% Set Legend
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% %% This is if you want to define all curves
% % set(gca, 'XTickLabel', 'FontSize', 8)
% % set(gca, 'YTickLabel', 'FontSize', 8)
% % ax=legend('Measurement set 1','Measurement set 2','Measurement set 3','4 point moving average');
% % LEG = findobj(ax,'type','text');
% % set(LEG,'FontSize',8)
% 
% % %%% This is if you want to manually define specific curves
% % hold on;
% % h1=plot(-80,-80,'b');
% % h2=plot(-80,-80,'r');
% % h3=plot(-80,-80,'Color',[0.5 0 0.5]);
% % ax=legend([h1 h2 h3],{'Start','End','1e-7 time step'});
% % LEG = findobj(ax,'type','text');
% % set(LEG,'FontSize',8)
% xlim([-60 60]);
% ylim([0 200]);
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%% Outputs figure as .png
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% print('-dpng','-r300',sprintf('%s%s',FILENAME,'altered'));


% % Code for Weld temperature curves
% 
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%% Set Filename and figure label
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FILENAME='WeldTemperatures';
% FigureLabel='';
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
% xlabel('Time (s)','Fontname','Times','FontSize',12);
% ylabel('Temperature (C)','Fontname','Times','FontSize',12);
% grid off;
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%% Set Image size
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% width=6*2.25;% 4inches in cm
% GR=0.5*(1+(5^0.5));
% set(gca,'ActivePositionProperty','outerposition');
% set(gcf,'paperunits','centimeters');
% set(gcf,'papersize',[width,width/GR]);
% set(gcf,'paperposition',[0,0,width,width/GR]);
% % set(gcf,'Position',[38 472 641 429]);
% set(gca,'outerposition',[0 0 1 1]);
% set(gca,'Position',[0.13 0.1455 0.775 0.78]);%Need this for the blast prediction
% % set(gca,'TightInset',[0.1 0.120098 0.0178571 0.0220588]);
% set(gca,'TickDir','out');
% set(gca,'XMinorTick','on','YMinorTick','on');
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%% Set Axis Ticks
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% set(gca, 'YTick',0:50:600);
% set(gca, 'XTick',0:20:120);
% % ax.YTickLabel = {'0','5','10','15','20','25','30'};
% % set(gca, 'YTickLabel',ax.YTickLabel);
% % ax.XTickLabel = {'0','5','10','15','20','25','30'};
% % set(gca, 'XTickLabel',ax.XTickLabel);
% box on;
% % grid on;
% % grid minor;
% set(gca,'Fontname','Times','fontsize',12);
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%% Set Legend
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% %% This is if you want to define all curves
% % set(gca, 'XTickLabel', 'fontsize', 8)
% % set(gca, 'yticklabel', 'fontsize', 8)
% % ax=legend('1 mm','5 mm','8 mm','12 mm','15 mm','18 mm','22 mm','24 mm','25 mm','30 mm');
% ax=legend('8 mm','10 mm','15 mm','20 mm','25 mm','30 mm');
% leg = findobj(ax,'type','text');
% set(leg,'fontsize',8)
% 
% % %%% This is if you want to manually define specific curves
% % hold on;
% % h1=plot(-80,-80,'b');
% % h2=plot(-80,-80,'r');
% % h3=plot(-80,-80,'Color',[0.5 0 0.5]);
% % ax=legend([h1 h2 h3],{'Start','End','1e-7 time step'});
% % LEG = findobj(ax,'type','text');
% % set(LEG,'FontSize',8)
% xlim([0 120]);
% ylim([0 600]);
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%% Outputs figure as .png
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% print('-dpng','-r300',sprintf('%s%s',FILENAME,'altered'));
% 
% 







% % Code for saltbath figure
% 
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%% Set Filename and figure label
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FILENAME='Saltbath';
% FigureLabel='';
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
% xlabel(title_string,'Fontname','Times','FontSize',12);
% ylabel(title_string,'Fontname','Times','FontSize',12);
% title('');
% % xlabel('Time (s)','Fontname','Times','FontSize',12);
% % ylabel('Temperature (C)','Fontname','Times','FontSize',12);
% grid off;
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%% Set Image size
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% width=6*2.25;% 4inches in cm
% GR=0.5*(1+(5^0.5));
% set(gca,'ActivePositionProperty','outerposition');
% set(gcf,'paperunits','centimeters');
% set(gcf,'papersize',[width,width/GR]);
% set(gcf,'paperposition',[0,0,width,width/GR]);
% % set(gcf,'Position',[38 472 641 429]);
% set(gca,'outerposition',[0 0 1 1]);
% set(gca,'Position',[0.13 0.1455 0.775 0.78]);%Need this for the blast prediction
% % set(gca,'TightInset',[0.1 0.120098 0.0178571 0.0220588]);
% set(gca,'TickDir','out');
% set(gca,'XMinorTick','on','YMinorTick','on');
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%% Set Axis Ticks
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% set(gca, 'YTick',0:20:200);
% set(gca, 'XTick',0:0.5:3.5);
% % ax.YTickLabel = {'0','5','10','15','20','25','30'};
% % set(gca, 'YTickLabel',ax.YTickLabel);
% % ax.XTickLabel = {'0','5','10','15','20','25','30'};
% % set(gca, 'XTickLabel',ax.XTickLabel);
% box on;
% % grid on;
% % grid minor;
% set(gca,'Fontname','Times','fontsize',12);
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%% Set Legend
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% %% This is if you want to define all curves
% % set(gca, 'XTickLabel', 'fontsize', 8)
% % set(gca, 'yticklabel', 'fontsize', 8)
% % ax=legend('1 mm','5 mm','8 mm','12 mm','15 mm','18 mm','22 mm','24 mm','25 mm','30 mm');
% ax=legend('350 C','400 C','450 C','500 C',' 2014-T6 (400 C)');
% leg = findobj(ax,'type','text');
% set(leg,'fontsize',8)
% 
% % %%% This is if you want to manually define specific curves
% % hold on;
% % h1=plot(-80,-80,'b');
% % h2=plot(-80,-80,'r');
% % h3=plot(-80,-80,'Color',[0.5 0 0.5]);
% % ax=legend([h1 h2 h3],{'Start','End','1e-7 time step'});
% % LEG = findobj(ax,'type','text');
% % set(LEG,'FontSize',8)
% xlim([0 3.5]);
% ylim([0 200]);
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%% Outputs figure as .png
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% print('-dpng','-r300',sprintf('%s%s',FILENAME,'altered'));


% % Code for Dissolution figure
% 
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%% Set Filename and figure label
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FILENAME='Dissolution';
% FigureLabel='';
% h=gcf;
% j=annotation('textbox','Position',[0 0 1 1],'LineStyle','none','string',FigureLabel);
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%% Set Axis Labels
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % TITLE=get(gca,'Title');
% % LABELX=get(gca,'Xlabel');
% % LABELY=get(gca,'Ylabel');
% % title_string=get(TITLE,'String');
% % labelx_string=get(LABELX,'String');
% % labely_string=get(LABELY,'String');
% %%%% These will set the titles to the current ones
% % title(title_string,'Fontname','Times','FontSize',12);
% % xlabel(title_string,'Fontname','Times','FontSize',12);
% % ylabel(title_string,'Fontname','Times','FontSize',12);
% title('');
% xlabel('Log10(t/t_1*)','Fontname','Times','FontSize',12);
% ylabel('Log10[(HV_{max}-HV)/(HV_{max}-HV_{min})]','Fontname','Times','FontSize',12);
% grid off;
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%% Set Image size
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% width=6*2.25;% 4inches in cm
% GR=0.5*(1+(5^0.5));
% set(gca,'ActivePositionProperty','outerposition');
% set(gcf,'paperunits','centimeters');
% set(gcf,'papersize',[width,width/GR]);
% set(gcf,'paperposition',[0,0,width,width/GR]);
% % set(gcf,'Position',[38 472 641 429]);
% set(gca,'outerposition',[0 0 1 1]);
% set(gca,'Position',[0.13 0.1455 0.775 0.78]);%Need this for the blast prediction
% % set(gca,'TightInset',[0.1 0.120098 0.0178571 0.0220588]);
% set(gca,'TickDir','out');
% set(gca,'XMinorTick','on','YMinorTick','on');
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%% Set Axis Ticks
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% set(gca, 'YTick',-1.5:0.5:0.5);
% set(gca, 'XTick',-5:1:2);
% % ax.YTickLabel = {'0','5','10','15','20','25','30'};
% % set(gca, 'YTickLabel',ax.YTickLabel);
% % ax.XTickLabel = {'0','5','10','15','20','25','30'};
% % set(gca, 'XTickLabel',ax.XTickLabel);
% box on;
% % grid on;
% % grid minor;
% set(gca,'Fontname','Times','fontsize',12);
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%% Set Legend
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% %% This is if you want to define all curves
% % set(gca, 'XTickLabel', 'fontsize', 8)
% % set(gca, 'yticklabel', 'fontsize', 8)
% % ax=legend('1 mm','5 mm','8 mm','12 mm','15 mm','18 mm','22 mm','24 mm','25 mm','30 mm');
% ax=legend('350 C','400 C','450 C','500 C','Fitted curve','location','southeast');
% leg = findobj(ax,'type','text');
% set(leg,'fontsize',8)
% 
% % %%% This is if you want to manually define specific curves
% % hold on;
% % h1=plot(-80,-80,'b');
% % h2=plot(-80,-80,'r');
% % h3=plot(-80,-80,'Color',[0.5 0 0.5]);
% % ax=legend([h1 h2 h3],{'Start','End','1e-7 time step'});
% % LEG = findobj(ax,'type','text');
% % set(LEG,'FontSize',8)
% xlim([-5 2]);
% ylim([-1.5 0.5]);
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%% Outputs figure as .png
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% print('-dpng','-r300',sprintf('%s%s',FILENAME,'altered'));


% % Code for Natural aging figure
% 
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%% Set Filename and figure label
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FILENAME='NaturalAging';
% FigureLabel='';
% h=gcf;
% j=annotation('textbox','Position',[0 0 1 1],'LineStyle','none','string',FigureLabel);
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%% Set Axis Labels
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % TITLE=get(gca,'Title');
% % LABELX=get(gca,'Xlabel');
% % LABELY=get(gca,'Ylabel');
% % title_string=get(TITLE,'String');
% % labelx_string=get(LABELX,'String');
% % labely_string=get(LABELY,'String');
% % %%% These will set the titles to the current ones
% % title(title_string,'Fontname','Times','FontSize',12);
% % xlabel(title_string,'Fontname','Times','FontSize',12);
% % ylabel(title_string,'Fontname','Times','FontSize',12);
% title('');
% xlabel('Peak temperature (C) ','Fontname','Times','FontSize',12);
% ylabel('Change in hardness (HV)','Fontname','Times','FontSize',12);
% grid off;
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%% Set Image size
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% width=6*2.25;% 4inches in cm
% GR=0.5*(1+(5^0.5));
% set(gca,'ActivePositionProperty','outerposition');
% set(gcf,'paperunits','centimeters');
% set(gcf,'papersize',[width,width/GR]);
% set(gcf,'paperposition',[0,0,width,width/GR]);
% % set(gcf,'Position',[38 472 641 429]);
% set(gca,'outerposition',[0 0 1 1]);
% set(gca,'Position',[0.13 0.1455 0.775 0.78]);%Need this for the blast prediction
% % set(gca,'TightInset',[0.1 0.120098 0.0178571 0.0220588]);
% set(gca,'TickDir','out');
% set(gca,'XMinorTick','on','YMinorTick','on');
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%% Set Axis Ticks
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% set(gca, 'YTick',0:5:50);
% set(gca, 'XTick',0:100:600);
% % ax.YTickLabel = {'0','5','10','15','20','25','30'};
% % set(gca, 'YTickLabel',ax.YTickLabel);
% % ax.XTickLabel = {'0','5','10','15','20','25','30'};
% % set(gca, 'XTickLabel',ax.XTickLabel);
% box on;
% % grid on;
% % grid minor;
% set(gca,'Fontname','Times','fontsize',12);
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%% Set Legend
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% %% This is if you want to define all curves
% % set(gca, 'XTickLabel', 'fontsize', 8)
% % set(gca, 'yticklabel', 'fontsize', 8)
% % ax=legend('1 mm','5 mm','8 mm','12 mm','15 mm','18 mm','22 mm','24 mm','25 mm','30 mm');
% ax=legend('+1 week','+2 week','+3 week','location','northwest');
% leg = findobj(ax,'type','text');
% set(leg,'fontsize',8)
% 
% % %%% This is if you want to manually define specific curves
% % hold on;
% % h1=plot(-80,-80,'b');
% % h2=plot(-80,-80,'r');
% % h3=plot(-80,-80,'Color',[0.5 0 0.5]);
% % ax=legend([h1 h2 h3],{'Start','End','1e-7 time step'});
% % LEG = findobj(ax,'type','text');
% % set(LEG,'FontSize',8)
% xlim([0 600]);
% ylim([0 50]);
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%% Outputs figure as .png
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% print('-dpng','-r300',sprintf('%s%s',FILENAME,'altered'));

% 
% 
% % Code for New hardness figure
% 
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%% Set Filename and figure label
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FILENAME='PredictedHardness';
% FigureLabel='';
% h=gcf;
% j=annotation('textbox','Position',[0 0 1 1],'LineStyle','none','string',FigureLabel);
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%% Set Axis Labels
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % TITLE=get(gca,'Title');
% % LABELX=get(gca,'Xlabel');
% % LABELY=get(gca,'Ylabel');
% % title_string=get(TITLE,'String');
% % labelx_string=get(LABELX,'String');
% % labely_string=get(LABELY,'String');
% % %%% These will set the titles to the current ones
% % title(title_string,'Fontname','Times','FontSize',12);
% % xlabel(title_string,'Fontname','Times','FontSize',12);
% % ylabel(title_string,'Fontname','Times','FontSize',12);
% title('');
% xlabel('Distance from centre of weld (mm) ','Fontname','Times','FontSize',12);
% ylabel('Vickers hardness(HV)','Fontname','Times','FontSize',12);
% grid off;
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%% Set Image size
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% width=6*2.25;% 4inches in cm
% GR=0.5*(1+(5^0.5));
% set(gca,'ActivePositionProperty','outerposition');
% set(gcf,'paperunits','centimeters');
% set(gcf,'papersize',[width,width/GR]);
% set(gcf,'paperposition',[0,0,width,width/GR]);
% % set(gcf,'Position',[38 472 641 429]);
% set(gca,'outerposition',[0 0 1 1]);
% set(gca,'Position',[0.13 0.1455 0.775 0.78]);%Need this for the blast prediction
% % set(gca,'TightInset',[0.1 0.120098 0.0178571 0.0220588]);
% set(gca,'TickDir','out');
% set(gca,'XMinorTick','on','YMinorTick','on');
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%% Set Axis Ticks
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% set(gca, 'YTick',0:20:200);
% set(gca, 'XTick',-60:20:60);
% % ax.YTickLabel = {'0','5','10','15','20','25','30'};
% % set(gca, 'YTickLabel',ax.YTickLabel);
% % ax.XTickLabel = {'0','5','10','15','20','25','30'};
% % set(gca, 'XTickLabel',ax.XTickLabel);
% box on;
% % grid on;
% % grid minor;
% set(gca,'Fontname','Times','fontsize',12);
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%% Set Legend
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% %% This is if you want to define all curves
% % set(gca, 'XTickLabel', 'fontsize', 8)
% % set(gca, 'yticklabel', 'fontsize', 8)
% % ax=legend('1 mm','5 mm','8 mm','12 mm','15 mm','18 mm','22 mm','24 mm','25 mm','30 mm');
% ax=legend('As welded','+1 week Natural aging','+2 week Natural aging','+3 week Natural aging','location','southeast');
% leg = findobj(ax,'type','text');
% set(leg,'fontsize',8)
% 
% % %%% This is if you want to manually define specific curves
% % hold on;
% % h1=plot(-80,-80,'b');
% % h2=plot(-80,-80,'r');
% % h3=plot(-80,-80,'Color',[0.5 0 0.5]);
% % ax=legend([h1 h2 h3],{'Start','End','1e-7 time step'});
% % LEG = findobj(ax,'type','text');
% % set(LEG,'FontSize',8)
% xlim([-60 60]);
% ylim([0 200]);
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%% Outputs figure as .png
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% print('-dpng','-r300',sprintf('%s%s',FILENAME,'altered'));



% 
% % Code for MechProps curves
% 
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%% Set Filename and figure label
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FILENAME='MechProps';
% FigureLabel='';
% h=gcf;
% j=annotation('textbox','Position',[0 0 1 1],'LineStyle','none','string',FigureLabel);
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%% Set Axis Labels
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % TITLE=get(gca,'Title');
% % LABELX=get(gca,'Xlabel');
% % LABELY=get(gca,'Ylabel');
% % title_string=get(TITLE,'String');
% % labelx_string=get(LABELX,'String');
% % labely_string=get(LABELY,'String');
% %%%% These will set the titles to the current ones
% title_string='';
% labelx_string='True Strain';
% labely_string='True Stress (MPa)';
% title(title_string,'Fontname','Times','FontSize',12);
% xlabel(labelx_string,'Fontname','Times','FontSize',12);
% ylabel(labely_string,'Fontname','Times','FontSize',12);
% title('');
% % xlabel('Distance from weld centreline (mm)','Fontname','Times','FontSize',12);
% % ylabel('Strain (%)','Fontname','Times','FontSize',12);
% grid off;
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%% Set Image size
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% width=6*2.25;% 4inches in cm
% GR=0.5*(1+(5^0.5));
% set(gca,'ActivePositionProperty','outerposition');
% set(gcf,'paperunits','centimeters');
% set(gcf,'papersize',[width,width/GR]);
% set(gcf,'paperposition',[0,0,width,width/GR]);
% % set(gcf,'Position',[38 472 641 429]);
% set(gca,'outerposition',[0 0 1 1]);
% set(gca,'Position',[0.13 0.1455 0.775 0.78]);%Need this for the blast prediction
% % set(gca,'TightInset',[0.1 0.120098 0.0178571 0.0220588]);
% set(gca,'TickDir','out');
% set(gca,'XMinorTick','on','YMinorTick','on');
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%% Set Axis Ticks
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% set(gca, 'YTick',0:100:600);
% set(gca, 'XTick',0:0.02:0.15);
% ax.YTickLabel = {'0','100','200','300','400','500','600'};
% set(gca, 'YTickLabel',ax.YTickLabel);
% ax.XTickLabel = {'0','0.02','0.04','0.06','0.08','0.10','0.12','0.14'};
% set(gca, 'XTickLabel',ax.XTickLabel);
% box on;
% grid on;
% % grid minor;
% set(gca,'Fontname','Times','fontsize',12);
% 
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
% % ax=legend([h1 h2 h3],{'Start','End','1e-7 time step'});
% % LEG = findobj(ax,'type','text');
% % set(LEG,'FontSize',8)
% legend off
% xlim([0 0.15]);
% ylim([0 600]);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% Set Annotations
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% text(.001,530,'Base Metal (HV175)');
% text(.01,440,'Outer HAZ (HV150)');
% text(.04,350,'Outer HAZ (HV120)');
% text(.02,190,'Inner HAZ (HV90)');
% text(.02,250,'Nugget');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Outputs figure as .png
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% print('-dpng','-r300',sprintf('%s%s',FILENAME,'altered'));
