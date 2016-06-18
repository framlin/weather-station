import React, { Component } from 'react'
import WeatherData from './WeatherData'
import { connect } from 'react-redux'
import { bindActionCreators } from 'redux'
import actions from '../redux/actions'
let serverConfig = require('../server.config.js');

import io from 'socket.io-client'

var socket = io.connect('http://'+serverConfig.ioServerName+':' + serverConfig.ioServerPort);
var environmentListener = {
    'environment/temperature': [],
    'environment/humidity': [],
    'environment/pressure': []
}

socket.on('connect', function(data) {
    socket.emit('join', 'Hello World from client');
});

socket.on('environment/temperature', function(data) {
    publishEnvironment('environment/temperature', data, true);
})

socket.on('environment/pressure', function(data) {
    publishEnvironment('environment/pressure', data, false);
})

socket.on('environment/humidity', function(data) {
    publishEnvironment('environment/humidity', data, true);
});

function subscribeEnvironment(ctx, topic, callback) {
    if (topic in environmentListener) {
        environmentListener[topic].push([ctx, callback])
    }
}

function publishEnvironment(topic, value, format) {
    environmentListener[topic].forEach((callback) => {
        let num = String.fromCharCode.apply(null, new Uint8Array(value));
        if (format) {
            num = Number.parseFloat(num).toFixed(2);
        }
        callback[1].call(callback[0], num);
    })

}


let temp = 0;

class App extends Component {
    constructor() {
        super();
        subscribeEnvironment(this, 'environment/temperature', (temperature) => {
            this.props.actions.receiveTemperature(temperature)
        });
        
        subscribeEnvironment(this, 'environment/pressure', (pressure) => {
            this.props.actions.receivePressure(pressure)
        });
        
        subscribeEnvironment(this, 'environment/humidity', (humidity) => {
            this.props.actions.receiveHumidity(humidity)
        });
    }

    render() {
        return (
            <WeatherData weather={this.props.weather}/>
        )
    }

}

function mapStateToProps(state) {
    return state
}

function mapDispatchToProps(dispatch) {
    return {
        actions: bindActionCreators(actions, dispatch)
    }
}

export default connect(mapStateToProps, mapDispatchToProps)(App)
