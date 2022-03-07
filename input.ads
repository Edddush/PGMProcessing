package input is
    function validateFile(file : in unbounded_string ) return boolean;
    function getInputFile return unbounded_string;
    function getOutputFile return unbounded_string;
end input;