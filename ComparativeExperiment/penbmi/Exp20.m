clc;
clear;
tic;
sdpvar x1 x2;

init = [0.0125-((x1-(1.125))^2+(x2-(0.625))^2)];
unsafe = [0.0125-((x1-(0.875))^2+(x2-(0.125))^2)];
inv = [-(x1 - (-2.0))*(x1-(2.0));-(x2 - (-2.0))*(x2-(2.0))];

f = [x1; x2];

[B, b, v] = polynomial([x1, x2], 2);
par = [b];

[P1, p1, pv1] = polynomial([x1, x2], 2);
B_I = B - P1 * init(1);
con = [sos(B_I), sos(P1)];
par = [par; p1];

[Q1, q1, qv1] = polynomial([x1, x2], 2);
B_U = -B - Q1 * unsafe(1);
con = [con, sos(B_U), sos(Q1)];
par = [par; q1];

DB = jacobian(B, x1) * f(1) + jacobian(B, x2) * f(2);
[S1, s1, sv1] = polynomial([x1, x2], 2);
[S2, s2, sv2] = polynomial([x1, x2], 2);
[R, r, rv] = polynomial([x1, x2], 2);
DB = DB - R * B - S1 * inv(1) - S2 * inv(2);
con = [con, sos(DB), sos(S1), sos(S2)];
par = [par; r; s1; s2];

ops = sdpsettings('solver', 'penbmi');
sol = solvesos(con,[],ops,par);
if sol.problem == 0
    fprintf('Solved successfully!');
    sdisplay(v')
    value(b')
    sdisplay((double(b))'*v)
elseif sol.problem == 1
    disp('Solver thinks it is infeasible');
else
    disp('Something else happened');
end
toc;