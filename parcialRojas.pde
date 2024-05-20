private SpawnerDeMoneda spawnerDeMoneda;
private PImage fondo;
private Personaje p;
private JoyPad mando;
int contador;

void setup(){
  frameRate(24);
  size(928,793);
  fondo = loadImage("Background.png");  
  spawnerDeMoneda = new SpawnerDeMoneda(4);
  spawnerDeMoneda.generarMonedas();
  contador = 0;
  mando = new JoyPad();
  p = new Personaje(new PVector(450,660), new PVector(50,0));
}

void draw(){
  background(fondo);
  p.display();
  spawnerDeMoneda.visualizarMonedas();
  spawnerDeMoneda.moverMonedas(0);
  mostrarContador();
  if(mando.isLeftKey()){
    p.mover(0);
  }
  if(mando.isRightKey()){
    p.mover(1);
  }
  isCollide();
}

void mostrarContador(){
  fill(255);
  textSize(32);
  text("contador: " + contador, 10, 30);
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

boolean isCollide(){
    boolean isCollide = false;
    for (int i = 0; i < 4; i++) {
      PVector vectorDireccion = PVector.sub(spawnerDeMoneda.monedas[i].getPosicion(), p.getPosicion());
      float magnitud = vectorDireccion.mag();
    
      if(magnitud <= p.getLado() + spawnerDeMoneda.monedas[i].getRadio()){
        isCollide = true; 
        println("choque we");
        contador++;
        spawnerDeMoneda.monedas[i].setPosicion(new PVector(random(width),0));
      }
    }
    return isCollide;
  }
