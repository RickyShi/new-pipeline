function interaction2 = interaction2( data )
times=data;
data=array2table(data);
m=size(times,1);
for i=1:m
data.hrbr(i)=times(i,3)*times(i,4);
data.hrskin(i)=times(i,4)*times(i,5);
data.hrmotion(i)=times(i,4)*times(i,2);
data.brskin(i)=times(i,3)*times(i,5);
data.brmotion(i)=times(i,3)*times(i,2);
data.skinmotion(i)=times(i,5)*times(i,2);
end;
data.df=times(:,6);
data(:,6)=[];

interaction2=table2array(data);

end

