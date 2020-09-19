/*
prendere una ciotola
 versare 250gr di farina
 versare 150gr di zucchero
 versare 1 bustina di lievito
 mescolare il tutto
 prendere una seconda ciotola
 versare 2 uova
 versare 180ml di latte
 versare 50gr di burro
 versare 1 bustina di vaniglia
 mescolare il tutto
 mescolare il contenuto delle due ciotole
 cuocere in forno a 180 gradi per 40 minuti
 */

void setup() {
  noLoop();
}

void draw() {
  prendere("una ciotola");
  versare("250gr", "farina");
  versare("150gr", "zucchero");
  versare("1 bustina", "lievito");
  mescolare("il contenuto");
  prendere("una seconda ciotola");
  versare("2", "uova");
  versare("180ml", "latte");
  versare("50gr", "burro");
  mescolare("il contenuto");
  mescolare("le due ciotole");
  cuocere("180", "40");  
}

void prendere(String oggetto) {
  println("prendere " + oggetto);
}

void versare(String quantita, String ingrediente) {
  println("versare " + quantita + " di " + ingrediente);
}

void mescolare(String contenuto) {
  println("mescolare " + contenuto);
}

void cuocere(String gradi, String tempo) {
  println("cuocere in forno a " +  gradi + " per " + tempo + " minuti");
  println("fatto!");
}
