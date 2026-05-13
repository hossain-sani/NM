 a =input(' ');
b = input(' '); 
d = 0;

for i = 1 : 1 :100 
     fa = (a*a)-3;
    
    fb = (b*b) - 3;
    
    c = ((a*fb)-(b*fa))/(fb-fa);
    
    fc = (c*c) - 3;
   
    error = abs((c-d)/c)*100;
    
    if (error <=1)  
        break;
    end
    
     if((fa*fc)<0)
            b=c;
      else 
            a = c;
     end
     d = c;
     
end

root = c;
step = i;
root 
step