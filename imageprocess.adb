------------------------------------------------------------------------
-- Author:
--      Eddy Dushime
--
-- Implementation:
--      This package applies the image processing algorithms to each pixel 
--      of the pgm image stored as a record, a 2-D array of integers.
-------------------------------------------------------------------------
--with ada.numerics.elementary_functions; use ada.numerics.elementary_functions;
with Ada.Numerics.Elementary_Functions; use Ada.Numerics.Elementary_Functions;

package body imageprocess is
    --inverse the pixels as abs(255−Ixy)--
    function imageINV(data: in baseImage) return baseImage is 
        invImage : baseImage;
    begin
        invImage.magicId := data.magicId; 
        invImage.width   := data.width;
        invImage.height  := data.height;
        invImage.maxVal  := data.maxVal;
        
        for i in 1..data.height loop
            for j in 1..data.width loop
                invImage.pixel(i,j):= abs(255 - data.pixel(i,j));
            end loop;
        end loop;

        return invImage;
    end imageINV;

    --apply logarithm on the pixels as log(Ixy) * 255/log(255)--
    function imageLOG(data: in baseImage) return baseImage is
        logImage : baseImage;
        pixel : float;
    begin
        logImage.magicId := data.magicId; 
        logImage.width   := data.width;
        logImage.height  := data.height;
        logImage.maxVal  := data.maxVal;
        
        for i in 1..data.height loop
            for j in 1..data.width loop
                pixel := log(float(data.pixel(i,j)) + 1.0) * (255.0/log(255.0));
                logImage.pixel(i,j):= integer(pixel-1.0);
            end loop;
        end loop;

        return logImage;
    end  imageLOG;   


    --stretch the pixels as 255*[(Ixy - Imin)/(Imax-Imin)]--
    function imageSTRETCH(data: in baseImage; iMax: in integer; iMin: in integer) return baseImage is
        stretchImage : baseImage;
        pixel : float;
        max: integer;
        min: integer;

    begin
        max := iMax;
        min := iMin;
        stretchImage.magicId := data.magicId; 
        stretchImage.width  := data.width;
        stretchImage.height := data.height;
        stretchImage.maxVal := data.maxVal;

        for i in 1..data.height loop
            for j in 1..data.height loop 
                pixel := abs(255.0 * (float(data.pixel(i,j) - min)/float(max-min)));
                stretchImage.pixel(i,j):= integer(pixel);

                --the pixel should be less or equal to the maxval-- 
                if stretchImage.pixel(i, j) > data.maxVal then
                    stretchImage.pixel(i,j) := data.maxVal;
                end if;
            end loop;
        end loop;

        return stretchImage;
    end  imageSTRETCH;


    --calculate its histogram--
    function makeHIST(data: in baseImage) return baseImage is 
        histImage : baseImage; 
    begin
        histImage.width := 1;
    return histImage;
    end makeHIST;


    --perform its histogram equalization--
    function histEQUAL(data: in baseImage) return baseImage  is 
        equalImage : baseImage;
    begin
        equalImage.width := 1;
    return equalImage;
    end histEQUAL;
end imageprocess;
