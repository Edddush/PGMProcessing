----------------------------------------------------------------------------------------------------
-- Author: 
--      Eddy Dushime
-- Purpose: 
--      This package contains subprograms to read and write data between a pgm file and the program
-- Effects:
--      - Expectations:
--         1. call readPGM to read data from a file and store into a record
--         2. call readPGM to write data from a record into a file
----------------------------------------------------------------------------------------------------
package imagepgm is
    function readPGM;
    function writePGM;
end imagepgm;