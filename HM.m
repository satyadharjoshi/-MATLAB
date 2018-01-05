clc;
clear all;
close all;
dat=xlsread('HM1.xlsx')
data=dat(1:end,1:3);
sz=size(data);
x=data(1:sz(1),1);
y=data(1:sz(1),2);
z=data(1:sz(1),3);
figure;
hold on;
axis([1 200 1 200]);
xlabel('Avalues');
ylabel('Bvalues');
for(i=1:sz(1))
    
    if(z(i)>0.8)
        plot(x(i),y(i),'--rs','LineWidth',2,'MarkerEdgeColor','g','MarkerFaceColor','g','MarkerSize',2);
        %str=strcat('(',num2str(x(i)),',',num2str(y(i)),')');
        %text(x(i)+0.15,y(i),str);
    else
        if(z(i)>0.4)
            plot(x(i),y(i),'--rs','LineWidth',2,'MarkerEdgeColor','b','MarkerFaceColor','b','MarkerSize',2);
        else
            if(z(i)>=0)
                plot(x(i),y(i),'--rs','LineWidth',2,'MarkerEdgeColor','k','MarkerFaceColor','k','MarkerSize',2);
            else
                plot(x(i),y(i),'--rs','LineWidth',2,'MarkerEdgeColor','r','MarkerFaceColor','r','MarkerSize',2);
            end
        end
    end
end
hold off;
