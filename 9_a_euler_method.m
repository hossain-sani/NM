x = 1,y=2;
fprintf('Enter step size h= ');
h=input('');
for i=1:1:10
    r=y+h*(3*x*x+1);
    if(x==2)
        break;
    end
   x=x+h;
 if(x==2)
     break;
    end
y=r;
end
fprintf('Result = %f \n',r);

