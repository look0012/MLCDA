pre_result=M_recover(:);
ori_result=CD(:);
[num,m]=size(ori_result);
pre_result_Test=pre_result;

[ACC,SN,SP,PPV,NPV,F1,MCC] = roc1(pre_result_Test,ori_result );
aa = [ACC,SN,SP,PPV,NPV,F1,MCC];

[auc1,x,y] = plot_roc2(pre_result_Test,ori_result);
plot(x,y,'g','LineWidth',2);
hold on 

text(0.3,0.05,num2str(auc1,'Average AUC =%.4f'),'Fontsize',14)
xlabel('1-Specificity');
ylabel('Sensitivity');

set(get(gca,'XLabel'),'FontSize',15.4);
set(get(gca,'YLabel'),'FontSize',15.4);


