depth = 5000;
fileExists = false;
smallname = "susie";
emotion = 2;
position = "name";
name_xpos = "right";
name_ypos = "bottom";
numb_xpos = 80;
numb_xpos = 120;
smalltext = "Example Dialogue.";
maintext = "* Example text. \f0 /%";
haswritten = 0;
fileExists = 0;

if (file_exists("smallface.txt"))
    fileExists = 1;

if (global.darkzone == 1)
    global.typer = 4;
else
    global.typer = 1;
