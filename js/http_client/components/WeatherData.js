import React, { Component } from 'react'
import { connect } from 'react-redux'
import { bindActionCreators } from 'redux'
import actions from '../redux/actions'
import io from 'socket.io-client'

//===========================================================================

let serverConfig = require('../server.config.js');

var socket = io.connect('http://'+serverConfig.ioServerName+':' + serverConfig.ioServerPort);

socket.on('connect', function(data) {
    socket.emit('join', 'Hello World from client');
});

socket.on('environment/temperature', function(data) {
    WeatherData.publishEnvironment('environment/temperature', data, true);
});

socket.on('environment/pressure', function(data) {
    WeatherData.publishEnvironment('environment/pressure', data, false);
});

socket.on('environment/humidity', function(data) {
    WeatherData.publishEnvironment('environment/humidity', data, true);
});

//===========================================================================

const EnvironmentListener  = {
    'environment/temperature': [],
    'environment/humidity': [],
    'environment/pressure': []
};

const tableStyle = {
    fontSize: '20pt'
};

const firstColumnStyle = {
    backgroundColor: "yellow"
};

const secondColumnStyle = {
    textAlign: "right",
    color: "blue",
    paddingLeft: "3em"
};

const rowStyle = {
    marginBottom: "1em"
};

class WeatherData extends Component {
    constructor() {
        super();
        WeatherData.subscribeEnvironment(this, 'environment/temperature', (temperature) => {
            this.props.actions.temperatureReceived(temperature)
        });

        WeatherData.subscribeEnvironment(this, 'environment/pressure', (pressure) => {
            this.props.actions.pressureReceived(pressure)
        });

        WeatherData.subscribeEnvironment(this, 'environment/humidity', (humidity) => {
            this.props.actions.humidityReceived(humidity)
        });


    }

    static publishEnvironment(topic, value, format) {
        EnvironmentListener[topic].forEach((callback) => {
            let num = String.fromCharCode.apply(null, new Uint8Array(value));
            if (format) {
                num = Number.parseFloat(num).toFixed(2);
            }
            callback[1].call(callback[0], num);
        })
    }


    static subscribeEnvironment(ctx, topic, callback) {
        if (topic in EnvironmentListener) {
            EnvironmentListener[topic].push([ctx, callback])
        }
    }

    render() {
        return (
            <div id='climate'>
                <h2>Room Climate</h2>
                <table style={tableStyle}>
                    <tbody>
                    <tr style={rowStyle}>
                        <td id="temperature" style={firstColumnStyle}>Temperature</td>
                        <td style={secondColumnStyle}>{this.props.weather.temperature} </td>
                        <td>°C</td>
                    </tr>
                    <tr style={rowStyle}>
                        <td id="humidity" style={firstColumnStyle}>Humidity</td>
                        <td style={secondColumnStyle}>{this.props.weather.humidity} </td>
                        <td>%</td>
                    </tr>
                    <tr style={rowStyle}>
                        <td id="pressure" style={firstColumnStyle}>Pressure</td>
                        <td style={secondColumnStyle}>{this.props.weather.pressure} </td>
                        <td>hPa</td>
                    </tr>
                    </tbody>
                </table>
            </div>
        )
    }

}


//===========================================================================

function mapStateToProps(state) {
    return state;
}

function mapDispatchToProps(dispatch) {
    return {
        actions: bindActionCreators(actions, dispatch)
    }
}

export default connect(mapStateToProps, mapDispatchToProps)(WeatherData)
