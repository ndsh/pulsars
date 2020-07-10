ArrayList<Pulsar> pulsars;
Pulsar p;
JSONObject pulsar;
JSONArray json;
float x = 0;
float y = 0;
float pulsarSize = 12.76;

void setup() {
  size(600, 600, P2D);
  surface.setLocation(0, 0);
  json = loadJSONArray("pulsars.json");
  initPulsars();
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
  
  
  
  for(int i = 0; i<pulsars.size(); i++) {
    
    pulsars.get(i).update();
    pulsars.get(i).display();
  }
}

void initPulsars(){
  pulsars = new ArrayList<Pulsar>();
  for (int i = 0; i < json.size(); i++) {
    pulsar = json.getJSONObject(i);
    String name = pulsar.getString("name");
    float pulse = pulsar.getFloat("period");
    
    pulsars.add(new Pulsar(name, pulse, new PVector(x, y), pulsarSize));
    println(x, y);
    x += pulsarSize;
    if(x >= width) {
      x = 0;
      y += pulsarSize;
    }
    //println(pulsar.getInt("bin"));
  //  Pulsar(String name, PVector p, long pulse)
  }
}
