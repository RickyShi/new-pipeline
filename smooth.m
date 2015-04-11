function  smooth(data,m)
figure
x=data(:,1);
y=data(:,3);
 [f,gof,out]= fit(x, y,  'smoothingspline', 'SmoothingParam', 0.9);
 subplot(2,2,1)
 xlim([min(x),max(x)]);
 ylim([min(y),max(y)]);
plot(f);
str = sprintf('smoothing Rsquare %f',gof.rsquare);

if sum(data(:,end))>0 
    hold on
    plot(x,data(:,end)*max(y),'-b');
    legend(str,'Drink');
else 
    legend(str);
end;
ylim([min(y),max(y)]);
xlabel('Time');
ylabel('Breath Rate');


%%%smooth plot hr 

x=data(:,1);
y=data(:,4);
 [f,gof,out]= fit(x, y,  'smoothingspline', 'SmoothingParam', 0.9);
 subplot(2,2,2)
 xlim([min(x),max(x)]);
 ylim([min(y),max(y)]);
plot(f);
str = sprintf('smoothing Rsquare %f',gof.rsquare);
if sum(data(:,end))>0 
    hold on
    plot(x,data(:,end)*max(y),'-b');
    legend(str,'Drink');
else 
    legend(str);
end;
ylim([min(y),max(y)]);
xlabel('Time');
ylabel('Heart Rate');
%title('ricky0203 drink');

%%%smooth plot ambulation
 
x=data(:,1);
y=data(:,2);
 [f,gof,out]= fit(x, y,  'smoothingspline', 'SmoothingParam', 0.9);
 subplot(2,2,3)
 xlim([min(x),max(x)]);
 ylim([min(y),max(y)]);
plot(f);
str = sprintf('smoothing Rsquare %f',gof.rsquare);
if sum(data(:,end))>0 
    hold on
    plot(x,data(:,end)*max(y),'-b');
    legend(str,'Drink');
else 
    legend(str);
end;
ylim([min(y),max(y)]);
xlabel('Time');
ylabel('ambulation');

%%%smooth plot skin temperature
 
x=data(:,1);
y=data(:,5);
 [f,gof,out]= fit(x, y,  'smoothingspline', 'SmoothingParam', 0.6);
 subplot(2,2,4)
 xlim([min(x),max(x)]);
 ylim([min(y),max(y)]);
plot(f);
str = sprintf('smoothing Rsquare %f',gof.rsquare);
if sum(data(:,end))>0 
    hold on
    plot(x,data(:,end)*max(y),'-b');
    legend(str,'Drink');
else 
    legend(str);
end;
ylim([min(y),max(y)]);
xlabel('Time');
ylabel('skin temperature');

end

