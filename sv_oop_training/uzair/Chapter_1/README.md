## Steps for running a single file on xcelium
1.) Write your code on any text editor.
 
2.) Save your code in .sv extension.

3.) In terminal, switch to that folder.
 
4.) Now run "xrun (file_name).sv", the file will simulate and the status would be shown in the terminal.
 
5.) To enter the gui, run "xrun (file_name).sv -gui".

## Steps for running multiple files on xcelium
1.) For multiple files you have to create a file with .f extension.
 
2.) In that file you have to enter all the file name with their extension. **Note: If all the files are not in the same folder you have to define the path in the file.**

3.) When you have entered all the files. at the end you have to add -access and +rwc and the save the file.
 
4.) Now run "xrun -f (file_name).f", the file will simulate and the status would be shown in the terminal.
 
5.) To enter the gui, run "xrun -f (file_name).f -gui".