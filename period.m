function period = period( train,test)

        train_period=train(train(:,end)==1,:);
        [m1,n1]=size(train_period);
        test_period=test(test(:,end)==1,:);
        [m2,n2]=size(test_period);
        if m1==0
            period.train=train;
        end;
        if m1~=0
        row=1;
            for t1=5/60:1/60:10/60
                col=1;
                for t2=5/60:1/60:10/60
                %train
                    endtime=train_period(m1,1)+t1;
                    starttime=train_period(1,1)-t2;
                    train(train(:,1)<=endtime&train(:,1)>=starttime,end)=1;         
                %%test
                if m2~=0
                    endtime=test_period(m2,1)+t1;
                    starttime=test_period(1,1)-t2;
                    test(test(:,1)<=endtime&test(:,1)>=starttime,end)=1;
                end;
                %fit glm to see correlation for test
                glm=fitglm(train(:,2:end-1),train(:,end),'linear','Distribution','binomial','link','logit');
                pred=predict(glm,test(:,2:end-1));
                corr=corrcoef(pred,test(:,end));
                correlation(row,col)=corr(2);
                col=col+1;
                    end;
                end;
            row=row+1;
            end;

[m,n]=find(max(correlation));
%give best train data
if m1~=0
    endtime=train_period(m1,1)+(5+n)/60;
    starttime=train_period(1,1)-(5+m)/60;
    train(train(:,1)<=endtime&train(:,1)>=starttime,end)=1;
    period.train=train;
end;

%give best test data
        if m2~=0
            endtime=test_period(m2,1)+(5+n)/60;
            starttime=test_period(1,1)-(5+m)/60;
            test(test(:,1)<=endtime&test(:,1)>=starttime,end)=1;
            period.test=test;
        end;
        if m1==0
            period.train=train;
        end;
        if m2==0
            period.test=test;
        end;
        period.idx=[(5+m)/60,(5+n)/60];

end

