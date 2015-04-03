function interaction3 = interaction3( data )
times=data;
data=array2table(data);
m=size(times,1);
for i=1:m
    %2interaction
data.hrbr(i)=times(i,3)*times(i,4);
data.hrskin(i)=times(i,4)*times(i,5);
data.hrmotion(i)=times(i,4)*times(i,2);
data.brskin(i)=times(i,3)*times(i,5);
data.brmotion(i)=times(i,3)*times(i,2);
data.skinmotion(i)=times(i,5)*times(i,2);
%3interaction
data.hrbrskin(i)=data(i,3)*data(i,4)*data(i,5);
data.hrbrmotion(i)=data(i,3)*data(i,4)*data(i,2);
data.hrskinmotion(i)=data(i,4)*data(i,5)*data(i,2);
data.brskinmotion(i)=data(i,3)*data(i,5)*data(i,2);
end;




data.df=data(:,6);
data(:,6)=[];

interaction3=table2array(data);


end

