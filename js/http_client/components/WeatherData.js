import React, { Component } from 'react'

class WeatherData extends Component {

    render() {
        return (
            <div>
                <h2>Climate</h2>
                <div>Temperature: {this.props.weather.temperature} °C</div>
                <div>Pressure: {this.props.weather.pressure} hPa</div>
                <div>Humidity: {this.props.weather.humidity} %</div>
            </div>
        )
    }

}

export default WeatherData