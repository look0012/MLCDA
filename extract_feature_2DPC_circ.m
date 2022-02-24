Feature_circ=[];     

for i=1:708    
    P_A=circ1(i,1:708);  
    for j=1:12  
        P_A_trans(j,:)=P_A(1,(j-1)*59+1:(j-1)*59+59);
    end
    Trans_M(:,:,i)=P_A_trans;

end

DataSet=Trans_M; 
thresthold=57;   

[allFeature]=PCA_2D(DataSet,thresthold);  
  for i=1:708       
    S=allFeature(:,:,i);
    Feature_circ(i,:)=S(:);
  end


 