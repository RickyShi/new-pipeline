function arracy = randomforest( train,test )
%%randomforest
num=size(train(:,2:end-1),2);
for i=1:num
    rffit=TreeBagger(50,train(:,2:end-1),train(:,end),'NvarToSample',i,'Method','classification','oobpred','on');
    pred=predict(rffit,test(:,2:end-1));
    result(:,i)=double(nominal(pred))-1;
    error_rf(i)=mean(abs(test(:,end)-result(:,i)));
end;
%%count test information   
drink_count=sum(test(:,end));
benchmark=drink_count/size(test,1);

%%output
arracy.error=min(error_rf);
arracy.index=find(error_rf==arracy.error);
arracy.result=result(:,arracy.index);
arracy.benchmark=benchmark;
arracy.good_or_not=arracy.error<benchmark;
end

