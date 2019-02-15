# Test 1:

create sum variable in memory - loop ++ to sum
measures only the loop potion
=========================================

## c:

### seem like loop unrolling does not work so we cannot use -o3 -o2 -o1 optimizations

    gcc -o -fno-unroll-loops loop.c -o loop
    ./loop

RESULT: 20ms

## node:

    node loop.js

RESULT: 10.215ms

## java:

    javac loop.java
    java loop

RESULT: 1 ms

# Test 2:

Create an array in memory - loop and set all array elements to 42.
measures only the loop potion

## c:

    gcc -o3 loop2.c -o loop2
    ./loop2

RESULTS:37 ms

## java:

    javac loop2.java
    java loop2

RESULTS: 7 ms

##node:

    node loop2.js

RESULTS: 9.708 ms
