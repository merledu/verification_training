# Follow following steps to run your code
Step 01: Write your code on any text editor.
Step 02: Save your code in .sv extension.
Step 03: Save file.sv in any foldeer.
Step 04: Open terminal in that folder.
Step 05: Copy command " xrun file.sv " in terminal and run your code. Copy command " xrun file.sv -gui " if you want to observe output on waves

# Follow following steps if you have multiple files to run
Step 01: Write your codes on any text editor.
Step 02: Save your codes in .sv extension.
Step 03: Save files.sv in any foldeer.
Step 04: Open text editor and make another file that contains names of all the files in that folder with extensions followed by -access +rwc in last.
FOR EXAMPLE:
driver.svh
interface.sv
pkg.sv
dut.sv
test.sv
top.sv
-access 
+rwc
Step 05: Save this file, made in step 04, in .f extension (FOR EXAMPLE: flist.f)
Step 06: Copy command " xrun -f flist.f " in terminal and run your code. Copy command " xrun -f flist.f -gui " if you want to observe output on waves.