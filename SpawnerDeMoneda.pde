class SpawnerDeMoneda{
  //private Moneda moneda;
  private Moneda[] monedas;
  //private Personaje personaje;
  
  public SpawnerDeMoneda(int cantMonedas){
    monedas = new Moneda[cantMonedas];
  }
  
  public void generarMonedas(){
    monedas[0] = new Moneda(new PVector(random(width), 0), new PVector(0,random(25,50)));
    monedas[2] = new Moneda(new PVector(random(width), 0), new PVector(0,random(25,50)));
    monedas[3] = new Moneda(new PVector(random(width), 0), new PVector(0,random(25,50)));
    monedas[1] = new Moneda(new PVector(random(width), 0), new PVector(0,random(25,50)));
  }
  
  public void visualizarMonedas(){
    for(Moneda m:monedas){
      if(m != null){
        m.display();
      }
    }
  }
  
  public void moverMonedas(int direccion){
    for(Moneda m:monedas){
      if(m != null){
       if(m.mover()){
         contador++;
       }
          
        
      }
    }
  }
  
  /*boolean isCollide(Moneda moneda){
    boolean isCollide = false;
    personaje = new Personaje();
    
    PVector vectorDireccion = PVector.sub(moneda.getPosicion(), personaje.getPosicion());
    float magnitud = vectorDireccion.mag();
    
    if(magnitud <= personaje.getLado() + moneda.getRadio()){
      isCollide = true; 
      println("choque we");
    }
    
    return isCollide;
  }*/

}
