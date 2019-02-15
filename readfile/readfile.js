var fs = require('fs');
String.prototype.replaceAt = function (index, replacement) {
    return this.substr(0, index) + replacement + this.substr(index + replacement.length);
}
console.time("test");
var contents = fs.readFileSync('file.txt', 'utf8');
console.timeEnd("test");
console.log('file len: ' + contents.length);
//just to make sure the are no optimizations some how
contents = contents.replaceAt(contents.length - 10, "!")
//console.log(contents);
console.log('done');