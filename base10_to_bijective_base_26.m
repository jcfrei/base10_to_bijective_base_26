function [out] = base10_to_bijective_base_26(m)
    % converts a base-10 number to a bijective base-26 number [A ... Z AA AB ...]
    % bijective base-26 is used for example in Excel columns
    %
    % input: int
    % output: char
    %
    % jonathan frei, 2015
    out = char(base10tobasek(m,26)+64);
end
