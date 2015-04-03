function arracy = glm( train,test )

%%generlized linear model
    glm=fitglm(train(:,2:end-1),train(:,end),'linear','Distribution','binomial','link','logit');
    pred_glm=predict(glm,test(:,2:end-1));
    predcut=pred_glm>=0.5;
    error_glm=mean(abs(test(:,end)-predcut));    

%%count test information   
drink_count=sum(test(:,end));
benchmark=drink_count/size(test,1);
    
%%output
arracy.glminfo=glm;
arracy.error=error_glm;
arracy.result=predcut;
arracy.benchmark=benchmark;
arracy.good_or_not=error_glm<benchmark;
end

