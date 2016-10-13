import g4p_controls.*;
GTextField textField;
GButton button;

public void setup(){
  size(300,300);
  textField = new GTextField(this, 10, 100, 100, 100);
  button = new GButton(this, 200, 100, 100, 100, "press me!");
}

public void draw(){
  
}

public void handleButtonEvents(GButton b, GEvent event){
  String text = textField.getText().trim().toLowerCase();
  
  if(text.equals("nugget")){
    textField.setText("correct");
  }
  else{
    textField.setText("incorrect");
  }
}