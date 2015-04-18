function [rtn,output]= evaluation(test,interval)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    n=size(test,1);
    NumberOfPredictionAsOne=0;
    dCount = 0;
    testDCount = 0;
    for i=1:n
        if test(i,3)== 1
            NumberOfPredictionAsOne=NumberOfPredictionAsOne+1;
        end
    end
    output=zeros(1,2);
    
%prediction starts
    flag=0;
    for i=1:n
        if test(i,2)== 1
            testDCount = testDCount+1;
            testIndex=i;
            MinIndex=testIndex-interval;
            MaxIndex=testIndex+interval;
            if MinIndex<1
                MinIndex=1;
            end
            if MaxIndex>n
                MaxIndex=n;
            end
            for j=MinIndex:MaxIndex
                if test(j,3) == 1
                   tempDeviation=abs(j-testIndex);
                   dCount = dCount+1;
                   for k=1:size(output,1)
                       if output(k,2) == j
                           flag=1;
                           if tempDeviation < output(k,3)
                               output(k,3)=tempDeviation;
                           end
                       end
                   end
                   if ~flag
                   output=[output;j,tempDeviation];
                   flag=0;
                   end
                end
            end
                    
        end
    end   
    rtn.correctIdDrink =size(output,1)-1;
    rtn.numberOfPrediction = NumberOfPredictionAsOne;
%     rtn.drinkAccrcy = rtn.correctIdDrink/NumberOfPredictionAsOne;
    rtn.drinkTestAccrcy = dCount/testDCount;
    rtn.drinkTest = testDCount;
    rtn.drinkPredAccrcy = dCount/NumberOfPredictionAsOne;
    if rtn.correctIdDrink<1
        rtn.deviation = -1;
    else
        rtn.deviation = mean(output(2:end,2));
    end
    
end

