#!/usr/bin/env python
import io

def updateLine(filename,changeline,newinfo):
    # with is like your try .. finally block in this case
    with open(str(filename), 'r') as file:
        # read a list of lines into data
        data = file.readlines()

    print(str(data[changeline-1]))

    # now change the 2nd line, note that you have to add a newline
    data[changeline-1] = str(newinfo) + '\n'
    print(str(data[changeline-1]))
    # and write everything back
    with open(filename, 'w') as file:
        file.writelines( data )

def startup():
    #name = input("File name:")
    #line = int(input("Which line:"))
    updated = input("Enter Spotify URI:")
    uriLine = "songURI="+str(updated)
    updateLine("Ascendancy.sh",3,uriLine)

startup()
