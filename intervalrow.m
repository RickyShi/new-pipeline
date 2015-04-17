function intervalrow = intervalrow( train, test )
[m1,n1]=size(train);
[m2,n2]=size(test);
idx=1;
for windows=20:10:40
    for i=1:n1
        r1{idx}(:,i)=filter(ones(1,windows),1,train(:,i));
        t1(:,i)=r1{idx}(windows:windows:end,i)./windows; 
    end;
        t1(:,end)=ceil(t1(:,end));
        training{idx}=t1;
    for i=1:n2
        r2{idx}(:,i)=filter(ones(1,windows),1,test(:,i));
        t2(:,i)=r2{idx}(windows:windows:end,i)./windows; 
    end;
        t2(:,end)=ceil(t2(:,end));
        testing{idx}=t2;
    %%%%%%glm-test
    result{idx}=glm(training{idx},testing{idx});
    accuarcy_drink(idx)=result{idx}.accuarcy_drink;
    idx=idx+1;
    clear r1 t1 r2 t2;
end;
intervalrow.bestaccuarcy=max(accuarcy_drink);
intervalrow.bestidx=find(accuarcy_drink==intervalrow.bestaccuarcy);
intervalrow.train=training{intervalrow.bestidx(1)};
intervalrow.test=testing{intervalrow.bestidx(1)};
        


end

