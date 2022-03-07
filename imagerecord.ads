----------------------------------------------------------------------------------------------------
-- Author: 
--      Eddy Dushime
-- Purpose: 
--      This package contains the record definition of each image to be processed
----------------------------------------------------------------------------------------------------
with ada.strings.unbounded; use Ada.Strings.Unbounded;

package imageRecord is
    type matrix is array(1..500,1..500) of integer;
 
    type baseImage is 
        record
            magicId    : unbounded_string;
            width      : integer;
            height     : integer;
            maxVal     : integer;
            pixel      : matrix; 
        end record;
end imageRecord;
