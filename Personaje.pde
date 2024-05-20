class Personaje extends GameObject{
  JoyPad joyPad;
  
  public Personaje(PVector posicion, PVector velocidad){
    this.posicion = posicion;
    this.velocidad = velocidad;
  }
  
  void display(){
    this.imagen = loadImage("personaje.png");
    imageMode(CENTER);
    image(this.imagen, this.posicion.x, this.posicion.y, 200, 200);
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
}
