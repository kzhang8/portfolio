String rows[];

int current_row=1;
int vertical = 600/6;
int hori = 700/7;
int space = 100;
Cell grids = new Cell();
int number = 24;
int date;



void setup() {
  size(700, 700) ;
  


  rows = loadStrings("massshootings_oct2017.csv") ;
}

void draw() {

  background(255);
  draw_cal();


  //text(mouseX, 250, 250); 
  //text(mouseY, 350, 250);
  
 // code that tests which day the mouse is hovering over???? 
 // if x>? && x<? && y>? && y <? then we're in row 2 
 
 if(mouseX>0 && mouseX<100){
   date=0;
 }
 else if (mouseX>100 && mouseX<200) {
   date=1;
   println("date = 1");
 }
  else if (mouseX>200 && mouseX<300) {
   date=2;
   println("date = 2");
 }
 else if (mouseX>300 && mouseX<400) {
   date=3;
   println("date = 3");
 }
  else if (mouseX>400 && mouseX<500) {
   date=4;
   println("date = 4");
 }
  else if (mouseX>500 && mouseX<600) {
   date=5;
   println("date = 5");
 }
  else if (mouseX>600 && mouseX<700) {
   date=6;
   println("date = 6");
 }
 
 if(mouseY>200 && mouseY<300) {
   date=date + 0;
   draw_square();
   
 }
 
 if(mouseY>300 && mouseY<400) {
   date = date + 7;
   println("date = date + 7");
   draw_square();
   
 }
 
 if(mouseY>400 && mouseY<500) {
   date=date + 14;
   draw_square();
   
 }
 
 if(mouseY>500 && mouseY<600) {
   date=date + 21;
   draw_square();
   
 }
 
 if(mouseY>600 && mouseY<700) {
   date=date + 28;
   draw_square();
   
 }
 
 
  //String[] columns = split(rows[current_row], ',');

  //println(columns[2]);
  //println("Incident Date: " +columns[0]); 
  //println(" # Killed: " +columns[1]);
  //println();  





  //int number = int(columns[7]);
  //ellipse(number, number, number, number);


  //current_row++;
  //if (current_row > 28) {
  //  noLoop(); 
  //  println("END OF DATA");
  //}
  //delay(1000);
}


void draw_cal() {
  //Days of the month
  number = 24;
  for (int y=115; y<700; y=y+100) {
    for (int x=5; x<700; x=x+100) {
      fill(0);
      textSize(15);
      text(number, x, y);
      
      //println(number);
      number=number+1;
      if (number > 31) {
        number=1;
        
      }
    }
  }
  
  //Title
  rect(0, 0, 700, 50);
  fill(255);
  text("# of People Killed in Mass Shootings in October 2017", 170 ,30);
  
 

  

  //weekdays
  fill(167);
  textSize(20);
  text("SUN", 32, 95);
  textSize(20);
  text("MON", 132, 95);
  textSize(20);
  text("TUES", 232, 95);
  textSize(20);
  text("WED",332,95);
  textSize(20);
  text("THURS",420,95);
  textSize(20);
  text("FRI",535,95);
  textSize(20);
  text("SAT",632,95);
  
 

  // Calendar grid 

vertical = 600/6;
hori = 700/7;

  while (vertical < width) {
    //fill(255);
    line(vertical, 0, vertical, height);
    vertical = vertical + space;
  }

  while (hori < height) {
    line(0, hori, width, hori);
    hori = hori + space;
  }
  grids.week(grids.getDays(), grids.grid);
}




//Cell Class
public class Cell {
  String [][] grid;
  private String [] days = {"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"};

  public Cell () {
    grid = new String[6][7];
    for (int row = 0; row < grid.length; row++) {
      for (int col = 0; col < grid[0].length; col++) {
        grid[row][col] = new String ();
      }
    }
  }
  public String[] getDays() {
    return days;
  }

  public void week(String[] days, String [][] grid) {
    for (int i = 0; i < days.length; i++) {
      for (int r = 0; r < grid.length; r++) {
        //System.out.print(days[i]);
      }
    }
  }
} 







//red for # killed (October 2017) 
//green for no murders
//starts on 24 and ends with 30 from previous month, 
//then number each box from there
//different shades of red = intensity of # of killed 
//the bigger the number, the brighter the red is
// <10 = Dark red = fill(127,0,0);
// >10 = bright red = fill(255,0,0);
//mouse hover then reveal the color? 
//calendar grid