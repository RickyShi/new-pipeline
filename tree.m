function arracy = tree( train, test )
col=size(train,2);
%%train
for i=1:2
    if i==1
        for j=1:col-1
            tree=fitctree(train(:,2:end-1),train(:,end),'Prune', 'off', 'NumVariablesToSample', j);
            pred_tree{i}(:,j)=predict(tree,test(:,2:end-1));
            confusion{i,j}=confusionmat(test(:,end),pred_tree{i}(:,j));
            accuracy_all(i,j)=(confusion{i,j}(1,1)+confusion{i,j}(2,2))/length(pred_tree{i}(:,j));
            accuracy_drink(i,j)=confusion{i,j}(2,2)/sum(confusion{i,j}(2,:));
        end;
    else if i==2
            for j=1:col-1
                tree=fitctree(train(:,2:end-1),train(:,end),'Prune', 'on', 'NumVariablesToSample', j);
                pred_tree{i}(:,j)=predict(tree,test(:,2:end-1));
                confusion{i,j}=confusionmat(test(:,end),pred_tree{i}(:,j));
                accuracy_all(i,j)=(confusion{i,j}(1,1)+confusion{i,j}(2,2))/length(pred_tree{i}(:,j));
                accuracy_drink(i,j)=confusion{i,j}(2,2)/sum(confusion{i,j}(2,:));
            end;
        end;
    end;
end;
%%count test information   
drink_count=sum(test(:,end));
benchmark=drink_count/size(test,1);

%%output
arracy.accuracy_drink=max(max(accuracy_drink));
[arracy.row,arracy.col]=find(accuracy_drink==arracy.accuracy_drink);
arracy.accuracy_all=accuracy_all{arracy.row(1),arracy.col(1)};
arracy.confusion=confusion{arracy.row(1),arracy.col(1)};
arracy.result=pred_tree{arracy.row(1)}(:,arracy.col(1));
arracy.benchmark=1-benchmark;
arracy.good_or_not=arracy.accuracy_all>arracy.benchmark;
end

