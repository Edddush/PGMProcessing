------------------------------------------------------------------------
-- Author:
--      Eddy Dushime
--
-- Implementation:
--      This package applies the image processing algorithms to each pixel 
--      of the pgm image stored as a record, a 2-D array of integers.
-------------------------------------------------------------------------

--inverse the pixels as abs(255−Ixy)--
function imageINV(data: in image) 
    return image;
end imageINV

--apply logarithm on the pixels as log(Ixy) * 255/log(255)--
function imageLOG(data: in image) is
    return image;
end imageLOG   


--stretch the pixels as 255*[(Ixy - Imin)/(Imax-Imin)]--
function imageSTRETCH(data: in image, iMax: in integer, iMin: in integer) is 
    return image;
end imageSTRETCH


--calculate its histogram--
function makeHIST(data: in image) is 
    return image;
end makeHIST


--perform its histogram equalization--
function histEQUAL(data: in image)  is 
    return image;
end histEQUAL
