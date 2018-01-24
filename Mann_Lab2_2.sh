#!/bin/bash
# Ch 2 Lab 2.0

echo "Welcome to my Second Script!"
echo "First, lets find out what dir we are in \n"

pwd

echo "Now, Lets create a file \n"

echo "Create a new file to play with"
touch mynewfile.txt

echo "Print out a dir list to see it was created"
ls

echo "Add some text to it"
echo "Hellow World" > mynewfile.txt

# Create a copy
cp mynewfile.txt mynewfile_copy.txt
cat mynewfile_copy.txt

# Check if there are any differences
diff mynewfile.txt mynewfile_copy.txt

mkdir NewFolder
mv mynewfile.txt NewFolder/mynewfile.txt

cd NewFolder
ls

echo "As you can see, we created a new folder and copied our file to it. now lets delete it! \n"
cd .
rmdir NewFolder
echo "File delete! \n"

echo "Lets check if our files are still where we left them \n"
echo mynew*

echo "Test out the less command by viewing the man page of bash"
man bash | less

echo "Now we will save the man page of the bash bash program, then search it with grep to find the copyright info."

man bash > manbash.txt

grep Copyright manbash.txt

echo "\n Next we will print the $PATH variable, create a new variable, and save it to a file \n"

echo "PATH"
echo $PATH
echo $PATH > pathfile.txt

STUFF=blah; export STUFF; echo $STUFF
echo $STUFF > pathfile.txt

echo "Then create another variable called STUFF2"
set STUFF2=blah2; echo $STUFF2




