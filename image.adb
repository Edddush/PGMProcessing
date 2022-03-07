------------------------------------------------------------------------
-- Author:
--      Eddy Dushime
--
-- Implementation:
--     This program implements the user's interaction with the imagepgm 
--     and imageprocess packages such that they can specify the filenames
--     and transformations they would like to apply to an image.
------------------------------------------------------------------------
--with imageRecord; use imageRecord;
--with imagepgm; use imagepgm;
--with input; use input;
--with ada.Text_IO; use Ada.Text_IO;
--with ada.directories; use ada.directories;
--with ada.Integer_Text_IO; use Ada.Integer_Text_IO;
--with ada.strings.unbounded; use ada.strings.unbounded;
--with ada.IO_Exceptions; use Ada.IO_Exceptions;
--with ada.strings.unbounded.Text_IO; use ada.strings.unbounded.Text_IO;

procedure image is
    fileName : unbounded_string;
begin
    fileName := getInputFile;
end image;