#include <Arduino.h>

#ifndef TEENSY_TYPER_MESSAGE
  #define TEENSY_TYPER_MESSAGE ""
#endif

void setup() {}

void loop() {
  Keyboard.print(TEENSY_TYPER_MESSAGE);
  delay(5000);
}
