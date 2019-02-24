var http = require('http');
var url = require('url');
const cluster = require('cluster')
const numCPUs = require('os').cpus().length


if (cluster.isMaster) {
    // Fork workers.
    for (let i = 0; i < numCPUs * 2; i++) {
        cluster.fork();
        console.log("created worker " + i);
    }

    cluster.on('exit', (worker, code, signal) =>
        console.log('worker ' + worker.pid + ' died'));
} else {
    http.createServer(function (req, res) {
        var queryData = url.parse(req.url, true).query;
        res.writeHead(200, {
            'Content-Type': 'text/plain'
        });
        let response = '{message: Hello, World!!!!!!!!!!!!}'
        res.write(response);
        res.end();
    }).listen(8080);
}