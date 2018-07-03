import controlP5.*;



class VentanaCuartos
{
  
     
     public PGraphics ventanaCuartos,bufferNombre;
     
     public int coordsVentanaCuartosX=0 ;
     public int coordsVentanaCuartosY=0 ;
     public int coordsBufferNombreX=coordsVentanaCuartosX;
     public int coordsBufferNombreY=coordsVentanaCuartosY;
     
     
     public int anchoVentanaCuartos=anchoAplicacion/5;
     public int altoVentanaCuartos= altoAplicacion-(2*altoAplicacion/3 );
     public int anchoBufferNombre= anchoAplicacion/5;
     public int altoBufferNombre = 30;


    public VentanaCuartos()
    {
      ventanaCuartos=createGraphics(anchoVentanaCuartos,altoVentanaCuartos);
      bufferNombre=createGraphics(anchoBufferNombre,altoBufferNombre);

      
    }




void draw()
{
  
  ventanaCuartos.beginDraw();
  ventanaCuartos.background(0,255,0);
  ventanaCuartos.fill(35,192,84);
  ventanaCuartos.rect(coordsVentanaCuartosX,coordsVentanaCuartosY,anchoVentanaCuartos,altoVentanaCuartos);
  ventanaCuartos.strokeWeight(8);
  ventanaCuartos.endDraw();
  image(ventanaCuartos, coordsVentanaCuartosX, coordsVentanaCuartosY);
  
  
  
  bufferNombre.beginDraw();
  bufferNombre.background(0,0,0);
  bufferNombre.fill(255,255,255);
  bufferNombre.textSize(anchoBufferNombre/16);
  PFont font1;
  font1=loadFont("AGaramondPro-Bold-18.vlw");
  textFont(font1);
  bufferNombre.text(" CUARTOS ",100,20);
  bufferNombre.endDraw();
  image(bufferNombre,coordsBufferNombreX,coordsBufferNombreY );
  

}





}
