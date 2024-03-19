%Function calculating determinant of given matrix (assuming that matrix is square)
%Example usage:
%A = randn(7)
%detA=determinant(A)

function det = determinant(X) 
    for i = 1 : size(X)
        for j = i+1 : size(X)
           X(j,:)=X(j,:)-X(i,:)*X(j,i)/X(i,i);
        end
    end
    det=1;
    for n = 1:size(X)
        det=det*X(n,n);
    end
end
