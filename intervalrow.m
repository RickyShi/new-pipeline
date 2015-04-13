function intervalrow = intervalrow( train, test )
[m1,n1]=size(train);
[m2,n2]=size(test);
idx=1;
for windows=5:5:20
    for i=1:n1
        r=filter(ones(1,windows),1,train(:,i));
        t(:,i)=r(windows:windows:end)./windows; 
    end;
        t(:,end)=ceil(t(:,end));
        training(idx)=t;
    for i=1:n2
        r=filter(ones(1,windows),1,test(:,i));
        t(:,i)=r(windows:windows:end)./windows; 
    end;
        t(:,end)=ceil(t(:,end));
        testing(idx)=t;
    %%%%%%glm-test
    result(idx)=glm(training(idx),testing(idx));
    idx=idx+1;
end;
intervalrow.bestaccuarcy=max(result.accuarcy);
intervalrow.bestidx=find(result.accuarcy==intervalrow.bestaccuarcy);
intervalrow.train=training(intervalrow.bestidx);
intervalrow.testing=testing(intervalrow.bestidx);
        


end

