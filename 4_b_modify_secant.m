xi = 1;
del = 0.01;
d = 0;
for i=1:1:100
    dxi = xi*del;
    xidxi = xi+dxi;
    fxi = exp(-xi)-xi;
    fxidxi = exp(-xidxi)-xidxi;
    m = dxi*fxi;
    n = fxidxi-fxi;
    xii = xi-(m/n);
    error = abs((xii-d)/xii)*100;
    if(error<=1)
        break;
    end
    d = xii;
    xi = xii;
end
step = i
root = xii