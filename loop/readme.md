# Test 1:

Create sum variable in memory - loop ++ to sum

### measures only the loop portion

=========================================

## Go

    go run loop.go

RESULT: 3.06354ms

## C:

### seem like loop unrolling does not work so we cannot use -o3 -o2 -o1 optimizations

    gcc -o -fno-unroll-loops loop.c -o loop
    ./loop

RESULT: 20ms

### (with loop unrolling optimizations the result will be less than a millisecond)

## node:

    node loop.js

RESULT: 10.215ms

## java:

    javac loop.java
    java loop

RESULT: 1 ms

### (probably the jit make a loop unrolling optimization)

# Test 2:

Create an array in memory - loop and set all array elements to 42.

### measures only the loop portion

## Go

    go run loop2.go

RESULT: 39.193223ms

## c:

    (checked the binary with gcc -o loop2 -g -ggdb loop2.c see: loop2.c.asm)
    gcc -o3 loop2.c -o loop2
    ./loop2

RESULTS: 37 ms

## java:

    (javap -c -p loop2.class)
    javac loop2.java
    java loop2

RESULTS: 7 ms
(if JIT is disabled using java -Djava.compiler=NONE or java -Xint the result is: 88 ms)
##node:

    node loop2.js

RESULTS: 9.708 ms
