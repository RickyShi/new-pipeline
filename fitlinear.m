function fitted= fitlinear(data)
%%fit missing for br
%%%traindata
    yi=data(find(~isnan(data(:,4))),4);
    xi=data(find(~isnan(data(:,4))),1);
    fitlinear=round(interp1(xi,yi,data(:,1),'linear'));
    data(:,4)=fitlinear;
    data(isnan(data(:,4)),:)=[];
    
%%fit missing for hr
    yi=data(find(~isnan(data(:,3))),3);
    xi=data(find(~isnan(data(:,3))),1);
    fitlinear=round(interp1(xi,yi,data(:,1),'linear'));
    data(:,3)=fitlinear;
    data(isnan(data(:,3)),:)=[];

%% fit missing for skin temperature
    yi=data(find(~isnan(data(:,5))),5);
    xi=data(find(~isnan(data(:,5))),1);
    fitlinear=round(interp1(xi,yi,data(:,1),'linear'));
    data(:,5)=fitlinear;
    data(isnan(data(:,5)),:)=[];
    
    
   fitted=data;
end

