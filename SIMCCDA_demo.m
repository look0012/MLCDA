addpath('SIMC');

interMatrix = CD;
circSim = Feature_circ;
disSim = Feature_dis;
circSim=circ1;
disSim=dis1;

[nc, nd]=size(interMatrix);
for i=1:nc
    if length(find(interMatrix(i,:)))==0
        rowVec=circSim(i,:); 
        rowVec(i)=0;
        simNeighbors=find(rowVec>=mean(mean(circSim))); 
        if length(simNeighbors)
            new_row=zeros(1,nd);
                for l=1:length(simNeighbors)
                   new_row=new_row+interMatrix(simNeighbors(l),:);       
                end
            new_row=new_row/length(simNeighbors);      
            interMatrix(i,:)=new_row;     
        end
    end
end


Omega=find(interMatrix==1);    
M_recover=SIMC(interMatrix,Omega,circSim,disSim,0.0001);   

