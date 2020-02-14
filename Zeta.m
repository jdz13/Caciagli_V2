function [zeta] = Zeta(z,l,pm)
%defining the zeta variable in equation 5 of A Caciagli et al paper. 
    if pm == 'p'
        zeta = z+l;
    elseif pm == 'm'
        zeta = z-l;
    else
        disp 'Input either ''p'' or ''m'' for plus or minus quantity'
    end

end

