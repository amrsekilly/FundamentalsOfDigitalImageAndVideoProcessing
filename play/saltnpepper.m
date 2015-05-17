image = uint8(ones(512)*128);
noisy_image = imnoise(image,'salt & pepper',0.1);
kurtosis(noisy_image( : ))