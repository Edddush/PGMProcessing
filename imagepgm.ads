----------------------------------------------------------------------------------------------------
-- Author: 
--      Eddy Dushime
-- Purpose: 
--      This package contains subprograms to read and write data between a pgm file and the program
-- Effects:
--      - Expectations:
--         1. call readPGM to read 2-D array data from a file and store into a record
--         2. call readPGM to write data from a 2-D array record into a file, create the file 
--          if it does not` exist.
----------------------------------------------------------------------------------------------------
package imagepgm is
    procedure readPGM(data: out image, file: in unbounded_string);
    procedure writePGM(data: in image, file: in unbounded_string);
end imagepgm;