class Personaje extends GameObject{
  private int lado;
  
  public Personaje(){}
  
  public Personaje(PVector posicion, PVector velocidad){
    this.posicion = posicion;
    this.velocidad = velocidad;
    lado = 50;
  }
  
  void display(){
    this.imagen = loadImage("personaje.png");
    imageMode(CENTER);
    image(this.imagen, this.posicion.x, this.posicion.y, 200, 200);
  }
  
  public void rigiBodyPersonaje(){
    rect(this.posicion.x,this.posicion.y,lado,lado);
  }
  
  void mover(int dirección){
    switch(dirección){
      case 0:{
        this.posicion.x -= this.velocidad.x;
      break;
      }
      case 1:{
        this.posicion.x += this.velocidad.x;
      break;
      }
    }
  }
  public int getLado(){
    return this.lado;
  }
}
