# These are utility functions to manipulate, install, and run python and python modules

# view the path to you python version and modules
python -c "import sys; print(sys.path)"

# Example: installing bioinformatics modules
# First, we need both the latest version of Python (v.3.6.5) and concurrently Python 2.7x, as some packages require this older version
# We can install both versions from the website, python.org
# In this example, install Python 3x files into the dir path python/python-3.6.5
# Install Python 2.7x into dir path python/python-2.7.14
# Now add both app dir paths to your PATH environment in advanced system settings...
# Add both Libs and Scripts dir in each path to the PATH environment as well, on separate lines

# Now verify 'python' runs Python 3x and 'py' runs Python 2x when typed into cmd command line
# Troubleshoot until this works as expected

# Now verify that the pip installer is updated with the following
py -m pip install -U pip
python -m pip install -U pip

# Install dependancies for MACS2, including Numpy and MS Visual C++ v9+
py -m pip install numpy
