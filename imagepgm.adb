------------------------------------------------------------------------
-- Author:
--      Eddy Dushime
--
-- Implementation:
--     This package takes a filename to read from or write to. It allows 
--     for the exchange of data available from the user and data returned 
--     after image processing.
-------------------------------------------------------------------------

with ada.Text_IO; use Ada.Text_IO;
with ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with ada.strings.unbounded.Text_IO; use ada.strings.unbounded.Text_IO;

package body imagepgm is
    --read data from an ASCII file and store into a record--
    procedure readPGM(data: out image; file: in unbounded_string) is
        inputfp : file_type;
    begin
        open(inputfp, in_file, to_string(file));

        --read the file that we have opened--
        get_line(inputFp, data.magicId);
        get(inputFp, data.width);
        get(inputFp, data.height);
        get(inputFp, data.maxVal);

        for i in 1..data.height loop
            for j in 1..data.width loop
                get(inputFp, data.pixel(i,j));
            end loop;
        end loop;


--add exceptions: file, data range and magic identifier--



        -- close file pointer! --
        if is_open(inputFp) then
            close(inputFp);
        end if;
    end readPGM;


    --write image data from a record into an ASCII file--    
    procedure writePGM(data: in image; file: in unbounded_string) is
        outputFp : file_type;
    begin
    
        create(outputFp, out_file, to_string(file));
        set_output(outputFp);

        put_line(data.magicId);
        put_line(integer'image(data.width) & " " & integer'image(data.height)); 
        put_line(integer'image(data.maxVal));

        for i in 1..data.height loop 
            for j in 1..data.width loop
                put(integer'image(data.pixel(i,j)));
            end loop;
            new_line;
        end loop;
        new_line;

        --close file pointer!--
        close(outputFp);
    end writePGM;
end imagepgm;

