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
    error_svm(i)=mean(abs(test(:,end)-result(:,i)));
end;


%%%%%%%count test information%%%%%%%   
drink_count=sum(test(:,end));
benchmark=drink_count/size(test,1);

%%output
arracy.error=min(error_svm);
arracy.index=find(error_svm==arracy.error);
arracy.result=result(:,arracy.index);
arracy.benchmark=benchmark;
arracy.good_or_not=arracy.error<benchmark;



end

