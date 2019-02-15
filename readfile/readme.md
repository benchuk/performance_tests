# READ FILE TEST 1

** This test load data from disk to mem with out doing nothing to the string while measuring **

## C:

gcc -o3 readfile2.c -o readfile2
./readfile2

RESULT: 25ms
(file len: 37747239)

## node:

node readfile.js

RESULT: 41ms
(file len: 37747239)

## java: only reads the data to buffer if we init with string it is going to be slow - the test only checks loading data from disk to mem

javac readfile.java
java readfile

RESULT: 45ms
(file len: 37747239)

# IGNORE FOR NOW: Test 2:

## c:

gcc -o -fno-unroll-loops readfile.c -o readfile
./readfile
