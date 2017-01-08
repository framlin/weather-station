/***************************************************************************
  This is a library for the BME280 humidity, temperature & pressure sensor

  Designed specifically to work with the Adafruit BME280 Breakout
  ----> http://www.adafruit.com/products/2650

  These sensors use I2C or SPI to communicate, 2 or 4 pins are required
  to interface.

  Adafruit invests time and resources providing this open source code,
  please support Adafruit andopen-source hardware by purchasing products
  from Adafruit!

  Written by Limor Fried & Kevin Townsend for Adafruit Industries.
  BSD license, all text above must be included in any redistribution
 ***************************************************************************/

#include <Wire.h>
#include <Adafruit_Sensor.h>
#include <Adafruit_BME280.h>


#include <Arduino.h>
#include <SPI.h>
#if not defined (_VARIANT_ARDUINO_DUE_X_) && not defined (_VARIANT_ARDUINO_ZERO_)
  #include <SoftwareSerial.h>
#endif

#include "Adafruit_BLE.h"
#include "Adafruit_BluefruitLE_SPI.h"
#include "Adafruit_BluefruitLE_UART.h"

#include "BluefruitConfig.h"

#define FRM_ENV_SERVICE     "0d-01-97-f2-30-b8-11-e6-ac-61-9e-71-12-8c-ae-77"
#define FRM_ENV_HUMIDITY    "0x2A6F"
#define FRM_ENV_PRESSURE    "0x2A6D"
#define FRM_ENV_TEMPERATURE "0x2A6E"


/* ...hardware SPI, using SCK/MOSI/MISO hardware SPI pins and then user selected CS/IRQ/RST */
Adafruit_BluefruitLE_SPI ble(BLUEFRUIT_SPI_CS, BLUEFRUIT_SPI_IRQ, BLUEFRUIT_SPI_RST);

// A small helper
void error(const __FlashStringHelper*err) {
  Serial.println(err);
  while (1);
}

/* The service information */

int32_t frmEnvServiceId;
int32_t frmEnvHumidityCharId;
int32_t frmEnvPressureCharId;
int32_t frmEnvTemperatureCharId;

Adafruit_BME280 bme; // I2C

void setup() {

  Serial.begin(9600);

  boolean success;

  if (!bme.begin()) {
    Serial.println("Could not find a valid BME280 sensor, check wiring!");
    while (1);
  }

  if ( !ble.begin(VERBOSE_MODE) )
  {
    error(F("Couldn't find Bluefruit, make sure it's in CoMmanD mode & check wiring?"));
  }

  //Perform a factory reset to make sure everything is in a known state
  if (! ble.factoryReset() ){
       error(F("Couldn't factory reset"));
  }

  //Disable command echo from Bluefruit
  ble.echo(false);

  //Print Bluefruit information
  ble.info();

  //Change the device name to make it easier to find
  if (! ble.sendCommandCheckOK(F("AT+GAPDEVNAME=Framlin ES")) ) {
    error(F("Could not set device name?"));
  }

  success = ble.sendCommandWithIntReply( F("AT+GATTADDSERVICE=UUID128=" FRM_ENV_SERVICE), &frmEnvServiceId);
  if (! success) {
    error(F("Could not add FRM ENV service"));
  }

  success = ble.sendCommandWithIntReply( F("AT+GATTADDCHAR=UUID=" FRM_ENV_HUMIDITY ", PROPERTIES=0x12, MIN_LEN=1, MAX_LEN=6, VALUE=00-100000"), &frmEnvHumidityCharId);
    if (! success) {
    error(F("Could not add FRM Humidity characteristic"));
  }

  success = ble.sendCommandWithIntReply( F("AT+GATTADDCHAR=UUID=" FRM_ENV_PRESSURE ", PROPERTIES=0x12, MIN_LEN=1, MAX_LEN=6, VALUE=00-100000"), &frmEnvPressureCharId);
    if (! success) {
    error(F("Could not add FRM Pressure characteristic"));
  }

  success = ble.sendCommandWithIntReply( F("AT+GATTADDCHAR=UUID=" FRM_ENV_TEMPERATURE ", PROPERTIES=0x12, MIN_LEN=1, MAX_LEN=6, VALUE=00-100000"), &frmEnvTemperatureCharId);
    if (! success) {
    error(F("Could not add FRM Temperature characteristic"));
  }

  //Reset the device for the new service setting changes to take effect
  ble.reset();

}


void sendTemperature(float temperature) {
    int temp = (int)(temperature * 100);

    ble.print( F("AT+GATTCHAR=") );
    ble.print( frmEnvTemperatureCharId );
    ble.print( F(",") );
    ble.println(temp, DEC);

}

void sendHumidity(float humidity) {
    int hum = (int)(humidity * 100);
  
    ble.print( F("AT+GATTCHAR=") );
    ble.print( frmEnvHumidityCharId );
    ble.print( F(",") );
    ble.println(hum, DEC);

}

void sendPressure(float pressure) {
    int pre = (int)(pressure / 100.0F);

    ble.print( F("AT+GATTCHAR=") );
    ble.print( frmEnvPressureCharId );
    ble.print( F(",") );
    ble.println(pre, DEC);

}

void loop() {
    float temperature = bme.readTemperature();
    float humidity = bme.readHumidity();
    float pressure = bme.readPressure();

    sendHumidity(humidity);
    sendPressure(pressure);
    sendTemperature(temperature);

    delay(2000);
}
