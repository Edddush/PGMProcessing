------------------------------------------------------------------------
-- Author:
--      Eddy Dushime
--
-- Implementation:
--     This program implements the user's interaction with the imagepgm 
--     and imageprocess packages such that they can specify the filenames
--     and transformations they would like to apply to an image.
------------------------------------------------------------------------
with imagepgm; use imagepgm;
with imageRecord; use imageRecord;
with ada.Text_IO; use Ada.Text_IO;
with ada.directories; use ada.directories;
with ada.IO_Exceptions; use Ada.IO_Exceptions;
with ada.Integer_Text_IO; use Ada.Integer_Text_IO;
with ada.strings.unbounded; use ada.strings.unbounded;
with ada.strings.unbounded.Text_IO; use ada.strings.unbounded.Text_IO;

procedure main is
-- start of read and write subprograms --
    --check if the file exists--
    function validateFile(file : in unbounded_string ) return boolean is
    begin 
        return exists(to_string(file));
    end validateFile;

    --get the name of the file to read from--
    function getInputFile return unbounded_string is
        fileName : unbounded_string;
        valid: boolean;
    begin
        valid := false;
        while not valid loop
            put_line("Please enter the name of the file you would like to read from:");
            get_line(fileName);
            valid := validateFile(fileName);
        end loop;

        return fileName;
    end getInputFile;

    --get the name of the file to output to. If it exists confirm overwrite first-- 
    function getOutputFile return unbounded_string is
        fileName  : unbounded_string;
        invalid   : boolean;
        overwrite : character;
        valid     : boolean; 
    begin
        
        put_line("Please enter the name of the file you would like to write to:");
        get_line(fileName);
        valid := validateFile(fileName);

        if valid then
            put_line("The file already exists, would you like to overwrite it?(Y/N)");
            get(overwrite);
        else 
            return fileName;
        end if;

        if overwrite = 'Y' or overwrite = 'y' then 
            return fileName;
        elsif overwrite = 'N' or overwrite = 'n' then
            while valid loop
                put_line("Please provide a new fileName:");
                get_line(fileName);
                valid := validateFile(fileName);
            end loop;
        end if; 

        return fileName;
    end getOutputFile;

    --check if there are inconsistencies with the file--

--end of read and write--
    iMax       : integer;
    iMin       : integer;
    recData    : image;
    choice     : integer;
    validData  : boolean;
    fileName   : unbounded_string;
begin
    choice   := 0; 
    --fileName := getInputFile;

        while choice /= 7 loop 
            put_line("----------Image Processing----------");
            new_line;
            put_line("1. Read in PGM image from file");
            put_line("2. Apply image inversion");
            put_line("3. Apply LOG function");
            put_line("4. Apply contrast stretching");
            put_line("5. Apply histogram equalization");
            put_line("6. Write PGM image to file");
            put_line("7. Quit");
            new_line;
            put_line("Enter your choice:");
            get(choice);
            skip_line;
            
            case choice is
                when 1 =>
                    fileName := getInputFile;
                    readPGM (recData, fileName);
                when 2 =>
                    put_line("choice 2");
                when 3 =>
                    put_line("choice 3");
                when 4 =>
                    put_line("choice 4");
                when 5 =>
                    put_line("choice 5");
                when 6 =>
                    fileName := getOutputFile;
                    writePGM(recData, fileName);
                when 7 =>
                    put_line("choice 7");
                when others =>
                    put_line("Please choose an option from the menu");
            end case;
    end loop;
return;
end main;