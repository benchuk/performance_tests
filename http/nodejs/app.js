/**
 * Module dependencies.
 */

const cluster = require('cluster')
const numCPUs = require('os').cpus().length
const express = require('express');

//const bodyParser = require('body-parser');

if (cluster.isMaster) {
    // Fork workers.
    for (let i = 0; i < numCPUs * 2; i++) {
        cluster.fork();
        console.log("created worker " + i);
    }

    cluster.on('exit', (worker, code, signal) =>
        console.log('worker ' + worker.pid + ' died'));
} else {
    const app = module.exports = express();

    // Configuration
    // app.use(bodyParser.urlencoded({
    //     extended: true
    // }));

    // // Set headers for all routes
    // app.use((req, res, next) => {
    //     res.setHeader("Server", "Express");
    //     return next();
    // });

    //app.set('view engine', 'jade');
    //app.set('views', __dirname + '/views');

    // Routes
    let x = {
        message: 'Hello, World!'
    };
    app.get('/json', (req, res) => res.send(x));

    // function h(req, res) {
    //     res.send({
    //         message: 'Hello, World!'
    //     })
    // }
    // app.get('/json', h);

    app.get('/plaintext', (req, res) =>
        res.header('Content-Type', 'text/plain').send('{message: Hello, World!!!!!!!!!!!!}'));

    app.listen(8080);
}