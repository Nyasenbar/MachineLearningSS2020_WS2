import processing.net.*;
PImage img;
String payload;
int data;

Server server;

void setup() {
  size(1200, 600);
  img = loadImage("Thinking-of-getting-a-cat.png");
  server = new Server(this, 6660);
}

void draw() {
  image(img, 0, 0);
  Client c = server.available();
  if(c != null){
    String payload = c.readString();
    c.stop();
    if(payload != null){
      println(payload);
      data = parseInt(payload);
    }
  }
  tint(255,255,data);
}
