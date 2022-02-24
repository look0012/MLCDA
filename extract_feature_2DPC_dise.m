Feature_dis=[];     
for i=1:117  
    P_A2=dis1(i,1:117);  
    for j=1:9
        P_A_trans2(j,:)=P_A2(1,(j-1)*13+1:(j-1)*13+13);
    end
    Trans_M2(:,:,i)=P_A_trans2;

end

DataSet2=Trans_M2;   
thresthold=11;    

[allFeature2]=PCA_2D(DataSet2,thresthold);  
  for i=1:117      
    S2=allFeature2(:,:,i);
    Feature_dis(i,:)=S2(:);
  end


 