function ricky=rickyclean(file)
%load in dataset
%file='02_Mar_201519-22_';
testdata=readtable([file '.csv']);
featureselect=testdata(:,{'time','motion','BRDerivedByBelt','HRDerivedByECG','SkinTemperature','DF'});


%%convert format for time
t=hour(featureselect.time)+minute(featureselect.time)/60+second(featureselect.time)/3600;
featureselect.time=t;
if iscellstr(featureselect.BRDerivedByBelt)
    featureselect.BRDerivedByBelt=str2double(featureselect.BRDerivedByBelt);
end;
if iscellstr(featureselect.HRDerivedByECG)
    featureselect.HRDerivedByECG=str2double(featureselect.HRDerivedByECG);
end;

featureselect=table2array(featureselect);

%%fit missing for hr and delete first nan
yi=featureselect(find(~isnan(featureselect(:,4))),4);
xi=featureselect(find(~isnan(featureselect(:,4))),1);
result=round(interp1(xi,yi,featureselect(:,1),'linear'));
featureselect(:,4)=result;
featureselect(isnan(featureselect(:,4)),:)=[];


%%fit missing for hr
yi=featureselect(find(~isnan(featureselect(:,3))),3);
xi=featureselect(find(~isnan(featureselect(:,3))),1);
result=round(interp1(xi,yi,featureselect(:,1),'linear'));
featureselect(:,3)=result;
featureselect(isnan(featureselect(:,3)),:)=[];

%%replace nan in DF
featureselect(isnan(featureselect(:,6)),6)=0;

ricky=featureselect;
%1.skin 2.number of drink 3.time 4. heart rate 5.breath rate 6.accelometer
%7.drink or not
end

