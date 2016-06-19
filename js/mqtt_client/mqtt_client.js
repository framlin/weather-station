let mqtt    = require('mqtt');
var serverConfig = require('./server.config');
var client  = mqtt.connect('mqtt://' + serverConfig.mqttServer);

client.on('connect', function () {
    client.subscribe('environment/#');
});

client.on('message', function (topic, message) {
    // message is Buffer
    console.log(topic + ": " + message.toString());
});

