class PlayButton extends View {
  int transitionValue; // status 0 non-active, 1 mouse pressing , 2 playing 
  Boolean value;
  
  PlayButton(float x_, float y_, float w_, float h_)
  {
    super(x_, y_, w_, h_);
    transitionValue = 0;
    value = false;
  }
  
  void drawContent()
  {
    fill(viewBackgroundColor);
    stroke(0);
    rect(0, 0, w, h);
    fill((transitionValue==0)?textColor:boldTextColor); 
    if (!value)
       text ("Play",30,5);
    else 
       text ("Playing...",10,5);
  }
  
  boolean contentPressed(float lx, float ly)
  {
    if (!value)
        transitionValue = 1;
    return true;
  }
  
  boolean contentClicked(float lx, float ly)
  {
    if (!value){
        transitionValue = 2;
        value = true;
        startingTime = millis();
    }        
    return true;
  }
}
