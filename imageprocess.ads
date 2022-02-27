----------------------------------------------------------------------------------------------------
-- Author: 
--      Eddy Dushime
-- Purpose: 
--      This package contains algorithms that are used to apply different
--      changes to the enhance a Portable Gray Map.
-- Effects:
--      - Expectations:
--          1. call imageINV on a record to inverse the pixels as abs(255−Ixy) 
--          2. call imageLOG on a record to apply logarithm on the pixels as log(Ixy) * 255/log(255)
--          3. call imageSTRETCH on a record to stretch the pixels as 255*[(Ixy - Imin)/(Imax-Imin)]
--          4. call makeHIST on a record to calculate its histogram
--          5. call histEQUAL on a record to perform its histogram equalization 
----------------------------------------------------------------------------------------------------

package imageprocess is
    function imageINV();
    function imageLOG();
    function imageSTRETCH();
    function makeHIST() return integer;
    function histEQUAL() return integer;
end imageprocess