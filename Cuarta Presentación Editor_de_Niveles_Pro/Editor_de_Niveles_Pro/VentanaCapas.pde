


   
class VentanaCapas
{
  public PGraphics buffer1 , buffer2, buffer3, buffer4, bufferVentana1;
  
  //Varias publicas de todas las coordenadas de lso botones
   public int coordsVentana1X=0;
   public int coordsVentana1Y=altoAplicacion/3 ;
   public int buffer1X=0;
   public int buffer1Y=altoAplicacion/3;


   public int coordsSliderX=anchoAplicacion/12;
   public int coordsSliderY=altoAplicacion/3+80;

  
   
   /*..........................................*/
   
   //ancho y largo delos canvas los canvas
   
  public int anchoBufferVentana1 =anchoAplicacion/5;
  public int altoBufferVentana1 = altoAplicacion-(altoAplicacion/3 );
  public int anchoBuffer1 = anchoAplicacion/5;
  public int altoBuffer1=30;
  public int anchoBuffer3= anchoAplicacion/5-20;
  public int altoBuffer3=30;
  public int anchoBuffer4=anchoAplicacion/5-20;
  public int altoBuffer4=altoAplicacion-(altoAplicacion/2+60);
  
  
  
  
 
  public int anchoRectVentana1=anchoAplicacion/5;
  public int altoRectVentana1=altoAplicacion-(altoAplicacion/3 +5);

  
  /*...............................................................*/


//Creación de los canvas
public VentanaCapas()
{
      bufferVentana1=createGraphics(anchoBufferVentana1,altoBufferVentana1);
      buffer1= createGraphics(anchoBuffer1,altoBuffer1);;
      buffer3= createGraphics(anchoBuffer3,altoBuffer3);
      buffer4= createGraphics(anchoBuffer4,altoBuffer4);
 
    
}

 /*...............................................................*/

//función para dibujar los canvas
void draw()
{
  
  bufferVentana1.beginDraw();
  bufferVentana1.fill(56,96,151);
  bufferVentana1.rect(0,0,anchoRectVentana1,altoRectVentana1);
  bufferVentana1.strokeWeight(5);
  bufferVentana1.endDraw();
  image(bufferVentana1, coordsVentana1X, coordsVentana1Y);
  
  //Canvas de la Parte superior
  buffer1.beginDraw();
  buffer1.background(0,0,0);
  buffer1.fill(255,255,255);
  buffer1.textSize(anchoBuffer1/17);
  PFont font1;
  font1=loadFont("AGaramondPro-Bold-18.vlw");
  textFont(font1);
  buffer1.text("CAPAS - COLISIONES - ESCENAS ",anchoBuffer1/15-10 ,20);
  buffer1.endDraw();
  image(buffer1,buffer1X,buffer1Y );

  
    /*........................................................*/
  
  //Canvas del Slider
  buffer3.beginDraw();
  buffer3.background(0,0,0);
  buffer3.fill(255,255,255);
  buffer3.textSize(anchoBuffer3/17);
  buffer3.textFont(font1);
  buffer3.text(" OPACIDAD ",7,22);
  buffer3.endDraw();
  image(buffer3,10,80+altoAplicacion/3);
   /*........................................................*/
  
  //Canvas del Area de Layer Capas-Colsiones -Escenas
  buffer4.beginDraw();
  buffer4.background(0,0,0);
  buffer4.endDraw();
  image(buffer4,10,altoAplicacion/2+30);
   /*........................................................*/

  

}

/*..........Fin del metodo Draw...........*/



}
/*..........Fin de la Clase DrawCanavs...........*/
