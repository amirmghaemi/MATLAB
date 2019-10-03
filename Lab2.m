%% Problem #1
%1)
clc
clear
A = [2, 0, 0, 0; 0, 2, 0, 0; 0, 0, 2, 0; 0, 0, 0, 2];
B = [1; 1; 1; 1];
C = [0, 0, 0, 0, 3];
D = [A, B; C]
%2)
a = randi(10, 6,6);
B1 = transpose(a)*a
b11 = B1(1:3,1:3);
b21 = B1(4:6, 1:3);
b12 = B1(1:3, 4:6);
b22 = B1(4:6, 4:6);
b = [b11, b12; b21, b22]

c = inv(b11);
e = b21*c;
f = b22 - ((b21)*c*transpose(b21));
L = [eye(3), zeros(3); e, eye(3)];
d = [b11, zeros(3); zeros(3), f];
answer = L*d*transpose(L)

max(max(abs(answer-B1)))
% answer and B1 are the same since the difference is almost 0
%% Problem 2
%1)
clc
clear
A = randi(10,7,7);
B = randi(10,7,7);
da = det(A);
db = det(B);
dab = det(A*B);

max(max(abs(dab-(da*db)))) %Yes they are the same

%2)
d_ab = det(A+B);
max(max(abs(d_ab-(da+db)))) %No, they are not the same

%3)
dta = det(inv(A))
max(max(abs(dta-(1/da)))) %Yes they are the same
%4)
dz = det([A, zeros(7); zeros(7), B])
max(max(abs(dz-(da*db)))) %Yes they are the same

%% Question 3
clc
clear
A = randi(10, 4, 5);
tA = transpose(A);
deter1 = det(tA*A)
deter2 = det(A*tA)

%It will produce very different results since the matrices are not the 
%same size when multiplied, and A*tA is not equal to tA*A

%% Problem 4 
clc
clear
% First matrix as A, second as B and third as C
A = [1 1 1;
       1 2 2;
       1 2 3];
B = [1 1 1 1;
       1 2 2 2;
       1 2 3 3;
       1 2 3 4];
C = [1 1 1 1 1;
       1 2 2 2 2;
       1 2 3 3 3;
       1 2 3 4 4;
       1 2 3 4 5];
DetA = det(A) 
DetB = det(B) 
DetC = det(C)
% The determinant would still be 1. You do 
% the following operation: Ri = Ri - 1 from i = 1 to
% i = n (where n is the last row). You then repeat this
% operation from i = 1 to i = n. After this, you will 
% end up with Identity matrix where det(I) = 1. This 
% process could be applied to the matrices above 
% which would wield the same results.
%% Problem 5
clc
clear
V = rand(10,10);
U = eye(10)+1000*triu(V,1);
detU = det(U)
detUT = det(U')
detUUT = det(U*U')
detUdetUT = det(U)*det(U')
% The round off error leads to largely different results
