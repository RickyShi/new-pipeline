function fitted = fitspline( data )
%%fit missing for br
%%%traindata
    yi=data(find(~isnan(data(:,4))),4);
    xi=data(find(~isnan(data(:,4))),1);
    fitspline=round(interp1(xi,yi,data(:,1),'spline'));
    data(:,4)=fitspline;
    data(isnan(data(:,4)),:)=[];
    
%%fit missing for hr
    yi=data(find(~isnan(data(:,3))),3);
    xi=data(find(~isnan(data(:,3))),1);
    fitspline=round(interp1(xi,yi,data(:,1),'spline'));
    data(:,3)=fitspline;
    data(isnan(data(:,3)),:)=[];
    
    fitted=data;

end

