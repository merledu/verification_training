# To run the examples provided in ***sv_oop_training*** folder
1. Inside each example's folder, there is a file called ***run.f***.
2. This file contains the file name alongwith commandline options to simulate the examples on GUI Mode.
3. The commandline options are compatible with **Cadence Xcelium simulator**.
4. To run the examples on **Batch mode**, run the following command:
    >``xrun -f run.f`` 

5. To run the examples on **GUI mode**, uncomment the line 30 in run.f.
    >``-access +rwc -gui`` 
