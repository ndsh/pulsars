class Pulsar {
  PVector position;
  String name;
  float pulse;
  float flux;
  long timestamp = 0;
  float increase;
  int brightness;
  float pulsarSize;
  
  Pulsar(String _name, float _pulse, PVector p, float _pulsarSize) {
    pulse = 1000*_pulse;
    timestamp = millis();
    position = p;
    pulsarSize = _pulsarSize;
    println(pulse);
  }
  
  void update() {
    //println(millis() - timestamp);
     if(millis() - timestamp > pulse) {
         timestamp = millis();
         brightness = 255;
         //println(1);
     } else {
       brightness = 0;
       //println(0);
     }
  }
  
  void display() {
    push();
    noStroke();
    fill(255, brightness);
    translate(position.x, position.y);
    ellipseMode(CORNER);
    begin
    //rect(0, 0, pulsarSize, pulsarSize);
    pop();
  }
}
