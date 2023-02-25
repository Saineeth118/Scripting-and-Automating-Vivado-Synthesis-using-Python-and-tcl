# Scripting-and-Automating-Vivado-Synthesis-using-Python-and-Tcl

The latest chip design technology is highly time-sensitive and often involves highly complex designs that grow exponentially. Moreover, chip verification remains the most time-consuming part, consuming approximately 70% of the chip design life cycle. To enhance productivity, automating repetitive tasks is crucial. This is where possessing scripting skills becomes highly valuable for both design and verification engineers.

I have automated Synthesis in Vivado using Python and Tcl. All you have to do is run the python code. The python code will take all the verilog files present in Modules folder(note: all top modules should be renamed as top_'modulename'), create a vivado project named 'Automation' and add these verilog files to this project. Then it synthesises top modules one by one(note: the code extracts the required tcl run file tcl_run.tcl from Script folder) and generates power, timing and utilization reports for every top module and then stores it in 'Impl' folder. Then the code later extracts required values and stores it in  Result.csv file.

