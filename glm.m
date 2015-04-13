function arracy = glm( train,test )
%%generlized linear model
    glm=fitglm(train(:,2:end-1),train(:,end),'linear','Distribution','binomial','link','logit');
    pred_glm=predict(glm,test(:,2:end-1));
    predcut=pred_glm>=0.5;
    confusion=confusionmat(test(:,end),double(predcut));
    accuracy_drink=confusion(2,2)/sum(confusion(2,:));
    accuracy_all=(confusion(1,1)+confusion(2,2))/length(predcut);

%%count test information   
drink_count=sum(test(:,end));
benchmark=drink_count/size(test,1);
    
%%output
arracy.glminfo=glm;
arracy.accuarcy_drink=accuracy_drink;
arracy.accuarcy_all=accuracy_all;
arracy.result=predcut;
arracy.confusion=confusion;
% I don't know
arracy.benchmark=1-benchmark;
arracy.good_or_not=arracy.accuarcy_all>benchmark;
end


