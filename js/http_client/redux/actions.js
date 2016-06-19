let actions = {
    temperatureReceived: (temperature) => {
        return {
            type: 'TEMPERATURE_RECEIVED',
            value: temperature
        }
    },
    pressureReceived: (pressure) => {
        return {
            type: 'PRESSURE_RECEIVED',
            value: pressure
        }
    },
    humidityReceived: (humidity) => {
        return {
            type: 'HUMIDITY_RECEIVED',
            value: humidity
        }
    }
};

export default actions