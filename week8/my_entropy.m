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
    s = [1:255];
    
    % imshow(I);
end