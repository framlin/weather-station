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

#include "Adafruit_LEDBackpack.h"
#include "Adafruit_GFX.h"
#include "RTClib.h"




#define BME_SCK 13
#define BME_MISO 12
#define BME_MOSI 11
#define BME_CS 10

#define SEALEVELPRESSURE_HPA (1013.25)

Adafruit_BME280 bme; // I2C
//Adafruit_BME280 bme(BME_CS); // hardware SPI
//Adafruit_BME280 bme(BME_CS, BME_MOSI, BME_MISO,  BME_SCK);


Adafruit_7segment matrix_70 = Adafruit_7segment();
Adafruit_7segment matrix_72 = Adafruit_7segment();
Adafruit_7segment matrix_74 = Adafruit_7segment();

RTC_DS1307 rtc;

void setup() {
  
  Serial.begin(9600);
  Serial.println(F("BME280 test"));

  if (!bme.begin()) {
    Serial.println("Could not find a valid BME280 sensor, check wiring!");
    while (1);
  }
  matrix_70.begin(0x70);
  matrix_70.setBrightness(16);

  matrix_72.begin(0x72);
  matrix_72.setBrightness(16);

  matrix_74.begin(0x74);
  matrix_74.setBrightness(16);

  rtc.begin();
}


void printTemperature(float temperature) {
  int temp = (int)(temperature * 100);
  
  matrix_70.writeDigitNum(0, (temp / 1000), false);
  matrix_70.writeDigitNum(1, (temp / 100) % 10, true);
  matrix_70.writeDigitNum(3, (temp / 10) % 10, false);
  matrix_70.writeDigitNum(4, temp % 10, false);
 
  matrix_70.writeDisplay();

  //debug
    Serial.print("Temperature = ");
    Serial.print(temperature);
    Serial.println(" *C");
}

void printHumidity(float humidity) {
  int hum = (int)(humidity * 100);
  
  matrix_72.writeDigitNum(0, (hum / 1000), false);
  matrix_72.writeDigitNum(1, (hum / 100) % 10, true);
  matrix_72.writeDigitNum(3, (hum / 10) % 10, false);
  matrix_72.writeDigitNum(4, hum % 10, false);
 
  matrix_72.writeDisplay();

  //debug
    Serial.print("Humidity = ");
    Serial.print(humidity);
    Serial.println(" %");
  
}

void printPressure(float pressure) {
  int pre = (int)(pressure / 100.0F);
  
  matrix_74.print(pre, DEC);
  matrix_74.writeDisplay();

  //debug
    Serial.print("Pressure = ");
    Serial.print( pressure / 100.0F);
    Serial.println(" hPa");
}

void printTime(DateTime dateTime) {
  int hour = dateTime.hour();
  int minute = dateTime.minute();
  
  matrix_72.writeDigitNum(0, (hour / 10) % 10, false);
  matrix_72.writeDigitNum(1, hour % 10, false);
  matrix_72.drawColon(true);
  matrix_72.writeDigitNum(3, (minute / 10) % 10, false);
  matrix_72.writeDigitNum(4, minute % 10, false);
 
  matrix_72.writeDisplay();

  //debug
    Serial.print(dateTime.hour(), DEC);
    Serial.print(':');
    Serial.print(dateTime.minute(), DEC);

}

void loop() {
  float temperature = bme.readTemperature();
  float humidity = bme.readHumidity();
  float pressure = bme.readPressure();

  DateTime now = rtc.now();

  printTemperature(temperature);
  //printHumidity(humidity);
  printTime(now);
  printPressure(pressure);
  delay(2000);
}
