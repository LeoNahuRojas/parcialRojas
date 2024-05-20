class Moneda extends GameObject{
  
  public Moneda(){};
  
  public Moneda(PVector posicion, PVector velocidad){
    this.posicion = posicion;
    this.velocidad = velocidad;
  }
  
  void display(){
    this.imagen = loadImage("moneda.png");
    imageMode(CENTER);
    image(this.imagen, this.posicion.x, this.posicion.y, 50, 50);
  }
  
  void mover(){
    
  }
  
}
