%% calculating the entropy for a gray-scale image
% Build a probability model 
% (i.e., an alphabet with associated probabilities)
% corresponding to this input image.
% Specifically, this alphabet consists of symbols {0,1,2,?,255}
% for each pixel, adjust the probability 
% associated with that pixel's intensity value accordingly.
% in other words find the histogram of the image
% normalize the probability model correctly p(i) =  [0,1]

%% the main fun
% inputs : I - the gray scale image
% output: entropy - the entropy of the imafe
function entropy = my_intropy (I)
    if (nargin == 0)
        I = imread('Cameraman256.bmp');
    end
    % alphabet
    % get all symbols
    s = [];
    for i = 1 : length(I)
        for j = 1 : length(I)
            s(end + 1) = I(i, j);
        end 
    end
    % get the normalized version of s : ns
    ns = zeros (1, length(s));
    for i = 1 : length(s)
        ns(i) = s(i) ./ sum(s);
    end
    % entropy = sum over all ns: - p(i) * log (p(i)) 
    entropy = 0;
    for i = 1 : length(ns)
        if (ns(i) > 0)
            entropy = (entropy - ns(i) * log2(ns(i)));
        end
    end
   
end


