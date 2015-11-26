function [a] = base10tobasek(m,k)
    % convert positive integer m to a bijective number with base k
    %
    % author: jonathan frei
    %
    if(~isnumeric(m) || ~isnumeric(k) || ...
       round(m)~=m || round(k) ~= k || ...
       m<0 || k<=0)
       error('m must be positive integer >= 0, k must be positive integer >= 1');
    elseif(m==0)
        a='';
    else
        index=1;
        q=ceil(m/k)-1;
        a(index)=m-q*k;
        while(q>0)
           lastq=q;
           index=index+1;
           q=ceil(lastq/k)-1;
           a(index)=lastq-q*k;
        end
    end
end
