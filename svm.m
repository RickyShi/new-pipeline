function [ output_args ] =svm( train, test )
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%      Support Vector Machine(Simple)
%%%        written by peng
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%list kernel parameter%%%%%%%
kernel={'rbf','linear','polynomial'};

for i= 1:3
    %%%%%%%training function%%%%%%%
    svmmodel=fitcsvm(train(:,2:end-1),train(:,end),'KernelFunction',kernel{i});

    %%%%%%%predict function%%%%%%%
    result(:,i)=predict(svmmodel,test(:,2:end-1));

    %%%%%%%test error%%%%%%%
    confusion{i}=confusionmat(test(:,end),result(:,i));
    accuracy_drink(i)=confusion{i}(2,2)/sum(confusion{i}(2,:));
    accuracy_all(i)=(confusion{i}(1,1)+confusion{i}(2,2))/length(result(:,i));
end;


%%%%%%%count test information%%%%%%%   
drink_count=sum(test(:,end));
benchmark=drink_count/size(test,1);

%%output
arracy.accuracy_all=max(accuracy_all);
arracy.accuracy_drink=max(accurcy_drink);
arracy.index=find(accuracy_drink==arracy.accuracy_drink);
arracy.result=result(:,arracy.index);
arracy.benchmark=1-benchmark;
arracy.confusion=confusion{arracy.index};
arracy.good_or_not=arracy.accuracy_all>benchmark;

end

