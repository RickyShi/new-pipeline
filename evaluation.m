function [rtn,output]= evaluation(test,interval)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    n=size(test,1);
    NumberOfPredictionAsOne=0;
    for i=1:n
        if test(i,2)== 1
            NumberOfPredictionAsOne=NumberOfPredictionAsOne+1;
        end
    end
    output=zeros(1,2);
    
%prediction starts
    flag=0;
    for i=1:n
        if test(i,1)== 1
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
                if test(j,2) == 1
                   tempDeviation=abs(j-testIndex);
                   for k=1:size(output,1)
                       if output(k,1) == j
                           flag=1;
                           if tempDeviation < output(k,2)
                               output(k,2)=tempDeviation;
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
    size(output,1)
    rtn.correctIdDrink =size(output,1)-1;
    rtn.numberOfPrediction = NumberOfPredictionAsOne;
    rtn.drinkAccrcy = rtn.correctIdDrink/NumberOfPredictionAsOne;
    if rtn.correctIdDrink<1
        rtn.deviation = -1;
    else
        rtn.deviation = mean(output(2:end,2));
    end
    
end

