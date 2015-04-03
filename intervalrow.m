function intervalrow = intervalrow( data )
[m,n]=size(data);
windows=5;
for i=1:n
    r=filter(ones(1,windows),1,data(:,i));
    t(:,i)=r(windows:windows:end)./windows; 
end;
t(:,end)=ceil(t(:,end));
intervalrow=t;


end

