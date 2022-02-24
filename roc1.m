function [ACC,SN,SP,PPV,NPV,F1,MCC] = roc1( predict_label,test_data_label )
l=length(predict_label);
TruePositive = 0;
TrueNegative = 0;
FalsePositive = 0;
FalseNegative = 0;
for k=1:l
    if test_data_label(k)==1 & predict_label(k)==1 
        TruePositive = TruePositive +1;
    end
    if test_data_label(k)==-1 & predict_label(k)==-1 
        TrueNegative = TrueNegative +1;
    end 
    if test_data_label(k)==-1 & predict_label(k)==1  
        FalsePositive = FalsePositive +1;
    end

    if test_data_label(k)==1 & predict_label(k)==-1  
        FalseNegative = FalseNegative +1;
    end
end
TruePositive;
TrueNegative;
FalsePositive;
FalseNegative; 
if (TruePositive+TrueNegative+FalsePositive+FalseNegative) == l
ACC = (TruePositive+TrueNegative)./(TruePositive+TrueNegative+FalsePositive+FalseNegative);
SN = TruePositive./(TruePositive+FalseNegative);
SP =  TrueNegative./(TrueNegative+FalsePositive);
PPV = TruePositive./(TruePositive+FalsePositive);
NPV = TrueNegative./(TrueNegative+FalseNegative);
F1 = 2*((SN*PPV)./(SN+PPV));
MCC= (TruePositive*TrueNegative-FalsePositive*FalseNegative)./sqrt(  (TruePositive+FalseNegative)...
    *(TrueNegative+FalsePositive)*(TruePositive+FalsePositive)*(TrueNegative+FalseNegative));

end
end


