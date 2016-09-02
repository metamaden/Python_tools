import subprocess, os, fnmatch, glob
 
 
'''
Execute this script with script file in the directory containing files to be cleaned
'''
 
input_file_tag = input("what is the input file extension (no spaces)?")
output_file_tag = input("what is the output file tag (no spaces)?")
output_subdirectory_name = input("what do you want to call the output subdirectory?")
 
dir = output_subdirectory_name
for dir in os.getcwd():
    if os.path.isdir(output_subdirectory_name) is True:
        break
    else:
        os.mkdir(output_subdirectory_name)
        break
 
for file in glob.glob("*.csv"):
    files_to_clean = os.listdir()
    for file in files_to_clean:
        if input_file_tag in file:
            input_file_name = file
            output_file_name = input_file_name[0:-4] + output_file_tag + input_file_name[-4:]
            process_to_call = "LC_CTYPE=C tr -cd '\11\12\15\40-\176' <"+input_file_name+"> "+output_subdirectory_name+"/"+output_file_name
            subprocess.call(process_to_call, shell="TRUE")
             
         
 
 
'''
NOTE: The following warning is included in the documentation for subprocess module [https://docs.python.org/2/library/subprocess.html#frequently-used-arguments]:
 
"Executing shell commands that incorporate unsanitized input from an untrusted source makes a program vulnerable to shell injection, a serious security flaw which can result in arbitrary command execution. For this reason, the use of shell=True is strongly discouraged in cases where the command string is constructed from external input"
 
For this reason, execute this script on local files from within local directory only
'''
