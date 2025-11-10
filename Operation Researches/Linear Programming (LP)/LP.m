clear


f=[3 -10 5];
A=[5 1 4; -5 3 -3];
b=[100; 50];
Aequ = [1 2 1; -5 7 3];
bequ = [10; -5];
lb = [-1000; -500; -1500];
ub = [1000; 500; 1500];

opts = optimoptions('linprog','Display','none');
[x, fval, exitflag, output, lambda] = linprog(f, A, b, Aeq, beq, lb, ub, opts);

disp(x)
disp(fval)


% LP OR problem by Matlab