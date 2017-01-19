%Eren Ulas 150114822
%Berk Karabacak 150114823

%Implements the procedure in the graph by using sparse matrix
%representation, and finds the importance matrix. After that, computes the
%final vector, and normalizes, and displays it. Also, finds the eigenvector
%of the matrix by using the built-in function in Matlab, and normalizes,
%and displays it

%Connectivity matrix of the graph
i=[1 3 3 1 2];
j=[1 1 2 3 3];
%Sparse matrix representation of the connectivity matrix
n=3;
A=sparse(j,i,1,n,n);
%finds the summ of the columns of A
sumOfColumns=sum(A);
%Finds the importance matrix by using the same connectivity matrix
%Values of each entry is found by dividing 1 to the 
%corresponding entry in the sumOfColumns matrix
A=sparse(j,i,1./sumOfColumns(i),n,n);
%Displays the importance matrix
disp(full(A));
%Defines the initial
prev=[1;1;1];
% Value for tolerance
TOL=1/1000;
%x=A*x formula finds the first vector
next=A*prev;
%computes x=A*x until the difference between the values is not bigger than
%tolerance
while norm(next-prev)>TOL
    %Assigns next to prev to calculate the further vectors
    prev=next;
    %Computes the next vector
    next=A*prev;
end
%Normalizes the final vector and displays it
   next=next/sum(next);
   disp('Final vector at the limit of the iteration: ');
   disp(next);
   %Finds the eigenvectors of the matrix,and displays it
   [V,e]=eigs(A);
   disp('Eigenvector of the matrix before normalization: ');
   disp(V(:,1));
   %Finds its normalized value for the first eigenvector, and displays it
   V(:,1) = V(:,1)/sum(V(:,1));
   disp('Eigenvector of the matrix after normalization: ');
   disp(V(:,1));
 

