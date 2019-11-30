class Checkout {
  String confirmez;
  String[] orderedItems;
  
  String chooseATime;
  
  String[] timeOptions;
  GDropList timeDropList;
  
  String commandez;
  GButton commandezBouton;
  
  GToggleGroup checkOrNot;
  GCheckbox[] checkboxes;
  String[] paymentOptions;
  float yPos;
  
  String payment;
  
  Checkout() {
    confirmez = "Révisez et confirmez ou modifiez votre commande.";
    orderedItems = new String[] {"Céréales Anciens", "Raisin Canelle", "Plaine"};
    
    chooseATime = "Choisissez une heure :";
    timeOptions = new String[] {"2:00", "2:15", "2:30", "2:45", "3:00", "3:15", "3:30", "3:45", "4:00", "4:15", "4:30", "4:45", "5:00", "5:15", "5:30"};
    timeDropList = new GDropList(applet, 300.0, 480.0, 90.0, 105.0); 
    timeDropList.setItems(timeOptions, 0);
    timeDropList.setLocalColorScheme(9); //9
    
    commandez = "Confirmez votre commande";
    commandezBouton = new GButton(applet, 125, 620.0, width/2.0, 30, commandez);
    commandezBouton.setLocalColorScheme(8);
    commandezBouton.addEventHandler(applet, "commandezBouton_click");  
    
    yPos = 540;
    payment = "Choisissez une option de paiement :";
    paymentOptions = new String[] {"Flex", "Votre compte étudiant", "Une carte"}; 
    checkOrNot = new GToggleGroup();
    
    checkboxes = new GCheckbox[3];  
    for (int i = 0; i < checkboxes.length; i++) {
      checkboxes[i] = new GCheckbox(applet, 125.0, yPos, width/2.0, 20.0, paymentOptions[i]);
      yPos = yPos + 20.0;
      checkboxes[i].setLocalColor(2,#030303);
      
      checkOrNot.addControl(checkboxes[i]);
      checkboxes[i].setSelected(false);
    } 
  }
  
  void confirmYourOrder() {
    textAlign(CENTER,CENTER);
    text(confirmez, 150.0, 170.0, 200.0, 100.0);
  }
  
  void orderDetails() {
    textAlign(LEFT);
    text(orderedItems[0], 150, 285);
    text(orderedItems[1], 150, 305);
    text(orderedItems[2], 150, 325);
    
    text("$1.99", 320, 285);
    text("$1.99", 320, 305);
    text("$1.99", 320, 325);
    
    text("Nos frais :    10.00%    $0.60", 150, 370);
    text("Taxe d'État :   8.25%    $0.54", 150, 395);    
    text("TOTALE :                     $7.11", 150, 445);
  }
  
  void chooseATime() {
    text(chooseATime, 125, 495);
  }
  
  void chooseAPaymentOption() {
    text(payment, 125, 530);
  }
} // end of Checkout class
