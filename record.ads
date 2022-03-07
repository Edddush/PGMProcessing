----------------------------------------------------------------------------------------------------
-- Author: 
--      Eddy Dushime
-- Purpose: 
--      This package contains the record definition of each image to be processed
----------------------------------------------------------------------------------------------------
with ada.Text_IO; use Ada.Text_IO;
with ada.directories; use ada.directories;
with ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with ada.strings.unbounded; use ada.strings.unbounded;
with ada.IO_Exceptions; use Ada.IO_Exceptions;
with ada.strings.unbounded.Text_IO; use ada.strings.unbounded.Text_IO;

package imageRecord is
    type matrix is array(1..500,1..500) of integer;
 
    type image is 
        record
            magicId    : unbounded_string;
            width      : integer;
            height     : integer;
            maxVal : integer;
            pixel      : matrix; 
        end record;
end imageRecord;
