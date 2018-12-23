function xd = NL(t,x)
xd = zeros(4,1);
xd(1) = x(1) * x(4);
xd(2) = x(3) * (1 - x(4));
v1 = -1 * x(1) - 2 * xd(1) + 1;
v2 = -1 * x(2) - 2 * xd(2) + 2;
u1 = -x(4).^2 + (1/x(1)) * v1;
u2 = (1/(x(1)*(1 - x(4))))*(-x(3)*x(4).^2 + x(3)*v1/x(1) + v2);
xd(3) = x(1) * u2;
xd(4) = u1;
end
