# Installation
1. Take this folder and place it somewhere you'd like it.
2. Add this folder to your PATH environment variable.
3. Move the .vscode folder into the HsMain folder of your choosing.

# Setup
1. Modify the "quartus" variable in .vscode/settings.json to use the correct version of Quartus for your specific project.
2. Modify the "quartus" variable in c_cpp_properties.json in the same way.

# Using The Commands
1. Open a terminal in the desired project's parent folder. For example, the FW_IESP_eDPTX_05_AXXX folder.
2. Type "z170.bat" at this location to enter the NIOS command environment. I typically just type "z1<TAB>" and that gets the job done.
3. Type "h" into the terminal to view information about all the possible commands.

# Debugging With VSCode 
You'll want to compile your ELF, then upload the ELF to the hardware, then start a debug server, then initiate debugging with VSCode.
Assuming your Makefiles are all up to date, simply type the following commands while in the project's parent folder and the command environment:
1. c (for cleaning and compiling the ELF, alternatively you could use b to just build).
2. e (for uploading the ELF).
3. d (for starting the debug server).
4. Click <F5> in VSCode to start the debugger.

Usually, I will type all the terminal commands at once as follows:
c && e && d
