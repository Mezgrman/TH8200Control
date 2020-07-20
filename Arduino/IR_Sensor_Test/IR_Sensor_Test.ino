#define IR_LED 2
#define OUT_LED 3
#define IR_SENSOR A1

#define IR_AVG_COUNT 50
#define STATE_AVG_COUNT 25

#define THRESHOLD 10
#define HYSTERESIS 1
#define ON_TIME 3000

uint16_t average(uint16_t *arr, uint16_t count) {
  uint32_t sum = 0;
  for (uint16_t i = 0; i < count; i++) {
    sum += arr[i];
  }
  return sum / count;
}

void setup() {
  pinMode(IR_LED, OUTPUT);
  pinMode(OUT_LED, OUTPUT);
  pinMode(IR_SENSOR, INPUT);

  Serial.begin(115200);

  digitalWrite(IR_LED, 1);
}

uint16_t valsOn[IR_AVG_COUNT];
uint16_t valsOff[IR_AVG_COUNT];
uint16_t irStates[STATE_AVG_COUNT];
uint16_t idxOn = 0;
uint16_t idxOff = 0;
uint16_t idxIrStates = 0;

uint8_t irState = 0;
uint8_t outState = 0;
uint32_t onStart = 0;

int16_t result;
void loop() {
  valsOff[idxOff++] = analogRead(IR_SENSOR);
  idxOff %= IR_AVG_COUNT;
  digitalWrite(IR_LED, 1);
  delayMicroseconds(50);
  valsOn[idxOn++] = analogRead(IR_SENSOR);
  idxOn %= IR_AVG_COUNT;
  digitalWrite(IR_LED, 0);
  result = average(valsOff, IR_AVG_COUNT) - average(valsOn, IR_AVG_COUNT);
  Serial.println(result);
  if (irState && result <= (THRESHOLD - HYSTERESIS)) {
    irStates[idxIrStates++] = 0;
    idxIrStates %= STATE_AVG_COUNT;
  } else if (!irState && result >= THRESHOLD) {
    irStates[idxIrStates++] = 1;
    idxIrStates %= STATE_AVG_COUNT;
  }
  irState = average(irStates, STATE_AVG_COUNT);
  if (irState) {
    outState = 1;
    digitalWrite(OUT_LED, 1);
    onStart = millis();
  }
  if (outState && millis() - onStart >= ON_TIME) {
    outState = 0;
    digitalWrite(OUT_LED, 0);
  }
  delay(5);
}
