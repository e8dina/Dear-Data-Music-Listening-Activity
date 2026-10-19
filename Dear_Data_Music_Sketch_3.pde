String[] moods = {
  "Chill", "Chill", "Passion", "Energetic",
  "Sad", "Dreamy", "Dreamy", "Energetic",
  "Sad", "Passion"
};

Flower[] flowers;

void setup() {
  size(900, 700);

  flowers = new Flower[moods.length];

  for (int i = 0; i < moods.length; i++) {
    float x = 100 + (i % 8) * 100;
    float y = 130 + (i / 8) * 130;

    flowers[i] = new Flower(x, y, moods[i]);
  }
}

void draw() {
  background(245, 233, 238);

  fill(40);
  textSize(30);
  textAlign(CENTER);
  text("MUSIC LISTENING ACTIVITY", width/2, 50);

  for (int i = 0; i < flowers.length; i++) {
    flowers[i].display();
  }
}

class Flower {
  float x;
  float y;
  String mood;

  Flower(float x, float y, String mood) {
    this.x = x;
    this.y = y;
    this.mood = mood;
  }

  void display() {
    noStroke();

    ellipse(x, y-15, 25, 25);
    ellipse(x, y+15, 25, 25);
    ellipse(x-15, y, 25, 25);
    ellipse(x+15, y, 25, 25);

    fill(255, 220, 100);
    ellipse(x, y, 18, 18);
  }
}
