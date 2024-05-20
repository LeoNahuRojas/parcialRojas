private SpawnerDeMoneda spawnerDeMoneda;
private PImage fondo;
private Personaje personaje;
private JoyPad mando;

void setup(){
  frameRate(24);
  size(928,793);
  fondo = loadImage("Background.png");  
  spawnerDeMoneda = new SpawnerDeMoneda(4);
  spawnerDeMoneda.generarMonedas();
  mando = new JoyPad();
  personaje = new Personaje(new PVector(450,660), new PVector(50,0));
}

void draw(){
  background(fondo);
  personaje.display();
  spawnerDeMoneda.visualizarMonedas();
  spawnerDeMoneda.moverMonedas(0);
  if(mando.isLeftKey()){
    personaje.mover(0);
  }
  if(mando.isRightKey()){
    personaje.mover(1);
  }
}

public void keyPressed(){
  if( key == 'a'|| keyCode == LEFT){
    mando.setLeftKey(true);
  }
  if( key == 'd'|| keyCode == RIGHT){
    mando.setRightKey(true);
  }
}
public void keyReleased(){
  if( key == 'a'|| keyCode == LEFT){
    mando.setLeftKey(false);
  }
  if( key == 'd'|| keyCode == RIGHT){
    mando.setRightKey(false);
  }
}
