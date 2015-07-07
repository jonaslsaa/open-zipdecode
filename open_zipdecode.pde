String[] data_set;
Table x;
Table y;

void preproccess(){
   size(800,600);
  // Load text file as a string
  data_set = loadStrings("no_postal_codes.csv");
  // Convert string into an array of integers using ',' as a delimiter
  x = loadTable("no_postal_codes.csv","header");
  y = loadTable("no_postal_codes.csv","header");
}

void setup(){
  preproccess();
  noStroke();
}

void draw(){
  background(0,0,0);
  for (int i = 0; i < data_set.length-100; i++) {
    fill(255,255,255);
     rect(x.getFloat(i, 4)*20-850,y.getFloat(i, 5)*15+50,2,2);
  }

}
