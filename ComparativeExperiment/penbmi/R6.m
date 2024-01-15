clc;
clear;
tic;
sdpvar x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13;

init = [-(x1 - (-0.30000001192092896))*(x1-(0.0));-(x2 - (-0.20000000298023224))*(x2-(0.30000001192092896));-(x3 - (-0.20000000298023224))*(x3-(0.30000001192092896));-(x4 - (-0.20000000298023224))*(x4-(0.30000001192092896));-(x5 - (-0.20000000298023224))*(x5-(0.30000001192092896));-(x6 - (-0.20000000298023224))*(x6-(0.30000001192092896));-(x7 - (-0.20000000298023224))*(x7-(0.30000001192092896));-(x8 - (-0.20000000298023224))*(x8-(0.30000001192092896));-(x9 - (-0.20000000298023224))*(x9-(0.30000001192092896));-(x10 - (-0.20000000298023224))*(x10-(0.30000001192092896));-(x11 - (-0.20000000298023224))*(x11-(0.30000001192092896));-(x12 - (-0.20000000298023224))*(x12-(0.30000001192092896));-(x13 - (-0.20000000298023224))*(x13-(0.30000001192092896))];
unsafe = [-(x1 - (-0.20000000298023224))*(x1-(-0.15000000596046448));-(x2 - (-0.30000001192092896))*(x2-(-0.25));-(x3 - (-0.30000001192092896))*(x3-(-0.25));-(x4 - (-0.30000001192092896))*(x4-(-0.25));-(x5 - (-0.30000001192092896))*(x5-(-0.25));-(x6 - (-0.30000001192092896))*(x6-(-0.25));-(x7 - (-0.30000001192092896))*(x7-(-0.25));-(x8 - (-0.30000001192092896))*(x8-(-0.25));-(x9 - (-0.30000001192092896))*(x9-(-0.25));-(x10 - (-0.30000001192092896))*(x10-(-0.25));-(x11 - (-0.30000001192092896))*(x11-(-0.25));-(x12 - (-0.30000001192092896))*(x12-(-0.25));-(x13 - (-0.30000001192092896))*(x13-(-0.25))];
inv = [-(x1 - (-0.30000001192092896))*(x1-(0.30000001192092896));-(x2 - (-0.30000001192092896))*(x2-(0.30000001192092896));-(x3 - (-0.30000001192092896))*(x3-(0.30000001192092896));-(x4 - (-0.30000001192092896))*(x4-(0.30000001192092896));-(x5 - (-0.30000001192092896))*(x5-(0.30000001192092896));-(x6 - (-0.30000001192092896))*(x6-(0.30000001192092896));-(x7 - (-0.30000001192092896))*(x7-(0.30000001192092896));-(x8 - (-0.30000001192092896))*(x8-(0.30000001192092896));-(x9 - (-0.30000001192092896))*(x9-(0.30000001192092896));-(x10 - (-0.30000001192092896))*(x10-(0.30000001192092896));-(x11 - (-0.30000001192092896))*(x11-(0.30000001192092896));-(x12 - (-0.30000001192092896))*(x12-(0.30000001192092896));-(x13 - (-0.30000001192092896))*(x13-(0.30000001192092896))];

f = [x2/100 + x3/50 + x4/50 + x5/50 + x6/50 + x7/50 + x8/100 + 1; x3; 5*x2^3/3 - 11*x2; x5; -x2 + 5*x4^3/3 - 10*x4; x7; -x2 + 5*x6^3/3 - 10*x6; x9; -x2 + 5*x8^3/3 - 10*x8; x11; 5*x10^3/3 - 10*x10 - x2; x13; 5*x12^3/3 - 10*x12 - x2];

[B, b, v] = polynomial([x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13], 2);
par = [b];

[P1, p1, pv1] = polynomial([x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13], 2);
[P2, p2, pv2] = polynomial([x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13], 2);
[P3, p3, pv3] = polynomial([x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13], 2);
[P4, p4, pv4] = polynomial([x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13], 2);
[P5, p5, pv5] = polynomial([x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13], 2);
[P6, p6, pv6] = polynomial([x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13], 2);
[P7, p7, pv7] = polynomial([x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13], 2);
[P8, p8, pv8] = polynomial([x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13], 2);
[P9, p9, pv9] = polynomial([x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13], 2);
[P10, p10, pv10] = polynomial([x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13], 2);
[P11, p11, pv11] = polynomial([x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13], 2);
[P12, p12, pv12] = polynomial([x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13], 2);
[P13, p13, pv13] = polynomial([x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13], 2);
B_I = B - P1 * init(1) - P2 * init(2) - P3 * init(3) - P4 * init(4) - P5 * init(5) - P6 * init(6) - P7 * init(7) - P8 * init(8) - P9 * init(9) - P10 * init(10) - P11 * init(11) - P12 * init(12) - P13 * init(13);
con = [sos(B_I), sos(P1), sos(P2), sos(P3), sos(P4), sos(P5), sos(P6), sos(P7), sos(P8), sos(P9), sos(P10), sos(P11), sos(P12), sos(P13)];
par = [par; p1; p2; p3; p4; p5; p6; p7; p8; p9; p10; p11; p12; p13];

[Q1, q1, qv1] = polynomial([x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13], 2);
[Q2, q2, qv2] = polynomial([x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13], 2);
[Q3, q3, qv3] = polynomial([x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13], 2);
[Q4, q4, qv4] = polynomial([x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13], 2);
[Q5, q5, qv5] = polynomial([x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13], 2);
[Q6, q6, qv6] = polynomial([x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13], 2);
[Q7, q7, qv7] = polynomial([x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13], 2);
[Q8, q8, qv8] = polynomial([x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13], 2);
[Q9, q9, qv9] = polynomial([x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13], 2);
[Q10, q10, qv10] = polynomial([x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13], 2);
[Q11, q11, qv11] = polynomial([x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13], 2);
[Q12, q12, qv12] = polynomial([x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13], 2);
[Q13, q13, qv13] = polynomial([x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13], 2);
B_U = -B - Q1 * unsafe(1) - Q2 * unsafe(2) - Q3 * unsafe(3) - Q4 * unsafe(4) - Q5 * unsafe(5) - Q6 * unsafe(6) - Q7 * unsafe(7) - Q8 * unsafe(8) - Q9 * unsafe(9) - Q10 * unsafe(10) - Q11 * unsafe(11) - Q12 * unsafe(12) - Q13 * unsafe(13);
con = [con, sos(B_U), sos(Q1), sos(Q2), sos(Q3), sos(Q4), sos(Q5), sos(Q6), sos(Q7), sos(Q8), sos(Q9), sos(Q10), sos(Q11), sos(Q12), sos(Q13)];
par = [par; q1; q2; q3; q4; q5; q6; q7; q8; q9; q10; q11; q12; q13];

DB = jacobian(B, x1) * f(1) + jacobian(B, x2) * f(2) + jacobian(B, x3) * f(3) + jacobian(B, x4) * f(4) + jacobian(B, x5) * f(5) + jacobian(B, x6) * f(6) + jacobian(B, x7) * f(7) + jacobian(B, x8) * f(8) + jacobian(B, x9) * f(9) + jacobian(B, x10) * f(10) + jacobian(B, x11) * f(11) + jacobian(B, x12) * f(12) + jacobian(B, x13) * f(13);
[S1, s1, sv1] = polynomial([x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13], 2);
[S2, s2, sv2] = polynomial([x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13], 2);
[S3, s3, sv3] = polynomial([x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13], 2);
[S4, s4, sv4] = polynomial([x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13], 2);
[S5, s5, sv5] = polynomial([x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13], 2);
[S6, s6, sv6] = polynomial([x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13], 2);
[S7, s7, sv7] = polynomial([x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13], 2);
[S8, s8, sv8] = polynomial([x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13], 2);
[S9, s9, sv9] = polynomial([x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13], 2);
[S10, s10, sv10] = polynomial([x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13], 2);
[S11, s11, sv11] = polynomial([x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13], 2);
[S12, s12, sv12] = polynomial([x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13], 2);
[S13, s13, sv13] = polynomial([x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13], 2);
[R, r, rv] = polynomial([x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13], 2);
DB = DB - R * B - S1 * inv(1) - S2 * inv(2) - S3 * inv(3) - S4 * inv(4) - S5 * inv(5) - S6 * inv(6) - S7 * inv(7) - S8 * inv(8) - S9 * inv(9) - S10 * inv(10) - S11 * inv(11) - S12 * inv(12) - S13 * inv(13);
con = [con, sos(DB), sos(S1), sos(S2), sos(S3), sos(S4), sos(S5), sos(S6), sos(S7), sos(S8), sos(S9), sos(S10), sos(S11), sos(S12), sos(S13)];
par = [par; r; s1; s2; s3; s4; s5; s6; s7; s8; s9; s10; s11; s12; s13];

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