A = [-1 1;1 -2];
B = [1;1];
C = eye(2);
D = [0;0];

% the poles for the errors
p = [-1 -2];

H = place(A',C',p);
H = H';