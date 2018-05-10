class Walker {
  PVector pos;
  PVector off;
  float t1 = 0;
  float t2 = 0;

  Walker() {
    this.pos = new PVector(width/2, height/2);
    this.off = new PVector(random(1000), random(1000));
  }

  void step() {
    pos.x = map(noise(off.x),0,1,0,width);
    pos.y = map(noise(off.y),0,1,0,height);
    off.add(0.01,0.01);
  }

  void show() {
    stroke(random(255), random(255), random(255));
    strokeWeight(random(1, 10));
    point(pos.x, pos.y);
  }
}
