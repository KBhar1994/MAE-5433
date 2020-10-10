
function Xhat = hat(X,sbm)

if size(X,1) ~= 1 && size(X,2) ~= 1
    disp('Error: X must be a vector');
else

    if nargin == 2
        syms Xhat;
        Xhat(1,1) = 0;
        Xhat(2,2) = 0;
        Xhat(3,3) = 0;
    else
        Xhat = zeros(3,3);
    end
    
    Xhat(1,2) = -X(3);
    Xhat(2,1) =  X(3);
    
    Xhat(1,3) =  X(2);
    Xhat(3,1) = -X(2);
    
    Xhat(2,3) = -X(1);
    Xhat(3,2) =  X(1);
        
end

    