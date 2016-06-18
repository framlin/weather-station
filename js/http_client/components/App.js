import React, { Component } from 'react'
import WeatherData from './WeatherData'
import { connect } from 'react-redux'
import { bindActionCreators } from 'redux'
import actions from '../redux/actions'

import io from 'socket.io-client'

var socket = io.connect('http://localhost:4200');
var environmentListener = {
    'environment/temperature': [],
    'environment/humidity': [],
    'environment/pressure': []
}

socket.on('connect', function(data) {
    socket.emit('join', 'Hello World from client');
});

socket.on('environment/temperature', function(data) {
    environmentListener['environment/temperature'].forEach((callback) => {
        callback[1].call(callback[0],String.fromCharCode.apply(null, new Uint8Array(data)))
    })
})

socket.on('environment/pressure', function(data) {
    environmentListener['environment/pressure'].forEach((callback) => {
        callback[1].call(callback[0],String.fromCharCode.apply(null, new Uint8Array(data)))
    })
})

socket.on('environment/humidity', function(data) {
    environmentListener['environment/humidity'].forEach((callback) => {
        callback[1].call(callback[0],String.fromCharCode.apply(null, new Uint8Array(data)))
    })
})

function subscribeEnvironment(ctx, topic, callback) {
    if (topic in environmentListener) {
        environmentListener[topic].push([ctx, callback])
    }
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
