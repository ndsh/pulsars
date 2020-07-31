import java.util.Collections.*;

ArrayList<Pulsar> pulsars;
Pulsar p;
JSONObject pulsar;
JSONArray json;
float x = 0;
float y = 0;
float pulsarSize = 12.49;
float rotate = 0;

void setup() {
  size(600, 600);
  
  surface.setLocation(0, 0);
  json = loadJSONArray("pulsars.json");
  initPulsars();
  rectMode(CENTER);
  ellipseMode(CENTER);
  println("known pulsars in json= "+ json.size());
  /*
  pulsar = json.getJSONObject(0);
  String name = pulsar.getString("name");
  float pulse = pulsar.getFloat("period");
  p = new Pulsar(name, pulse);
  */
  
}

void draw() {
  background(0);
  //fill(0, 125);
  //rect(width/2, height/2, width, height);
  
  translate(8, 10);
  //translate(width/2, height/2);
  rotate += 0.5;
  //rotate(radians(rotate));
  
  if(true) {
  for(int i = 0; i<pulsars.size(); i++) {
    
    pulsars.get(i).update();
    pulsars.get(i).display();
  }
  }
  
  //Pulsar p = getPulsarByName("J0720-3125");
  Pulsar p = pulsars.get(1);
  p.setPosition(width/2, height/2);
  p.update();
  p.display();
}

void initPulsars(){
  pulsars = new ArrayList<Pulsar>();
  for (int i = 0; i < json.size(); i++) {
    pulsar = json.getJSONObject(i);
    String name = pulsar.getString("name");
    float pulse = pulsar.getFloat("period");
    float flux = pulsar.getFloat("flux");
    
    pulsars.add(new Pulsar(name, pulse, new PVector(x, y), pulsarSize, flux));
    //println(x, y);
    x += pulsarSize;
    if(x >= width) {
      x = 0;
      y += pulsarSize;
    }
    //println(pulsar.getInt("bin"));
  //  Pulsar(String name, PVector p, long pulse)
  }
}

Pulsar getPulsarByName(String s) {
  
  for(int i = 0; i<pulsars.size(); i++) {
    if(s.equals(pulsars.get(i).getName())) return pulsars.get(i); 
  }
  return null;
}
