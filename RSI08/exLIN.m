A = [ 0 1 0 0 ; -0.5 -2 1 0 ; 0 0 0 1 ; 2/3 0 -5/3 0];
B = [ 0 0 ; 1 0 ; 0 0 ; 0 2/3];
C = [ 1 0 0 0 ; 0 0 1 0];
SYS = LIN(A,B,C);
CON = ctrb(SYS);
r = rank(CON);
OBS = obsv(SYS);
o = rank(OBS);
