A = [eye(8);-eye(8)];
b(1:8,1) = 6.5;
b(9:16,1) = 0 ; 

V = con2vert(A,b); 
d = 0.23 * sqrt(2)/2;
Kt = 3e-07;
Kf = 3.5e-05;
B = [ 1 1 1 1 1 1 1 1;
     -d -d -d -d d d d d;
     -d -d d d d d -d -d;
     -Kt/Kf Kt/Kf Kt/Kf -Kt/Kf -Kt/Kf Kt/Kf Kt/Kf -Kt/Kf];
X = (B*V')';
P = Polyhedron(X);
Q = P.slice(4,0);
T = Q.slice(1,16);
T.plot();

% part 12 edited the matrices A b and B and removed everything
% related to f1 and f2
Afault = [eye(6);-eye(6)];
bfault(1:6,1) = 6.5;
bfault(7:12,1) = 0 ; 

Vfault = con2vert(Afault,bfault); 

Bfault = [1 1 1 1 1 1;
     -d -d d d d d;
     d d d d -d -d;
     Kt/Kf -Kt/Kf -Kt/Kf Kt/Kf Kt/Kf -Kt/Kf];
Xfault = (Bfault*Vfault')';
Pfault = Polyhedron(Xfault);
Qfault= Pfault.slice(4,0);
Tfault = Qfault.slice(1,16);
figure
Tfault.plot();