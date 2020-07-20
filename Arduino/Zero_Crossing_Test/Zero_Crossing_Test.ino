#define ZC_INPUT 2
#define LED 13

volatile uint32_t lastZC = 0;

void onZeroCrossing() {
  lastZC = millis();
}

void setup() {
  pinMode(ZC_INPUT, INPUT_PULLUP);
  pinMode(LED, OUTPUT);

  attachInterrupt(digitalPinToInterrupt(ZC_INPUT), onZeroCrossing, FALLING);
}

void loop() {
  
}
