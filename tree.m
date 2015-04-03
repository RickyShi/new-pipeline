function arracy = tree( train, test )
col=size(train,2);
%%train
for i=1:2
    if i==1
        for j=1:col-1
            tree=fitctree(train(:,2:end-1),train(:,end),'Prune', 'off', 'NumVariablesToSample', j);
            pred_tree{i}(:,j)=predict(tree,test(:,2:end-1));
            error_tree(1,j)=mean(abs(test(:,end)-pred_tree{i}(:,j)));
        end;
    else if i==2
            for j=1:col-1
                tree=fitctree(train(:,2:end-1),train(:,end),'Prune', 'on', 'NumVariablesToSample', j);
                pred_tree{i}(:,j)=predict(tree,test(:,2:end-1));
                error_tree(2,j)=mean(abs(test(:,end)-pred_tree{i}(:,j)));
            end;
        end;
    end;

%%count test information   
drink_count=sum(test(:,end));
benchmark=drink_count/size(test,1);

%%output
arracy.error=min(min(error_tree));
[arracy.row,arracy.col]=find(error_tree==arracy.error);
arracy.result=pred_tree{arracy.row(1)}(:,arracy.col(1));
arracy.benchmark=benchmark;
arracy.good_or_not=arracy.error<benchmark;
end

