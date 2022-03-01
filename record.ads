----------------------------------------------------------------------------------------------------
-- Author: 
--      Eddy Dushime
-- Purpose: 
--      This package contains the record definition of each image to be processed
----------------------------------------------------------------------------------------------------

package imageRecord is
    type matrix is array(1..500,1..500) of integer;
 
    type image is 
        record
            pixel : matrix; 
            width : integer;
            height : integer;
        end record;
end imageRecord;
