int windowX = 800;
int windowY = 600;

String[] data_set;
String search;

Table x;
Table y;
int c_zip = 0;

void preproccess(){
   size(windowX,windowY);
  // Load text file as a string
  data_set = loadStrings("no_postal_codes.csv");
  // Convert string into an array of integers using ',' as a delimiter
  x = loadTable("no_postal_codes.csv","header");
  y = loadTable("no_postal_codes.csv","header");
}

void setup(){
  preproccess();
  noStroke();
  search = "";
} // END SETUP

void draw(){
  background(0,0,0);
  fill(255,255,49);
  //Draw all points
  for (int i = 0; i < data_set.length-1; i++) {
    rect(x.getFloat(i, 4)*20-850,y.getFloat(i, 5)*15+50,1,1);
    search = "";
  }
} // END DRAW

void keyPressed() {
    if ((int)key-48 == 1 || key-48 == 2 || key-48 == 3 || key-48 == 4 || key-48 == 5 || key-48 == 6 || key-48 == 7 || key-48 == 8 || key-48 == 9 || key-48 == 0) {
      search += key-48;
    }
}

void keyTyped() {
}
