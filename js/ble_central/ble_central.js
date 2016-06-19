var noble = require('noble');
var mqtt    = require('mqtt');
var serverConfig = require('./server.config');

var mqttClient  = mqtt.connect('mqtt://' + serverConfig.mqttServer);

var FRM_ENV_HUMIDITY_UUID   = "2a6f";
var FRM_ENV_PRESSURE_UUID   = "2a6d";
var FRM_ENV_TEMPERATURE_UUID ="2a6e";
var FRM_ENV_DEVICE = 'db:99:c2:e3:2d:f3';

var frmEnvHumidity = null;
var frmEnvPressure = null;
var frmEnvTemperature = null;


noble.on('stateChange', function(state) {
    if (state === 'poweredOn') {
        noble.startScanning();
    }
    else {
        noble.stopScanning();
    }
});



noble.on('discover', function(device) {

    if (device.address === FRM_ENV_DEVICE) {

        // we found a device, stop scanning
        noble.stopScanning();
        fetchEnvValues(device);

    }
});


function fetchEnvValues(device) {
    //
    // Once the device has been discovered, then connect to it.
    // It can also be constructed if the uuid is already known.
    ///
    device.connect(function (err) {
        if (!err) {
            //
            // Once the device has been connected, then discover the
            // services and characteristics of interest.
            //
            device.discoverAllServicesAndCharacteristics(function (err, services, characteristics) {
                if (err) {
                    device.disconnect();
                    noble.startScanning();
                } else {
                    characteristics.forEach(function(characteristic) {
                        //
                        // Loop through each characteristic and match them to the
                        // UUIDs that we know about.
                        //
                        if (characteristic.uuid === FRM_ENV_HUMIDITY_UUID) {
                            frmEnvHumidity = characteristic;
                        }
                        else if (characteristic.uuid === FRM_ENV_PRESSURE_UUID) {
                            frmEnvPressure = characteristic;
                        }
                        else if (characteristic.uuid === FRM_ENV_TEMPERATURE_UUID) {
                            frmEnvTemperature = characteristic;
                        }
                    });

                    if (frmEnvHumidity && frmEnvPressure && frmEnvTemperature) {
                        readEnvValues(device);
                    }
                }

            });

            device.once('disconnect', function onDisconnect() {
                noble.startScanning();
            });

        } else {
            device.disconnect();
            noble.startScanning();
        }
    });

}


function readEnvValues(device) {

    var frmEnvHumidityValue = false;
    var frmEnvPressureValue = false;
    var frmEnvTemperatureValue = false;

    frmEnvHumidity.subscribe(function onSubscribe(error) {
        frmEnvHumidity.on('data', function onData(data, isNotification) {
            frmEnvHumidityValue = parseFloat(ConvertBase.hex2dec(data.toString('hex'))/100);
            mqttClient.publish('environment/humidity', frmEnvHumidityValue.toString());
        });
    });


    frmEnvPressure.subscribe(function onSubscribe(error) {
        frmEnvPressure.on('data', function onData(data, isNotification) {
            frmEnvPressureValue = ConvertBase.hex2dec(data.toString('hex'));
            mqttClient.publish('environment/pressure', frmEnvPressureValue.toString());
        });
    });

    frmEnvTemperature.subscribe(function onSubscribe(error) {
        frmEnvTemperature.on('data', function onData(data, isNotification) {
            frmEnvTemperatureValue = parseFloat(ConvertBase.hex2dec(data.toString('hex')) / 100);
            mqttClient.publish('environment/temperature', frmEnvTemperatureValue.toString());
        });
    });
}


(function(){

    var ConvertBase = function (num) {
        return {
            from : function (baseFrom) {
                return {
                    to : function (baseTo) {
                        return parseInt(num, baseFrom).toString(baseTo);
                    }
                };
            }
        };
    };

    // binary to decimal
    ConvertBase.bin2dec = function (num) {
        return ConvertBase(num).from(2).to(10);
    };

    // binary to hexadecimal
    ConvertBase.bin2hex = function (num) {
        return ConvertBase(num).from(2).to(16);
    };

    // decimal to binary
    ConvertBase.dec2bin = function (num) {
        return ConvertBase(num).from(10).to(2);
    };

    // decimal to hexadecimal
    ConvertBase.dec2hex = function (num) {
        return ConvertBase(num).from(10).to(16);
    };

    // hexadecimal to binary
    ConvertBase.hex2bin = function (num) {
        return ConvertBase(num).from(16).to(2);
    };

    // hexadecimal to decimal
    ConvertBase.hex2dec = function (num) {
        return ConvertBase(num).from(16).to(10);
    };

    this.ConvertBase = ConvertBase;

})(this);
