
n=3
disp("Enter elements for matrix A")
for i=1:n
    for j=1:n
        A(i,j)=input("Enter element ")
    end
end

ld=poly(0,'ld')
ld=ld
charMat=A-ld*eye(3,3)
disp(charMat,'The charateristic Matrix is')
charPoly=poly(A,'ld')
disp(charPoly,'The charateristic Polynomial is')
ld=spec(A)
disp(ld,'The eigen values of A are')
function[x,ld]=eigenvectors(A)
[n,m]=size(A);
ld=spec(A)';
x=[];
for k=1:3
    B=A-ld(k)*eye(3,3);
    C=B(1:n-1,1:n-1);
    b=-B(1:n-1,n);
    y=C\b;
    y=[y;1];
    y=y/norm(y);
    x=[x y];
end
endfunction

[x,ld]=eigenvectors(A)
disp(x,'The eigen vectors of A are');
