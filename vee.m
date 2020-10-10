
function Xvee = vee(X,ind)

sz = size(X);

if sz(1) ~= sz(2)
    disp('Error: Input argument must be a square matrix');
else
    
    if nargin == 2
        syms Xvee;
    else 
        Xvee = zeros(3,1);
    end
    
    Xvee(1) = X(3,2);
    Xvee(2) = X(1,3);
    Xvee(3) = X(2,1);
    
end
    