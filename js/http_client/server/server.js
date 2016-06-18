var express = require('express');
var path = require('path');
var config = require('../webpack.config.js');
var webpack = require('webpack');
var webpackDevMiddleware = require('webpack-dev-middleware');
var webpackHotMiddleware = require('webpack-hot-middleware');

let serverConfig = require('../server.config.js');

var server = require('http').createServer(app);
var io = require('socket.io')(server);
server.listen(serverConfig.ioServerPort);

var app = express();

var compiler = webpack(config);

var mqtt    = require('mqtt');
var mqtt_client  = mqtt.connect('mqtt://'+serverConfig.mqttServer);

var io_clients = [];

mqtt_client.on('connect', function () {
    mqtt_client.subscribe('environment/#');
});

mqtt_client.on('message', function (topic, message) {
    // message is Buffer
    io_clients.forEach((client) => {
        client.emit(topic, message);
    });
});



io.on('connection', function(client) {
    io_clients.push(client);
    console.log('Client connected...');

    client.on('join', function(data) {
        console.log(data);
    });

});




app.use(webpackDevMiddleware(compiler, {noInfo: true, publicPath: config.output.publicPath}));
app.use(webpackHotMiddleware(compiler));

app.use(express.static('./dist'));

app.use('/', function (req, res) {
    res.sendFile(path.resolve('client/index.html'));
});

var port = serverConfig.webServerPort;

app.listen(port, function(error) {
  if (error) throw error;
  console.log("Express server listening on port", port);
});
