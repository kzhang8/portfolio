void draw_square() {
  current_row = 32-date;
  if (current_row > 0 && current_row < 32) {
    String[] columns = split(rows[current_row], ',');

//green
    if (int(columns[1]) == 0) {
      println("true!");
      fill(0, 255, 0);
      int x_pos = (date%7) *100 ;
      int y_pos = (int(date/7) * 100) + 200;
      rect(x_pos, y_pos, 100, 100);
    }

//dark red    
    else if (int(columns[1])<10) {
      fill(127,0,0);
      int x_pos = (date%7) * 100;
      int y_pos = (int(date/7)*100) + 200;
      rect(x_pos,y_pos, 100,100);
    }
 //bright red   
    else {
      fill(255,0,0);
      int x_pos = (date%7) * 100;
      int y_pos = (int(date/7)*100) + 200;
      rect(x_pos,y_pos, 100,100);
    }
    
    
  
    
    
  }
  
  
  
}