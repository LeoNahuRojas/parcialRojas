class Personaje extends GameObject{
  JoyPad joyPad;
  //private int lado;
  //private Moneda moneda;
  
  public Personaje(){}
  
  public Personaje(PVector posicion, PVector velocidad){
    this.posicion = posicion;
    this.velocidad = velocidad;
    //lado = 200;
  }
  
  void display(){
    this.imagen = loadImage("personaje.png");
    imageMode(CENTER);
    image(this.imagen, this.posicion.x, this.posicion.y, 200, 200);
    //colision();
  }
  
  /*public void rigiBodyPersonaje(){
    rect(this.posicion.x,this.posicion.y,lado,lado);
  }*/
  
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
  
 /* public float obtenerDistancia(){
    moneda = new Moneda();
    float distancia = 0;
    if(moneda.getPosicion().y < height-100){
    float cateto1=this.posicion.x-moneda.getPosicion().x;
    float cateto2=this.posicion.y-moneda.getPosicion().y;
    distancia = sqrt(pow(cateto1,2)+pow(cateto2,2));
    }
    return distancia;
  }
  
  public void colision(){
    if(obtenerDistancia() < this.lado){
      println("choque wed");
    }
  }
  
  public int getLado(){
    return this.lado;
  }
  
  */
}
