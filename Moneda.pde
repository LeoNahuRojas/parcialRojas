class Moneda extends GameObject{
  private int radio;
  
  public Moneda(){};
  
  public Moneda(PVector posicion, PVector velocidad){
    this.posicion = posicion;
    this.velocidad = velocidad;
    radio = 25;
  }
  
  void display(){
    this.imagen = loadImage("moneda.png");
    imageMode(CENTER);
    image(this.imagen, this.posicion.x, this.posicion.y, 50, 50);
  }
  
  boolean mover(){
      if(this.posicion.y<(height-100)){
        this.posicion.y+=this.velocidad.y;
      }
      return false;
  }
  
  public void rigiBodyMoneda(){
    circle(this.posicion.x,this.posicion.y,radio);
  }  
  
  public int getRadio(){
    return this.radio;
  }
  
}
