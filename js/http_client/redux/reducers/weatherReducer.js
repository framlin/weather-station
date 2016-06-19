function receiveTemperature(weather, action) {
    let result = Object.assign({}, weather);
    result.temperature = action.value;
    return result;
}

function receiveHumidity(weather, action) {
    let result = Object.assign({}, weather);
    result.humidity = action.value;
    return result;
}

function receivePressure(weather, action) {
    let result = Object.assign({}, weather);
    result.pressure = action.value;
    return result;
}



let weatherReducer = function(weather = {}, action) {

    switch (action.type) {
        case 'TEMPERATURE_RECEIVED':
            return receiveTemperature(weather, action);
            break;
        case 'HUMIDITY_RECEIVED':
            return receiveHumidity(weather, action);
            break;
        case 'PRESSURE_RECEIVED':
            return receivePressure(weather, action);
            break;
        default:
            return weather;
    }
};

export default weatherReducer;