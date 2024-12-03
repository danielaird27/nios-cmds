# NIOS Commands
## Installation
1. Take this folder and place it under C:\\.
2. Add this folder to your PATH environment variable ("C:\\nios-cmds").

## Using the commands
1. Open a terminal in the desired project's parent folder. For example, the FW_IESP_eDPTX_05_AXXX folder.
2. Type "z223.bat" at this location to enter the NIOS command environment. I typically just type "z1<TAB>" and that gets the job done.
3. Type "h" into the terminal to view information about all the possible commands.

## Useful information
- When initializing a project for the first time, open the project's parent folder in a terminal and run "u" to update the makefiles. This also generates the HsMain_bsp from the SOPC.
- You must also run "u" when SOPC changes have been made.
- The "release" command will turn off debug mode, increment the NiosVersion, compile a HEX, and copy the HEX to the build directory. You can reset the NiosVersion to 0 by running "release reset".

# VSCode Settings
## Installation
1. Copy the .vscode folder into the HsMain folder of your choosing.
2. Modify the "quartus" variable in .vscode/settings.json to use the correct version of Quartus for your specific project.
3. Modify the "quartus" variable in c_cpp_properties.json in the same way.

## Debugging With VSCode
You'll want to compile your ELF, then upload the ELF to the hardware, then start a debug server, then initiate debugging with VSCode.
Assuming your Makefiles are all up to date, simply type the following commands while in the project's parent folder and the command environment:
1. c (for cleaning and compiling the ELF, alternatively you could use b to just build).
2. e (for uploading the ELF).
3. d (for starting the debug server).
4. Click <F5> in VSCode to start the debugger.

Usually, I will type all the terminal commands at once as follows:
c && e && d
