let actions = {
    receiveTemperature: (temperature) => {
        return {
            type: 'TEMPERATURE_RECEIVED',
            value: temperature
        }
    },
    receivePressure: (pressure) => {
        return {
            type: 'PRESSURE_RECEIVED',
            value: pressure
        }
    },
    receiveHumidity: (humidity) => {
        return {
            type: 'HUMIDITY_RECEIVED',
            value: humidity
        }
    }
};

export default actions