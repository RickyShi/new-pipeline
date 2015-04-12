function result =  pipe(train,test,fit,sampleGeneration,graph,m)
%pipeline implementation 
traindata=ricky(train);
testdata=ricky(test);
result.numberofdrink.train=sum(traindata(:,end));
result.numberofdrink.test=sum(testdata(:,end));

%cleaned method
if strcmp(fit,'linear')
   traindata=fitlinear(traindata);
   testdata=fitlinear(testdata);
else if strcmp(fit, 'spline')
        traindata=fitspline(traindata);
        testdata=fitspline(testdata);
    end;
end;
% Check number of inputs.
if nargin > 6
    error('TooManyInputs');
end

% Fill in unset optional values.
switch nargin
    case 4
        graph = 'noplot';
        m = 0;
end

%give the plot(option)
if strcmp(graph,'smooth')
    smooth(traindata,m);
    smooth(testdata,m);
end;

%data training sample generation
    if strcmp(sampleGeneration,'period');
        data=period(traindata,testdata);
        traindata=data.train;
        testdata=data.test;
        result.period=data;
    else if strcmp(sampleGeneration,'interval')
            traindata=interval(traindata);
            testdata=interval(testdata);
            result.interval.train=traindata;
            result.interval.test=testdata;
        else if strcmp(sampleobs,'intervalrow')
            traindata=intervalrow(traindata);
            testdata=intervalrow(testdata);
            result.windows.train=traindata;
            result.windows.test=testdata;
            end;
        end;
    end;
    
%sampling
% if strcmp(samplevar,'simple');
    traindataSimple=simple(traindata);
    testdataSimple=simple(testdata);
    result.simple.train=traindataSimple;
    result.simple.test=testdataSimple;
% else if strcmp(samplevar,'2interaction');
    traindataInteraction=interaction2(traindata);
    testdataInteraction=interaction2(testdata);
    result.interaction.train=traindataInteraction;
    result.interaction.test=testdataInteraction;
%     end;
% end;



%supervised learning
% if strcmp(machine,'randomforest')
%     result.simple.rf=randomforest(traindataSimple,testdataSimple);
%     result.interaction.rf=randomforest(traindataInteraction,testdataInteraction);
% end;
% if strcmp(machine,'glm')
%     result.glm=glm(traindata,testdata);
    result.simple.glm=glm(traindataSimple,testdataSimple);
    result.interaction.glm=glm(traindataInteraction,testdataInteraction);
% end;
% if strcmp(machine,'decision tree')
%     result.tree=tree(traindata,testdata);
    result.simple.tree=tree(traindataSimple,testdataSimple);
    result.interaction.tree=tree(traindataInteraction,testdataInteraction);
% end;
% if strcmp(machine,'svm')
%     result.svm=svm(traindata,testdata);
    result.simple.svm=svm(traindataSimple,testdataSimple);
    result.interaction.svm=svm(traindataInteraction,testdataInteraction);
% end;



%unsupervised learning
% if strcmp(machine,'kmeans')
%     result.kmeans=k_means(traindata);
% end;




end

