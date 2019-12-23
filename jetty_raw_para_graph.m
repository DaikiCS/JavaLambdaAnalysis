clear all;
close all;

%standard_x=[0];
%standard_r=[0];
%standard_p=[0];
%raw -> foreach
%para -> for-loop
load pmd_lambda_2019_1201.dat

%load castle_foreach_csharp_candi.dat

time_x = pmd_lambda_2019_1201(:,1);
lambda = pmd_lambda_2019_1201(:,2);

%time_x_true = castle_foreach_csharp_candi(:,1);
%para_true = castle_foreach_csharp_candi(:,3);

% dual_r = Sharp_Develop_6values_p2(:,4);
% dual_p = Sharp_Develop_6values_p2(:,5);
% single_r = Sharp_Develop_6values_p2(:,6);
% single_p = Sharp_Develop_6values_p2(:,7);


yrange = [175 49449];
%limits = [38933.35252  40539.59194 yrange];
% new limits40611.51731
limits = [41665.50 43716.47 yrange];



plot(time_x,lambda,'r');hold on
%plot(time_x_true,para_true,':r');hold on

% plot(time_x,dual_r,'--r');hold on
% plot(time_x,dual_p,'--b');hold on
% 
% plot(time_x,single_r,':r');hold on
% plot(time_x,single_p,':b');hold on



axis(limits );
 
%legend('Raw:ayenderahi','Generic:ayenderahi','Raw:fabiomaulo','Generic:fabiomaulo','Raw:justme84','Generic:justme84');
hleg1= legend('Lambda','Parameterized','sub-foreach','Dual-P','Single-R','Single-P');
set(hleg1,'Location','NorthWest')
%set(hleg1,'Interpreter','none') 
set(hleg1,'FontAngle','normal','TextColor',[.3 .2 .1]) 
 
xlabel('Date');
ylabel('Number of Feature Uses'); 

set(gca,'XTick',[42370 42736 43101 43466]);
set(gca,'XTickLabel',[2016 2017 2018 2019]);


title('Lambda usage By Daiki Itoh in PMD','Color','k','fontsize',12, 'fontangle','normal','fontweight','bold') % Make text color black


% grid on;
 
       
% end