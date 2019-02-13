A = [0.4126 0 -0.0196;0.0333 0.5207 -0.0413;-0.0101 0 0.2571];
B= [-1.7734 0.0696 0.0734;0.0928 0.4658 0.1051;-0.0424 -0.093 2.0752];
C = eye(3);
Te = 0.1;
Anew = [A zeros(3,3);-Te*C eye(3)];
Bnew = [B;zeros(3,3)];
Cnew = [C zeros(3,3)];
% choose 3 poles near A poles and 3 near I poles
p = [ 0.2 0.2 0.2 0.6 0.6 0.6];
K = place(Anew,Bnew,p);
K1 = K(1:3,1:3);
K2 = K(1:3,4:6);