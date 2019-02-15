var i;
var sum = 0;
console.time("test");
for (i = 0; i < 10000000; i++) {
    sum++;
}
console.timeEnd("test");
console.log(sum)
console.log("loops 10000000");
console.log("done");