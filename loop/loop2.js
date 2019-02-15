var i;
var arr = new Array(10000000);
console.time("test");
for (i = 0; i < 10000000; i++) {
    arr[i] = 42;
}
console.timeEnd("test");
console.log("loops: " + arr.length)
console.log("first element in array (should be 42): " + arr[0])
console.log("done");