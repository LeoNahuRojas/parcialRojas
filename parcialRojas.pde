private Moneda moneda;
private SpawnerDeMoneda spawnerDeMoneda;
PImage fondo;

void setup(){
  size(928,793);
  fondo = loadImage("Background.png");  
  background(fondo);
  spawnerDeMoneda = new SpawnerDeMoneda(4);
  spawnerDeMoneda.generarMonedas();
  moneda = new Moneda();
  moneda.setPosicion(new PVector(300,300));
}

void draw(){
  spawnerDeMoneda.visualizarMonedas();
  spawnerDeMoneda.moverMonedas(0);
}
