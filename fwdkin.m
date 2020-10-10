
% Function to compute the forward kinematics of a robot.
% Argument list:
% q : input joint vector (1 x n)
% type : type of joint (0:revolute; 1:prismatic)
% H : axes of rotation of all joints at xero configuration (3 x n)
% P : link vectors in the zero configuration (3 x n)
% n : # of joints

function [R,p] = fwdkin(q,type,H,P,n)

syms p [3 1]; 
syms R [3 3];
p(:,1) = [0 0 0]'; % initiualize p
R(:,1) = [1 0 0]; 
R(:,2) = [0 1 0]; 
R(:,3) = [0 0 1]; % initiualize R
    
for i = 1:n % loop over all joints
    if type(i) == 0 % if ith joint is revolute
        p = p + R*P(:,i);
        R = R*expm(hat(H(:,i),1)*q(i));
    elseif type(i) == 1 % if ith joint is prismatic
        p = p + R*(P(:,i)+q(i)*H(:,i));
        R = R*eye(3);
    else
        disp('Wrong choice of type');
    end
end

end