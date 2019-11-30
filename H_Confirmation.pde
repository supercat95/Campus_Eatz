class Confirmation {
  String success;
  String merci;
  
  Confirmation() {
    success = "Succès! Votre commande sera prête à 3h30.";
    merci = "Merci pour votre affaire avec nous ! :)";
  }
  
  void successDialog() {
    textAlign(CENTER);
    text(success, width/4, 100.0, 250.0, 700.0);
    text(merci, width/4, 530.0, 250.0, 700.0);
  }
  
} // end of Confirmation class
