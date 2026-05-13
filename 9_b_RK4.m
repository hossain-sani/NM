clc;
clear;

x = 1; 
y = 2;

fprintf('Enter step size h= ');
h = input('');

for i = 1:1:10
    
    k1 = h*(3*x*x + 1);
    k2 = h*(3*(x + h/2)*(x + h/2) + 1);
    k3 = h*(3*(x + h/2)*(x + h/2) + 1);
    k4 = h*(3*(x + h)*(x + h) + 1);
    
    r = y + (k1 + 2*k2 + 2*k3 + k4)/6;
    
    if(x == 2)
        break;
    end
    
    x = x + h;
    
    if(x == 2)
        break;
    end
    
    y = r;
end

fprintf('Result = %f \n', r);