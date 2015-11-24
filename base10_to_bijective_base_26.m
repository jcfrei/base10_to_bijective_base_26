function [out] = base10_to_bijective_base_26(m)
    % converts a base-10 number to a bijective base-26 number [A ... Z AA AB ...]
    % bijective base-26 is used for example in Excel columns
    %
    % input: int
    % output: char
    %
    % jonathan frei, 2015
    out = char(fliplr(base10tobasek(m,26)+64));
end
function [a] = base10tobasek(m,k)
    if(~isnumeric(m) || ~isnumeric(k) || ...
       round(m)~=m || round(k) ~= k || ...
       m<0 || k<0)
       error('m must be positive integer');
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
