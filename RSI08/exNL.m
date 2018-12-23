
[t,x] = ode23('mass',[0 20],[0 0 0 0.5]');
plot(t,x(:,1));
hold on
plot(t,x(:,3));