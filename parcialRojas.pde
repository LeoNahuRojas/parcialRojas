private SpawnerDeMoneda spawnerDeMoneda;
private PImage fondo;

void setup(){
  size(928,793);
  fondo = loadImage("Background.png");  
  spawnerDeMoneda = new SpawnerDeMoneda(4);
  spawnerDeMoneda.generarMonedas();
}

void draw(){
  background(fondo);
  spawnerDeMoneda.visualizarMonedas();
  spawnerDeMoneda.moverMonedas(0);
}
