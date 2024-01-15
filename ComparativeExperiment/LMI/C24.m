clc;
clear;
tic;
pvar x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 x19 x20 x21 x22 x23;
vars = [x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, x11, x12, x13, x14, x15, x16, x17, x18, x19, x20, x21, x22, x23];
f = [x10/50 + x11/100 + x12/100 + x13/100 + x2/100 + x3/50 + x4/50 + x5/50 + x6/50 + x7/50 + x8/50 + x9/50 + 1; x3; 5*x2^3/3 - 11*x2; x5; -x2 + 5*x4^3/3 - 10*x4; x7; -x2 + 5*x6^3/3 - 10*x6; x9; -x2 + 5*x8^3/3 - 10*x8; x11; 5*x10^3/3 - 10*x10 - x2; x13; 5*x12^3/3 - 10*x12 - x2; x15; 5*x14^3/3 - 10*x14 - x2; x17; 5*x16^3/3 - 10*x16 - x2; x19; 5*x18^3/3 - 10*x18 - x2; x21; -x2 + 5*x20^3/3 - 10*x20; x23; -x2 + 5*x22^3/3 - 10*x22];

prog = sosprogram(vars);
[prog, B] = sospolyvar(prog, monomials([x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13; x14; x15; x16; x17; x18; x19; x20; x21; x22; x23],[0,1,2]), 'wscoeff1');

init = [-(x1 - (-0.30000001192092896))*(x1-(0.0));-(x2 - (-0.20000000298023224))*(x2-(0.30000001192092896));-(x3 - (-0.20000000298023224))*(x3-(0.30000001192092896));-(x4 - (-0.20000000298023224))*(x4-(0.30000001192092896));-(x5 - (-0.20000000298023224))*(x5-(0.30000001192092896));-(x6 - (-0.20000000298023224))*(x6-(0.30000001192092896));-(x7 - (-0.20000000298023224))*(x7-(0.30000001192092896));-(x8 - (-0.20000000298023224))*(x8-(0.30000001192092896));-(x9 - (-0.20000000298023224))*(x9-(0.30000001192092896));-(x10 - (-0.20000000298023224))*(x10-(0.30000001192092896));-(x11 - (-0.20000000298023224))*(x11-(0.30000001192092896));-(x12 - (-0.20000000298023224))*(x12-(0.30000001192092896));-(x13 - (-0.20000000298023224))*(x13-(0.30000001192092896));-(x14 - (-0.20000000298023224))*(x14-(0.30000001192092896));-(x15 - (-0.20000000298023224))*(x15-(0.30000001192092896));-(x16 - (-0.20000000298023224))*(x16-(0.30000001192092896));-(x17 - (-0.20000000298023224))*(x17-(0.30000001192092896));-(x18 - (-0.20000000298023224))*(x18-(0.30000001192092896));-(x19 - (-0.20000000298023224))*(x19-(0.30000001192092896));-(x20 - (-0.20000000298023224))*(x20-(0.30000001192092896));-(x21 - (-0.20000000298023224))*(x21-(0.30000001192092896));-(x22 - (-0.20000000298023224))*(x22-(0.30000001192092896));-(x23 - (-0.20000000298023224))*(x23-(0.30000001192092896))];
unsafe = [-(x1 - (-0.20000000298023224))*(x1-(-0.15000000596046448));-(x2 - (-0.30000001192092896))*(x2-(-0.25));-(x3 - (-0.30000001192092896))*(x3-(-0.25));-(x4 - (-0.30000001192092896))*(x4-(-0.25));-(x5 - (-0.30000001192092896))*(x5-(-0.25));-(x6 - (-0.30000001192092896))*(x6-(-0.25));-(x7 - (-0.30000001192092896))*(x7-(-0.25));-(x8 - (-0.30000001192092896))*(x8-(-0.25));-(x9 - (-0.30000001192092896))*(x9-(-0.25));-(x10 - (-0.30000001192092896))*(x10-(-0.25));-(x11 - (-0.30000001192092896))*(x11-(-0.25));-(x12 - (-0.30000001192092896))*(x12-(-0.25));-(x13 - (-0.30000001192092896))*(x13-(-0.25));-(x14 - (-0.30000001192092896))*(x14-(-0.25));-(x15 - (-0.30000001192092896))*(x15-(-0.25));-(x16 - (-0.30000001192092896))*(x16-(-0.25));-(x17 - (-0.30000001192092896))*(x17-(-0.25));-(x18 - (-0.30000001192092896))*(x18-(-0.25));-(x19 - (-0.30000001192092896))*(x19-(-0.25));-(x20 - (-0.30000001192092896))*(x20-(-0.25));-(x21 - (-0.30000001192092896))*(x21-(-0.25));-(x22 - (-0.30000001192092896))*(x22-(-0.25));-(x23 - (-0.30000001192092896))*(x23-(-0.25))];
inv = [-(x1 - (-0.30000001192092896))*(x1-(0.30000001192092896));-(x2 - (-0.30000001192092896))*(x2-(0.30000001192092896));-(x3 - (-0.30000001192092896))*(x3-(0.30000001192092896));-(x4 - (-0.30000001192092896))*(x4-(0.30000001192092896));-(x5 - (-0.30000001192092896))*(x5-(0.30000001192092896));-(x6 - (-0.30000001192092896))*(x6-(0.30000001192092896));-(x7 - (-0.30000001192092896))*(x7-(0.30000001192092896));-(x8 - (-0.30000001192092896))*(x8-(0.30000001192092896));-(x9 - (-0.30000001192092896))*(x9-(0.30000001192092896));-(x10 - (-0.30000001192092896))*(x10-(0.30000001192092896));-(x11 - (-0.30000001192092896))*(x11-(0.30000001192092896));-(x12 - (-0.30000001192092896))*(x12-(0.30000001192092896));-(x13 - (-0.30000001192092896))*(x13-(0.30000001192092896));-(x14 - (-0.30000001192092896))*(x14-(0.30000001192092896));-(x15 - (-0.30000001192092896))*(x15-(0.30000001192092896));-(x16 - (-0.30000001192092896))*(x16-(0.30000001192092896));-(x17 - (-0.30000001192092896))*(x17-(0.30000001192092896));-(x18 - (-0.30000001192092896))*(x18-(0.30000001192092896));-(x19 - (-0.30000001192092896))*(x19-(0.30000001192092896));-(x20 - (-0.30000001192092896))*(x20-(0.30000001192092896));-(x21 - (-0.30000001192092896))*(x21-(0.30000001192092896));-(x22 - (-0.30000001192092896))*(x22-(0.30000001192092896));-(x23 - (-0.30000001192092896))*(x23-(0.30000001192092896))];

[prog, P1] = sospolyvar(prog, monomials([x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13; x14; x15; x16; x17; x18; x19; x20; x21; x22; x23],[0,1,2]), 'wscoeff2');
prog = sosineq(prog,P1);
[prog, P2] = sospolyvar(prog, monomials([x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13; x14; x15; x16; x17; x18; x19; x20; x21; x22; x23],[0,1,2]), 'wscoeff3');
prog = sosineq(prog,P2);
[prog, P3] = sospolyvar(prog, monomials([x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13; x14; x15; x16; x17; x18; x19; x20; x21; x22; x23],[0,1,2]), 'wscoeff4');
prog = sosineq(prog,P3);
[prog, P4] = sospolyvar(prog, monomials([x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13; x14; x15; x16; x17; x18; x19; x20; x21; x22; x23],[0,1,2]), 'wscoeff5');
prog = sosineq(prog,P4);
[prog, P5] = sospolyvar(prog, monomials([x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13; x14; x15; x16; x17; x18; x19; x20; x21; x22; x23],[0,1,2]), 'wscoeff6');
prog = sosineq(prog,P5);
[prog, P6] = sospolyvar(prog, monomials([x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13; x14; x15; x16; x17; x18; x19; x20; x21; x22; x23],[0,1,2]), 'wscoeff7');
prog = sosineq(prog,P6);
[prog, P7] = sospolyvar(prog, monomials([x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13; x14; x15; x16; x17; x18; x19; x20; x21; x22; x23],[0,1,2]), 'wscoeff8');
prog = sosineq(prog,P7);
[prog, P8] = sospolyvar(prog, monomials([x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13; x14; x15; x16; x17; x18; x19; x20; x21; x22; x23],[0,1,2]), 'wscoeff9');
prog = sosineq(prog,P8);
[prog, P9] = sospolyvar(prog, monomials([x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13; x14; x15; x16; x17; x18; x19; x20; x21; x22; x23],[0,1,2]), 'wscoeff10');
prog = sosineq(prog,P9);
[prog, P10] = sospolyvar(prog, monomials([x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13; x14; x15; x16; x17; x18; x19; x20; x21; x22; x23],[0,1,2]), 'wscoeff11');
prog = sosineq(prog,P10);
[prog, P11] = sospolyvar(prog, monomials([x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13; x14; x15; x16; x17; x18; x19; x20; x21; x22; x23],[0,1,2]), 'wscoeff12');
prog = sosineq(prog,P11);
[prog, P12] = sospolyvar(prog, monomials([x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13; x14; x15; x16; x17; x18; x19; x20; x21; x22; x23],[0,1,2]), 'wscoeff13');
prog = sosineq(prog,P12);
[prog, P13] = sospolyvar(prog, monomials([x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13; x14; x15; x16; x17; x18; x19; x20; x21; x22; x23],[0,1,2]), 'wscoeff14');
prog = sosineq(prog,P13);
[prog, P14] = sospolyvar(prog, monomials([x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13; x14; x15; x16; x17; x18; x19; x20; x21; x22; x23],[0,1,2]), 'wscoeff15');
prog = sosineq(prog,P14);
[prog, P15] = sospolyvar(prog, monomials([x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13; x14; x15; x16; x17; x18; x19; x20; x21; x22; x23],[0,1,2]), 'wscoeff16');
prog = sosineq(prog,P15);
[prog, P16] = sospolyvar(prog, monomials([x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13; x14; x15; x16; x17; x18; x19; x20; x21; x22; x23],[0,1,2]), 'wscoeff17');
prog = sosineq(prog,P16);
[prog, P17] = sospolyvar(prog, monomials([x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13; x14; x15; x16; x17; x18; x19; x20; x21; x22; x23],[0,1,2]), 'wscoeff18');
prog = sosineq(prog,P17);
[prog, P18] = sospolyvar(prog, monomials([x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13; x14; x15; x16; x17; x18; x19; x20; x21; x22; x23],[0,1,2]), 'wscoeff19');
prog = sosineq(prog,P18);
[prog, P19] = sospolyvar(prog, monomials([x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13; x14; x15; x16; x17; x18; x19; x20; x21; x22; x23],[0,1,2]), 'wscoeff20');
prog = sosineq(prog,P19);
[prog, P20] = sospolyvar(prog, monomials([x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13; x14; x15; x16; x17; x18; x19; x20; x21; x22; x23],[0,1,2]), 'wscoeff21');
prog = sosineq(prog,P20);
[prog, P21] = sospolyvar(prog, monomials([x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13; x14; x15; x16; x17; x18; x19; x20; x21; x22; x23],[0,1,2]), 'wscoeff22');
prog = sosineq(prog,P21);
[prog, P22] = sospolyvar(prog, monomials([x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13; x14; x15; x16; x17; x18; x19; x20; x21; x22; x23],[0,1,2]), 'wscoeff23');
prog = sosineq(prog,P22);
[prog, P23] = sospolyvar(prog, monomials([x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13; x14; x15; x16; x17; x18; x19; x20; x21; x22; x23],[0,1,2]), 'wscoeff24');
prog = sosineq(prog,P23);
[prog, Q1] = sospolyvar(prog, monomials([x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13; x14; x15; x16; x17; x18; x19; x20; x21; x22; x23],[0,1,2]), 'wscoeff25');
prog = sosineq(prog,Q1);
[prog, Q2] = sospolyvar(prog, monomials([x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13; x14; x15; x16; x17; x18; x19; x20; x21; x22; x23],[0,1,2]), 'wscoeff26');
prog = sosineq(prog,Q2);
[prog, Q3] = sospolyvar(prog, monomials([x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13; x14; x15; x16; x17; x18; x19; x20; x21; x22; x23],[0,1,2]), 'wscoeff27');
prog = sosineq(prog,Q3);
[prog, Q4] = sospolyvar(prog, monomials([x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13; x14; x15; x16; x17; x18; x19; x20; x21; x22; x23],[0,1,2]), 'wscoeff28');
prog = sosineq(prog,Q4);
[prog, Q5] = sospolyvar(prog, monomials([x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13; x14; x15; x16; x17; x18; x19; x20; x21; x22; x23],[0,1,2]), 'wscoeff29');
prog = sosineq(prog,Q5);
[prog, Q6] = sospolyvar(prog, monomials([x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13; x14; x15; x16; x17; x18; x19; x20; x21; x22; x23],[0,1,2]), 'wscoeff30');
prog = sosineq(prog,Q6);
[prog, Q7] = sospolyvar(prog, monomials([x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13; x14; x15; x16; x17; x18; x19; x20; x21; x22; x23],[0,1,2]), 'wscoeff31');
prog = sosineq(prog,Q7);
[prog, Q8] = sospolyvar(prog, monomials([x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13; x14; x15; x16; x17; x18; x19; x20; x21; x22; x23],[0,1,2]), 'wscoeff32');
prog = sosineq(prog,Q8);
[prog, Q9] = sospolyvar(prog, monomials([x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13; x14; x15; x16; x17; x18; x19; x20; x21; x22; x23],[0,1,2]), 'wscoeff33');
prog = sosineq(prog,Q9);
[prog, Q10] = sospolyvar(prog, monomials([x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13; x14; x15; x16; x17; x18; x19; x20; x21; x22; x23],[0,1,2]), 'wscoeff34');
prog = sosineq(prog,Q10);
[prog, Q11] = sospolyvar(prog, monomials([x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13; x14; x15; x16; x17; x18; x19; x20; x21; x22; x23],[0,1,2]), 'wscoeff35');
prog = sosineq(prog,Q11);
[prog, Q12] = sospolyvar(prog, monomials([x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13; x14; x15; x16; x17; x18; x19; x20; x21; x22; x23],[0,1,2]), 'wscoeff36');
prog = sosineq(prog,Q12);
[prog, Q13] = sospolyvar(prog, monomials([x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13; x14; x15; x16; x17; x18; x19; x20; x21; x22; x23],[0,1,2]), 'wscoeff37');
prog = sosineq(prog,Q13);
[prog, Q14] = sospolyvar(prog, monomials([x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13; x14; x15; x16; x17; x18; x19; x20; x21; x22; x23],[0,1,2]), 'wscoeff38');
prog = sosineq(prog,Q14);
[prog, Q15] = sospolyvar(prog, monomials([x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13; x14; x15; x16; x17; x18; x19; x20; x21; x22; x23],[0,1,2]), 'wscoeff39');
prog = sosineq(prog,Q15);
[prog, Q16] = sospolyvar(prog, monomials([x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13; x14; x15; x16; x17; x18; x19; x20; x21; x22; x23],[0,1,2]), 'wscoeff40');
prog = sosineq(prog,Q16);
[prog, Q17] = sospolyvar(prog, monomials([x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13; x14; x15; x16; x17; x18; x19; x20; x21; x22; x23],[0,1,2]), 'wscoeff41');
prog = sosineq(prog,Q17);
[prog, Q18] = sospolyvar(prog, monomials([x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13; x14; x15; x16; x17; x18; x19; x20; x21; x22; x23],[0,1,2]), 'wscoeff42');
prog = sosineq(prog,Q18);
[prog, Q19] = sospolyvar(prog, monomials([x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13; x14; x15; x16; x17; x18; x19; x20; x21; x22; x23],[0,1,2]), 'wscoeff43');
prog = sosineq(prog,Q19);
[prog, Q20] = sospolyvar(prog, monomials([x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13; x14; x15; x16; x17; x18; x19; x20; x21; x22; x23],[0,1,2]), 'wscoeff44');
prog = sosineq(prog,Q20);
[prog, Q21] = sospolyvar(prog, monomials([x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13; x14; x15; x16; x17; x18; x19; x20; x21; x22; x23],[0,1,2]), 'wscoeff45');
prog = sosineq(prog,Q21);
[prog, Q22] = sospolyvar(prog, monomials([x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13; x14; x15; x16; x17; x18; x19; x20; x21; x22; x23],[0,1,2]), 'wscoeff46');
prog = sosineq(prog,Q22);
[prog, Q23] = sospolyvar(prog, monomials([x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13; x14; x15; x16; x17; x18; x19; x20; x21; x22; x23],[0,1,2]), 'wscoeff47');
prog = sosineq(prog,Q23);
[prog, S1] = sospolyvar(prog, monomials([x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13; x14; x15; x16; x17; x18; x19; x20; x21; x22; x23],[0,1,2]), 'wscoeff48');
prog = sosineq(prog,S1);
[prog, S2] = sospolyvar(prog, monomials([x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13; x14; x15; x16; x17; x18; x19; x20; x21; x22; x23],[0,1,2]), 'wscoeff49');
prog = sosineq(prog,S2);
[prog, S3] = sospolyvar(prog, monomials([x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13; x14; x15; x16; x17; x18; x19; x20; x21; x22; x23],[0,1,2]), 'wscoeff50');
prog = sosineq(prog,S3);
[prog, S4] = sospolyvar(prog, monomials([x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13; x14; x15; x16; x17; x18; x19; x20; x21; x22; x23],[0,1,2]), 'wscoeff51');
prog = sosineq(prog,S4);
[prog, S5] = sospolyvar(prog, monomials([x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13; x14; x15; x16; x17; x18; x19; x20; x21; x22; x23],[0,1,2]), 'wscoeff52');
prog = sosineq(prog,S5);
[prog, S6] = sospolyvar(prog, monomials([x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13; x14; x15; x16; x17; x18; x19; x20; x21; x22; x23],[0,1,2]), 'wscoeff53');
prog = sosineq(prog,S6);
[prog, S7] = sospolyvar(prog, monomials([x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13; x14; x15; x16; x17; x18; x19; x20; x21; x22; x23],[0,1,2]), 'wscoeff54');
prog = sosineq(prog,S7);
[prog, S8] = sospolyvar(prog, monomials([x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13; x14; x15; x16; x17; x18; x19; x20; x21; x22; x23],[0,1,2]), 'wscoeff55');
prog = sosineq(prog,S8);
[prog, S9] = sospolyvar(prog, monomials([x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13; x14; x15; x16; x17; x18; x19; x20; x21; x22; x23],[0,1,2]), 'wscoeff56');
prog = sosineq(prog,S9);
[prog, S10] = sospolyvar(prog, monomials([x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13; x14; x15; x16; x17; x18; x19; x20; x21; x22; x23],[0,1,2]), 'wscoeff57');
prog = sosineq(prog,S10);
[prog, S11] = sospolyvar(prog, monomials([x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13; x14; x15; x16; x17; x18; x19; x20; x21; x22; x23],[0,1,2]), 'wscoeff58');
prog = sosineq(prog,S11);
[prog, S12] = sospolyvar(prog, monomials([x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13; x14; x15; x16; x17; x18; x19; x20; x21; x22; x23],[0,1,2]), 'wscoeff59');
prog = sosineq(prog,S12);
[prog, S13] = sospolyvar(prog, monomials([x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13; x14; x15; x16; x17; x18; x19; x20; x21; x22; x23],[0,1,2]), 'wscoeff60');
prog = sosineq(prog,S13);
[prog, S14] = sospolyvar(prog, monomials([x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13; x14; x15; x16; x17; x18; x19; x20; x21; x22; x23],[0,1,2]), 'wscoeff61');
prog = sosineq(prog,S14);
[prog, S15] = sospolyvar(prog, monomials([x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13; x14; x15; x16; x17; x18; x19; x20; x21; x22; x23],[0,1,2]), 'wscoeff62');
prog = sosineq(prog,S15);
[prog, S16] = sospolyvar(prog, monomials([x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13; x14; x15; x16; x17; x18; x19; x20; x21; x22; x23],[0,1,2]), 'wscoeff63');
prog = sosineq(prog,S16);
[prog, S17] = sospolyvar(prog, monomials([x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13; x14; x15; x16; x17; x18; x19; x20; x21; x22; x23],[0,1,2]), 'wscoeff64');
prog = sosineq(prog,S17);
[prog, S18] = sospolyvar(prog, monomials([x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13; x14; x15; x16; x17; x18; x19; x20; x21; x22; x23],[0,1,2]), 'wscoeff65');
prog = sosineq(prog,S18);
[prog, S19] = sospolyvar(prog, monomials([x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13; x14; x15; x16; x17; x18; x19; x20; x21; x22; x23],[0,1,2]), 'wscoeff66');
prog = sosineq(prog,S19);
[prog, S20] = sospolyvar(prog, monomials([x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13; x14; x15; x16; x17; x18; x19; x20; x21; x22; x23],[0,1,2]), 'wscoeff67');
prog = sosineq(prog,S20);
[prog, S21] = sospolyvar(prog, monomials([x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13; x14; x15; x16; x17; x18; x19; x20; x21; x22; x23],[0,1,2]), 'wscoeff68');
prog = sosineq(prog,S21);
[prog, S22] = sospolyvar(prog, monomials([x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13; x14; x15; x16; x17; x18; x19; x20; x21; x22; x23],[0,1,2]), 'wscoeff69');
prog = sosineq(prog,S22);
[prog, S23] = sospolyvar(prog, monomials([x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13; x14; x15; x16; x17; x18; x19; x20; x21; x22; x23],[0,1,2]), 'wscoeff70');
prog = sosineq(prog,S23);
B_I = B - init(1) * P1 - init(2) * P2 - init(3) * P3 - init(4) * P4 - init(5) * P5 - init(6) * P6 - init(7) * P7 - init(8) * P8 - init(9) * P9 - init(10) * P10 - init(11) * P11 - init(12) * P12 - init(13) * P13 - init(14) * P14 - init(15) * P15 - init(16) * P16 - init(17) * P17 - init(18) * P18 - init(19) * P19 - init(20) * P20 - init(21) * P21 - init(22) * P22 - init(23) * P23;
prog = sosineq(prog,B_I);
B_U = - B - unsafe(1) * Q1 - unsafe(2) * Q2 - unsafe(3) * Q3 - unsafe(4) * Q4 - unsafe(5) * Q5 - unsafe(6) * Q6 - unsafe(7) * Q7 - unsafe(8) * Q8 - unsafe(9) * Q9 - unsafe(10) * Q10 - unsafe(11) * Q11 - unsafe(12) * Q12 - unsafe(13) * Q13 - unsafe(14) * Q14 - unsafe(15) * Q15 - unsafe(16) * Q16 - unsafe(17) * Q17 - unsafe(18) * Q18 - unsafe(19) * Q19 - unsafe(20) * Q20 - unsafe(21) * Q21 - unsafe(22) * Q22 - unsafe(23) * Q23;
prog = sosineq(prog,B_U);
DB = diff(B, x1) * f(1) + diff(B, x2) * f(2) + diff(B, x3) * f(3) + diff(B, x4) * f(4) + diff(B, x5) * f(5) + diff(B, x6) * f(6) + diff(B, x7) * f(7) + diff(B, x8) * f(8) + diff(B, x9) * f(9) + diff(B, x10) * f(10) + diff(B, x11) * f(11) + diff(B, x12) * f(12) + diff(B, x13) * f(13) + diff(B, x14) * f(14) + diff(B, x15) * f(15) + diff(B, x16) * f(16) + diff(B, x17) * f(17) + diff(B, x18) * f(18) + diff(B, x19) * f(19) + diff(B, x20) * f(20) + diff(B, x21) * f(21) + diff(B, x22) * f(22) + diff(B, x23) * f(23);
r=monomials([x1; x2; x3; x4; x5; x6; x7; x8; x9; x10; x11; x12; x13; x14; x15; x16; x17; x18; x19; x20; x21; x22; x23],[0,1,2]);
R = 0;
for i = 1:size(r)
    R = R + randn(1) * r(i);
end
DB = DB - R * B - inv(1) * S1 - inv(2) * S2 - inv(3) * S3 - inv(4) * S4 - inv(5) * S5 - inv(6) * S6 - inv(7) * S7 - inv(8) * S8 - inv(9) * S9 - inv(10) * S10 - inv(11) * S11 - inv(12) * S12 - inv(13) * S13 - inv(14) * S14 - inv(15) * S15 - inv(16) * S16 - inv(17) * S17 - inv(18) * S18 - inv(19) * S19 - inv(20) * S20 - inv(21) * S21 - inv(22) * S22 - inv(23) * S23;
prog = sosineq(prog, DB);
solver_opt.solver = 'mosek';
prog = sossolve(prog, solver_opt);
SOLB = sosgetsol(prog,B)
toc;
