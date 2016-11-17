import g4p_controls.*;
import java.awt.Font;
GTextField username;
GPassword password ; 
GButton Button, Button1;
GLabel label;
String[] usernames;
String[] passwords;
boolean booleeen = false;

public void setup() {
  size(500, 500);
  background(0);
  surface.setTitle("Login Screen");
  Font font = new Font("DialogInput", Font.BOLD, 32);
  username = new GTextField(this, 100, 25, 150, 50);
  username.setFont(font);
  password = new GPassword(this, 100, 150, 150, 50);
  password.setFont(font);
  Button = new GButton(this, 100, 275, 150, 50, "Sign In");
  Button1 = new GButton(this, 300, 25, 150, 50, "Sign Up");
  Button1.setFont(new Font("DialogInput", Font.BOLD, 28));
  Button.setFont(new Font("DialogInput", Font.BOLD, 28));
  label = new GLabel(this, 100, 400, 150, 70);
  label.setFont(font);
  label.setOpaque(true);
  text("Username:", 15, 55);
  text("Password:", 15, 180);
  usernames = loadStrings("password.txt");
  passwords = loadStrings("passwordsss.txt");
}

public void draw() {
}

public void handleButtonEvents(GButton button, GEvent event ) {
  if (button == Button && event == GEvent.CLICKED) {
    label.setText("Account disabled");
    for ( int index = 0; index <= usernames.length && index<= passwords.length; index++ ) {
      if (username.getText().trim().equals(usernames[index]) && password.getPassword().trim().equals(passwords[index])) {
        label.setText("Signed in");
      }
    }
  }
}


public void addName() {
  String[]two = append(usernames, username.getText());
  saveStrings("password.txt", two);
  String[]three = append(passwords, password.getPassword());
  saveStrings("passwordsss.txt", three);
}

public void mousePressed() {
  float x = mouseX;
  float y = mouseY;
  if (x<=450 && x>=300 && y<=75 && y>=25 ) {
    addName();
  }
}