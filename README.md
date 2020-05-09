# CompileBatch
This is a simple batch file for compiling .cpp files with MinGW GNU

This batch file looks in the <b>sourcedir</b> directory and seeks all files with the .cpp extension, places all of the names into a list and then compiles all of the files with MinGW's g++ command.
 
There are two variables you need to fill out by yourself which are: 

<b>sourcedir</b> --> This is the directory which holds the .cpp files you want to compile

<b>-o ...</b> --> This is file name and or path you want to ouput the compiled .exe file to.

The reason you need to do this manually and not just fill those parameters in the Command Prompt is that if you set it up once you don't need to type it every single time you need to compile a project.

Both parameters are ... in the file itself.
