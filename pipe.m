function result =  pipe(train,test,fit,sampleobs,graph,m)
%pipeline implementation 
traindata=ricky(train);
testdata=ricky(test);
result.numberofdrink.train=sum(traindata(:,end));
result.numberofdrink.test=sum(testdata(:,end));

%cleaned method
if strcmp(fit,'linear')
   traindata=fitlinear(traindata);
   testdata=fitlinear(testdata);
   result.fitlinear.train=traindata;
   result.fitlinear.test=testdata;
else if strcmp(fit, 'spline')
        traindata=fitspline(traindata);
        testdata=fitspline(testdata);
        result.fitspline.train=traindata;
        result.fitspline.test=testdata;
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

%%%%%generating training sample

    if strcmp(sampleobs,'period');
        data=period(traindata,testdata);
        traindata=data.train;
        testdata=data.test;
        result.generatetraining.period.train=traindata;
        result.generatetraining.period.test=testdata;
        result.generatetraining.period.idx=data.idx;
    else if strcmp(sampleobs,'interval')
            traindata=interval(traindata);
            testdata=interval(testdata);
            result.generatetraining.train=traindata;
            result.generatetraining.test=testdata;
        else if strcmp(sampleobs,'intervalrow')
            data=intervalrow(traindata,testdata);
            traindata=data.train;
            testdata=data.test;
            result.generatetraining.intervalrow.train=traindata;
            result.generatetraining.intervalrow.test=testdata;
            result.generatetraining.intervalrow.idx=data.idx;
            end;
        end;
    end;
    
    data=generatevar(traindata,testdata);
    traindata=data.train;
    testdata=data.test;
    result.generatevar.confusion=data.confusion;
    result.generatevar.bestidx=data.idx;
    result.generatevar.train=traindata;
    result.generatevar.test=testdata;
%sampling
%if strcmp(samplevar,'simple');
%    traindata=simple(traindata);
%    testdata=simple(testdata);
%    result.train=traindata;
%    result.test=testdata;
%else if strcmp(samplevar,'2interaction');
%        traindata=interaction2(traindata);
%       testdata=interaction2(testdata);
%        result.train=traindata;
%        result.test=testdata;
%else if strcmp(samplevar,'3interaction')
%        traindata=interaction3(traindata);
%        testdata=interaction3(testdata);
%        result.train=traindata;
%        result.test=testdata;
%    end;
%    end;
%end;
%supervised learning
%if strcmp(machine,'randomforest')
    result.rf=randomforest(traindata,testdata);
%end;
%if strcmp(machine,'glm')
    result.glm=glm(traindata,testdata);
%end;
%if strcmp(machine,'decision tree')
    result.tree=tree(traindata,testdata);
%end;



%unsupervised learning
if strcmp(machine,'kmeans')
    result.kmeans=k_means(traindata);
end;




end

