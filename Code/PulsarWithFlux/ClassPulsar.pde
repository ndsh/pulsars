class Pulsar {
  PVector position;
  String name;
  float time;
  float size;
  
  long timestamp = 0;
  float increase;
  float brightness;
  float pulsarSize;
  float dotSize = 0;
  float circleSize = 0;
  float right_ascension = 0;
  float declination = 0;
  int discovery_year = 0;
  int distance = 0;
  
  boolean last = false;
  
  int nrings = 5;
  
  Pulsar(String _name, float _pulse, PVector p, float _pulsarSize, float _flux) {
    time = 1000*_pulse;
    if(time <= 200) time = 200;
    name = _name;
    
    timestamp = millis();
    position = p;
    pulsarSize = _pulsarSize;
    size = rScale3(log(_flux));
    dotSize = size*0.75;
    circleSize = nrings*size*0.25;
    //println(pulse);
  }
  
  void update() {
    //println(millis() - timestamp);
     if(millis() - timestamp > time) {
         timestamp = millis();
         brightness += 0.1;
         brightness %= 1;         //dynamicSize += 1;
         //println(brightness);
         //dynamicSize = pulsarSize;
         //println(1);
     } else {
       //brightness = 0;
       //println(0);
     }
  }
  
  float rScale3(float f) {
    float input = constrain(f, -5, 5);
    // pulsarSize --> 50 ursprünglich
    return map(input, -5, 5, 2, pulsarSize);
  }
  
  void setPosition(int x, int y) {
    position.x = x;
    position.y = y;
  }
  
  
  void display() {
    push();
    //noStroke();
    
    fill(255, 255);
    translate(position.x, position.y);
    ellipse(0, 0, dotSize, dotSize);
    
    noFill();
    stroke(255, map(brightness, 0.0, 1.0, 0, 255));
    ellipse(0, 0, circleSize, circleSize);
    noStroke();
    pop();
  }
  
  String getName() {
    return name;
  }
}
