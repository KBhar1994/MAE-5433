clear all; clc;

n = 3;
type = [0 0 0];
syms q [1 n] real;
syms H [3 n]  real;
syms l1 l2 l3 'real';
x = [1 0 0]';
y = [0 1 0]';
z = [0 0 1]';
H = [z y 1/sqrt(l1^2+l2^2)*(l2*x+l1*z)];
syms P [3 n]  real;
P = [[0 0 0]' [0 0 0]' [l2 0 0]'];

[R,p] = fwdkin(q,type,H,P,n);

simplify(R)
simplify(p)