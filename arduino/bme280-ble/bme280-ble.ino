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
//#include <SPI.h>
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
  Serial.println(F("BME280 test"));

  boolean success;

  if (!bme.begin()) {
    Serial.println("Could not find a valid BME280 sensor, check wiring!");
    while (1);
  }
  if ( !ble.begin(VERBOSE_MODE) )
  {
    error(F("Couldn't find Bluefruit, make sure it's in CoMmanD mode & check wiring?"));
  }
  Serial.println( F("OK!") );

  //Perform a factory reset to make sure everything is in a known state 
  Serial.println(F("Performing a factory reset: "));
  if (! ble.factoryReset() ){
       error(F("Couldn't factory reset"));
  }

  //Disable command echo from Bluefruit
  ble.echo(false);

  Serial.println("Requesting Bluefruit info:");
  //Print Bluefruit information
  ble.info();

  //Change the device name to make it easier to find
  Serial.println(F("Setting device name to 'Framlin ES': "));

  if (! ble.sendCommandCheckOK(F("AT+GAPDEVNAME=Framlin ES")) ) {
    error(F("Could not set device name?"));
  }

  Serial.println(F("Adding FRM ENV Service Definition: "));
  success = ble.sendCommandWithIntReply( F("AT+GATTADDSERVICE=UUID128=" FRM_ENV_SERVICE), &frmEnvServiceId);
  if (! success) {
    error(F("Could not add FRM ENV service"));
  }



  Serial.println(F("Adding the Humidity characteristic: "));
  success = ble.sendCommandWithIntReply( F("AT+GATTADDCHAR=UUID=" FRM_ENV_HUMIDITY ", PROPERTIES=0x12, MIN_LEN=1, MAX_LEN=6, VALUE=00-100000"), &frmEnvHumidityCharId);
    if (! success) {
    error(F("Could not add FRM Humidity characteristic"));
  }

  Serial.println(F("Adding the Pressure characteristic: "));
  success = ble.sendCommandWithIntReply( F("AT+GATTADDCHAR=UUID=" FRM_ENV_PRESSURE ", PROPERTIES=0x12, MIN_LEN=1, MAX_LEN=6, VALUE=00-100000"), &frmEnvPressureCharId);
    if (! success) {
    error(F("Could not add FRM Pressure characteristic"));
  }

  Serial.println(F("Adding the Temperature characteristic: "));
  success = ble.sendCommandWithIntReply( F("AT+GATTADDCHAR=UUID=" FRM_ENV_TEMPERATURE ", PROPERTIES=0x12, MIN_LEN=1, MAX_LEN=6, VALUE=00-100000"), &frmEnvTemperatureCharId);
    if (! success) {
    error(F("Could not add FRM Temperature characteristic"));
  }

/*
  //Add the Heart Rate Service to the advertising data (needed for Nordic apps to detect the service)
  Serial.print(F("Adding Heart Rate Service UUID to the advertising payload: "));
  ble.sendCommandCheckOK( F("AT+GAPSETADVDATA=02-01-06-05-02-0d-18-0a-18") );
*/
  //Reset the device for the new service setting changes to take effect
  Serial.print(F("Performing a SW reset (service changes require a reset): "));
  ble.reset();

  Serial.println();

}


void printTemperature(float temperature) {
  int temp = (int)(temperature * 100);
  
  //debug
    Serial.print("Temperature = ");
    Serial.print(temperature);
    Serial.println(" *C");

    ble.print( F("AT+GATTCHAR=") );
    ble.print( frmEnvTemperatureCharId );
    ble.print( F(",") );
    ble.println(temp, DEC);

}

void printHumidity(float humidity) {
  int hum = (int)(humidity * 100);
  
  //debug
    Serial.print("Humidity = ");
    Serial.print(humidity);
    Serial.println(" %");
  
    ble.print( F("AT+GATTCHAR=") );
    ble.print( frmEnvHumidityCharId );
    ble.print( F(",") );
    ble.println(hum, DEC);
    
}

void printPressure(float pressure) {
  int pre = (int)(pressure / 100.0F);
  

  //debug
    Serial.print("Pressure = ");
    Serial.print( pressure / 100.0F);
    Serial.println(" hPa");

    ble.print( F("AT+GATTCHAR=") );
    ble.print( frmEnvPressureCharId );
    ble.print( F(",") );
    ble.println(pre, DEC);
   
}

void loop() {
  float temperature = bme.readTemperature();
  float humidity = bme.readHumidity();
  float pressure = bme.readPressure();

  printHumidity(humidity);
  printPressure(pressure);
  printTemperature(temperature);
  delay(2000);
}
