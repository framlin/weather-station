import React, { Component } from 'react'


const table = {
    fontSize: '20pt'
};
const firstColumn = {
    backgroundColor: "yellow"
};

const secondColumn = {
    textAlign: "right",
    color: "blue",
    paddingLeft: "3em"
};

const row = {
    marginBottom: "1em"
}

class WeatherData extends Component {

    render() {
        return (
            <div id='climate'>
                <h2>Room Climate</h2>
                <table style={table}>
                    <tr style={row}>
                        <td id="temperature" style={firstColumn}>Temperature</td> <td style={secondColumn}>{this.props.weather.temperature} </td> <td>°C</td>
                    </tr>
                    <tr style={row}>
                        <td id="pressure" style={firstColumn}>Pressure</td> <td style={secondColumn}>{this.props.weather.pressure} </td> <td>hPa</td>
                    </tr>
                    <tr style={row}>
                        <td id="humidity" style={firstColumn}>Humidity</td> <td style={secondColumn}>{this.props.weather.humidity} </td> <td>%</td>
                    </tr>

                </table>
            </div>
        )
    }

}

export default WeatherData