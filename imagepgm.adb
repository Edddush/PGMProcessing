------------------------------------------------------------------------
-- Author:
--      Eddy Dushime
--
-- Implementation:
--     This package takes a filename to read from or write to. It allows 
--     for the exchange of data available from the user and data returned 
--     after image processing.
------------------------------------------------------------------------

--read data from an ASCII file and store into a record--
procedure readPGM(data: out image, file: in unbounded_string) is
    open(inputfp, in_file, file);
   
    -- might not need it!--
    if is_open(inputfp) then
        close(inputfp);
    end if
end readPGM


--write image data from a record into an ASCII file--    
procedure writePGM(data: in image, file: in unbounded_string) is
    create(outputfp, out_file, file);

    -- might not need it! -- 
    if is_open(outputfp) then
        close(outputfp);
    end if
end writePGM

