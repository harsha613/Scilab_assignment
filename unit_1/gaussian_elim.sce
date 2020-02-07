clc
funcprot(0)   //if variables are redefined do nothing
format('v',10)
A = input("Enter the coefficient matrix[NxN]: ")
b = input("Enter the constant matrix[Nx1]: ")

function [x] = gaussianelimination(A,b)
    
    //base condition
    [n,n1] = size(A);
    [m1,p] = size(b);
    if n~= n1 then
        error('for gaussian_elimination Matrix A must be square')
        abort;
    elseif n~= m1
        error('Incompatible Dimensions of A and b');
        abort;
    end
    
    aug = [A b];
    n = length(b)
    
    //forward elimination
    for j=1:n-1
        for i=j+1:n
            aug(i,j:n+1) = aug(i,j:n+1) - aug(i,j)/aug(j,j)*aug(j,j:n+1)
        end
    end
    
    
    //back substitution
    x = zeros(n,1)
    x(n) = aug(n,n+1)/aug(n,n);
    for i=n-1:-1:1
        x(i) = (aug(i,n+1) - aug(i,i+1:n)*x(i+1:n))/aug(i,i);
    end
    disp('The values of x , y, z are --> ')
    
endfunction
