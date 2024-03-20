%Algorithm solving system of linear equations using Gaussian elimination
%Example usage:
%G = randi([-30,30], 6,6);
%d= randi([-78, 78], 6, 1);
%Y=solve([G d])

function x=solve(A)
    A=gauss(A);
    s=round(size(A)); 
    x(s(1))=A(s(1),s(1)+1)/A(s(1),s(1));
    for i = s(1)-1:-1:1 
        sum=A(i,s(2));
        for j = i+1:s(2)-1
            sum=sum-A(i,j)*x(j);
        end
        x(i)=sum/A(i,i);
    end
    x=x';
end

function diag=gauss(X) 
    for i = 1 : size(X)-1
        for j = i+1 : size(X)
           X(j,:)=X(j,:)-X(i,:)*X(j,i)/X(i,i);
        end
    end
    diag=X;
end
