------------------------------------------------------------------------
-- Author:
--      Eddy Dushime
--
-- Implementation:
--      This package applies the image processing algorithms to each pixel 
--      of the pgm image stored as a record, a 2-D array of integers.
-------------------------------------------------------------------------

package body imageprocess is
    --inverse the pixels as abs(255−Ixy)--
    function imageINV(data: in image) return image is 
        newImage : image;
    begin
        newImage.magicId := data.magicId; 
        newImage.width  := data.width;
        newImage.height := data.height;
        newImage.maxVal := data.maxVal;
        
        return newImage;
    end imageINV;

    --apply logarithm on the pixels as log(Ixy) * 255/log(255)--
    function imageLOG(data: in image) return image is
        newImage : image;
    begin
        newImage.magicId := data.magicId; 
        newImage.width  := data.width;
        newImage.height := data.height;
        newImage.maxVal := data.maxVal;
        
        return newImage;
    end  imageLOG;   


    --stretch the pixels as 255*[(Ixy - Imin)/(Imax-Imin)]--
    function imageSTRETCH(data: in image; iMax: in integer; iMin: in integer) return image is
        newImage : image;
        max: integer;
        min: integer;
    begin
        max := iMax;
        min := iMin;
        newImage.magicId := data.magicId; 
        newImage.width  := data.width;
        newImage.height := data.height;
        newImage.maxVal := data.maxVal;

        return newImage;
    end  imageSTRETCH;


    --calculate its histogram--
    function makeHIST(data: in image) return image is 
        newImage : image; 
    begin
        newImage.width := 1;
    return newImage;
    end makeHIST;


    --perform its histogram equalization--
    function histEQUAL(data: in image) return image  is 
        newImage : image;
    begin
        newImage.width := 1;
    return newImage;
    end histEQUAL;
end imageprocess;
