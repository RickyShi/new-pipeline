function  smooth(data,m)
figure
x=data(:,1);
y=data(:,3);
 [f,gof,out]= fit(x, y,  'smoothingspline', 'SmoothingParam', m);
 subplot(2,2,1)
 xlim([min(x),max(x)]);
 ylim([min(y),max(y)]);
plot(f);
%hold on
%plot(x,ricky0203(:,5)*max(y),'-b')
str = sprintf('smoothing Rsquare %f',gof.rsquare);
legend(str);
ylim([min(y),max(y)]);
xlabel('Time');
ylabel('Breath Rate');


%%%smooth plot hr 

x=data(:,1);
y=data(:,4);
 [f,gof,out]= fit(x, y,  'smoothingspline', 'SmoothingParam', m);
 subplot(2,2,2)
 xlim([min(x),max(x)]);
 ylim([min(y),max(y)]);
plot(f);
%hold on
%plot(x,ricky0203(:,5)*max(y),'-b')
str = sprintf('smoothing Rsquare %f',gof.rsquare);
legend(str);
ylim([min(y),max(y)]);
xlabel('Time');
ylabel('Heart Rate');
%title('ricky0203 drink');

%%%smooth plot Skin Temperature
 
x=data(:,1);
y=data(:,5);
 [f,gof,out]= fit(x, y,  'smoothingspline', 'SmoothingParam', m);
 subplot(2,2,3)
 xlim([min(x),max(x)]);
 ylim([min(y),max(y)]);
plot(f);
%hold on
%plot(x,ricky0203(:,5)*max(y),'-b')
str = sprintf('smoothing Rsquare %f',gof.rsquare);
legend(str);
ylim([min(y),max(y)]);
xlabel('Time');
ylabel('Skin Temperature');

%%%smooth plot ambulation
x=data(:,1);
y=data(:,2);
 [f,gof,out]= fit(x, y,  'smoothingspline', 'SmoothingParam', m);
 subplot(2,2,4)
 xlim([min(x),max(x)]);
 ylim([min(y),max(y)]);
plot(f);
%hold on
%plot(x,ricky0203(:,5)*max(y),'-b')
str = sprintf('smoothing Rsquare %f',gof.rsquare);
legend(str);
ylim([min(y),max(y)]);
xlabel('Time');
ylabel('ambulation');

end

