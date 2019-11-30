class Checkout {
  String confirmez;
  String[] orderedItems;
  
  String chooseATime;
  
  String[] timeOptions;
  GDropList timeDropList;
  
  String commandez;
  GButton commandezBouton;
  
  Checkout() {
    confirmez = "Révisez et confirmez ou modifiez votre commande.";
    orderedItems = new String[] {"Céréales Anciens", "Raisin Canelle", "Plaine"};
    
    chooseATime = "Choisissez une heure :";
    timeOptions = new String[] {"2:00", "2:15", "2:30", "2:45", "3:00", "3:15", "3:30", "3:45", "4:00", "4:15", "4:30", "4:45", "5:00", "5:15", "5:30"};
    timeDropList = new GDropList(applet, 300.0, 485.0, 90.0, 105.0); 
    timeDropList.setItems(timeOptions, 0);
    timeDropList.setLocalColorScheme(9); //9
    
    commandez = "Confirmez votre commande";
    commandezBouton = new GButton(applet, 125, 620.0, width/2.0, 30, commandez);
    commandezBouton.setLocalColorScheme(8);
    commandezBouton.addEventHandler(applet, "commandezBouton_click");   
  }
  
  void confirmYourOrder() {
    textAlign(CENTER,CENTER);
    text(confirmez, 150.0, 170.0, 200.0, 100.0);
  }
  
  void orderDetails() {
    textAlign(LEFT);
    text(orderedItems[0], 150, 300);
    text(orderedItems[1], 150, 320);
    text(orderedItems[2], 150, 340);
    
    text("$1.99", 320, 300);
    text("$1.99", 320, 320);
    text("$1.99", 320, 340);
    
    text("Taxe d'État :   8.25%    $0.49", 150, 400);
    text("TOTALE :                     $6.46", 150, 430);
  }
  
  void chooseATime() {
    text(chooseATime, 125, 500);
  }
} // end of Checkout class
