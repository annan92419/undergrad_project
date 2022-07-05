
function [T, residuals] = Metrics(yActual,yPredicted)
%Metrics - Evaluation Metrics
%this code calculates the MAE, RMSE and Rsquared
    
    residuals = yActual - yPredicted;
    sTotal = yActual - mean(yActual);
    
    MSE = mean(residuals.^2);
    RMSE = sqrt(MSE);
    MAE = mean(abs(residuals));
    Rsquared = 1 - ( (sum(residuals.^2)) / (sum(sTotal.^2)) );
    
    sz = [1,3];
    varTypes = {'double','double','double'};
    varNames = {'MAE','RMSE','Rsquared'};
    T = table('Size',sz,'VariableTypes',varTypes,'VariableNames',varNames);
    T(1,:) = {MAE,RMSE,Rsquared};

end

