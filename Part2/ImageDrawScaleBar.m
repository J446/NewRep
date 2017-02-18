close all;
clear;
filename='CROPNuggetTEM';
IM1=imread(sprintf('%s%s',filename,'.png'));
FIGX=figure;
imshow(IM1);
% [Y,X]=size(IM1);
X=1024;
Y=632;
ScaleX = (X)*228/1024;
ScaleY = Y*15/632;
OffsetX = 0.01*X;
OffsetY = 0.95*Y;
x = [0 1 1 0]*ScaleX + OffsetX;
y = [0 0 1 1]*ScaleY + OffsetY;
patch(x,y,'black')
SCALE = '100 nm';
SCALEx = OffsetX +0.25*ScaleX;
SCALEy = OffsetY - Y*15/632;
text(SCALEx,SCALEy,SCALE,'FontSize',24);
set(gca,'position',[0 0 1 1],'units','normalized')
print(FIGX,'-dpng','-r72',sprintf('%s%s',filename,'Bar.png') );