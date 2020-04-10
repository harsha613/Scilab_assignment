n=3
disp("Enter elements for matrix A")
for i=1:n
    for j=1:n
        A(i,j)=input("Enter element ")
    end
end

disp(A,'The given Matrix is')
u0=[1 1 1]';
disp(u0,'The initial vector is ')
v=A*u0;
p=max(u0);
disp(p,'1st apprx to eigen value is');
while abs(max(v)-p)>0.002
    disp(v,"current eigen vector is")
    p=max(v);
    disp(p,"current eigen value is")
    u0=v/max(v);
    v=A*u0;
end
format('v',4);
disp(max(v),'The largest Eigen Value is :')
format('v',5);
disp(u0,'The corresponding Eigen Vector is :')
