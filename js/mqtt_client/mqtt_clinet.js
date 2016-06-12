var mqtt    = require('mqtt');
var client  = mqtt.connect('mqtt://pi3');

client.on('connect', function () {
    client.subscribe('meinTopic/#');
    //client.publish('presence', 'Hello mqtt');
});

client.on('message', function (topic, message) {
    // message is Buffer
    console.log(topic + ": " + message.toString());
    //client.end();
});