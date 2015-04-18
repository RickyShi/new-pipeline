function result = period_test( time, test,prediction )
%prediction=[0;0;0;0;0;1;1;1;0;0;1;1;1;1;1;1;0;0;0;0];
windows=121;
output=tsmovavg(prediction,'s',windows,1);
row=size(prediction,1);
output(end+floor(windows/2))=0;
for i=1:row
    output(i)=output(i+floor(windows/2));
end;
output=output>0.7;
for i=1:row;
    if output(i)==1
        b=zeros(floor(windows/2),1);
        output(i+1:i+floor(windows/2))=b;
    end;
end;

output(end-59:end,:)=[];

        

result.pair=[time,test,output];
       

end

