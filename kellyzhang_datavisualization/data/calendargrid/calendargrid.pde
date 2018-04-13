int vertical = 600/6;
int hori = 700/7;
int space = 100;
Cell grids = new Cell();
//int dayOfWeek;

 
void setup () {
  size(700, 700);
  background(255);
  //Calendar c = Calendar.getInstance();
  //dayOfWeek = c.get(Calendar.DAY_OF_WEEK);
  //println("Day of week is: " + dayOfWeek);
}
 
void draw () {
  
  
  while (vertical < width) {
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
        System.out.print(days[i]);
      }
    }
  }
}