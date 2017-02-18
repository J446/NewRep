close all;
clear;
x=[0
    10
    12
    22
    25
    55
    52
    62
    65
    70
    72
    80
    82
    85
    87
    95
    97
    120
    122
    130
    132
    135
    137
    148
    198
    298
    300];
y=[666
    666
    20
    20
    550
    550
    20
    20
    300
    300
    20
    20
    80
    80
    20
    20
    520
    520
    20
    20
    80
    80
    20
    20
    165
    165
    20];
y2=[666
    666
    20
    20
    550
    550
    20
    20
    300
    300
    20
    20
    20
    20
    20
    20
    520
    520
    20
    20
    80
    80
    20
    20
    165
    165
    20];
h=figure;
plot(x,y2,'k','linewidth',1.5);
hold on;
plot(x,y,'-.r','linewidth',1.5);
xlim([0 300]);
ylim([0 700]);
legend('T84 heat processing route','T8 Processing Route')
% text(5,680,'Cast');
% text(20,580,'Homegenised');
% text(60,320,'Hot Rolled');
% text(75,100,'Cold Rolled');
% text(100,550,'Solution Treat');
% text(130,100,'Stretching');
% text(200,200,'Age HArdening');

text(5,680,'A');
text(35,570,'B');
text(65,320,'C');
text(80,100,'D');
text(105,550,'E');
text(130,100,'F');
text(250,180,'G');

% text(210,550,'A - Cast');
% text(210,520,'B - Homegenised');
% text(210,490,'C - Hot Rolled');
% text(210,460,'D - Cold Rolled');
% text(210,430,'E - Solution Treat');
% text(210,400,'F - Stretching');
% text(210,370,'G - Age HArdening');
saveas(h,'ProcessHistory','fig');


    
    