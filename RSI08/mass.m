function xd = mass(t,x)
A = [ 0 1 0 0 ; -0.5 -2 1 0 ; 0 0 0 1 ; 2/3 0 -5/3 0];
B = [ 0 0 ; 1 0 ; 0 0 ; 0 2/3];
C = [ 1 0 0 0 ; 0 0 1 0];
%%Controllability of output
COY = C * ctrb(A,B);
%%Decoupling matrix
Bstar = [C(1,:)*A*B;C(2,:)*A*B];
Astar = [C(1,:)*A*A;C(2,:)*A*A];
%I-O decoupling
alpha = -inv(Bstar)*Astar;
beta = inv(Bstar);
%verification
Ad = A + B*alpha;
Bd = B*beta;
%pole placement
p = [-1,-2,-1,-2];
K = place(Ad,Bd,p);
w = [1;2];
xd = (Ad - Bd*K)*x + Bd*w;
end

