
class DrawCanvas
{
  public PGraphics buffer1 , buffer2, buffer3, buffer4,buttonCapas,
  buttonColisiones,buttonEscenas,buttonAdd,buttonDelete, bufferVentana1;
  
  
  //Varias publicas de todas las coordenadas de los botones
   public int coordsVentana1X=0;
   public int coordsVentana1Y=0;
   public int buffer1X=0;
   public int buffer1Y=0;
   public int buffer2X=0;
   public int buffer2Y=30;
   public int buffer3X=10;
   public int buffer3Y=80;
   public int buffer4X=10;
   public int buffer4Y=120;
   
   public int coordsButtonCapasX=0;
   public int coordsButtonCapasY=30;
   public int coordsButtonColisionesX=48;
   public int coordsButtonColisionesY=30;
   public int coordsButtonEscenasX=96;
   public int coordsButtonEscenasY=30;
   public int coordsButtonAddX=300;
   public int coordsButtonAddY=30;
   public int coordsButtonDeleteX=348;
   public int coordsButtonDeleteY=30;
   public int coordsSliderX=150;
   public int coordsSliderY=80;
   
   /*..........................................*/
  

//función para dibujar los canvas
public DrawCanvas()
{
      bufferVentana1=createGraphics(405,305);
      buffer1= createGraphics(400,30);;
      buffer2= createGraphics(400,40);
      buffer3= createGraphics(380,30);
      buffer4= createGraphics(380,170);
      buttonCapas= createGraphics(50,40);
      buttonColisiones=createGraphics(50,40);
      buttonEscenas=createGraphics(50,40);
      buttonAdd=createGraphics(50,40);
      buttonDelete=createGraphics(50,40);
}



void draw()
{
  
  bufferVentana1.beginDraw();
  bufferVentana1.fill(56,96,151);
  bufferVentana1.rect(0,0,400,300);
  bufferVentana1.strokeWeight(5);
  bufferVentana1.endDraw();
  image(bufferVentana1, coordsVentana1X, coordsVentana1Y);
  
  //Canvas de la Parte superior
  buffer1.beginDraw();
  buffer1.background(0,0,0);
  buffer1.fill(255,255,255);
  buffer1.textSize(10);
  PFont font1;
  font1=loadFont("ACaslonPro-Bold-20.vlw");
  buffer1.textFont(font1);
  buffer1.text("CAPAS - COLISIONES - ESCENAS ",10,20);
  buffer1.endDraw();
  image(buffer1,buffer1X,buffer1Y);
  
  //Inicio Canvas de los Botones desplegables del Menú
  buffer2.beginDraw();
  
  //cuadrar imagen boton capas
  buttonCapas.beginDraw();
  buttonCapas.background(56,96,151);
  buttonCapas.rect(0, 0,47,37);
  buttonCapas.fill(rCapas,gCapas,bCapas);
  buttonCapas.stroke(0);
  buttonCapas.strokeWeight(swCapas);
  buttonCapas.image(capas,10,5); 
  buttonCapas.endDraw();
  /*......................*/
  
  
  //cuadrar imagen boton Colisiones
  buttonColisiones.beginDraw();
  buttonColisiones.background(56,96,151);
  buttonColisiones.rect(0,0,47,37);
  buttonColisiones.fill(rColisiones,gColisiones,bColisiones);
  buttonColisiones.stroke(0);
  buttonColisiones.strokeWeight(swColisiones);
  buttonColisiones.image(colisiones,5,1); 
  buttonColisiones.endDraw();
  /*......................*/
  
  
  //cuadrar imagen boton Escenas
  buttonEscenas.beginDraw();
  buttonEscenas.background(56,96,151);
  buttonEscenas.rect(0,0,47,37);
  buttonEscenas.fill(rEscenas,gEscenas,bEscenas);
  buttonEscenas.stroke(0);
  buttonEscenas.strokeWeight(swEscenas);
  buttonEscenas.image(escenas,10,6); 
  buttonEscenas.endDraw();
  /*......................*/
  
   //cuadrar imagen boton Add
  buttonAdd.beginDraw();
  buttonAdd.background(56,96,151);
  buttonAdd.rect(0,0,47,37);
  buttonAdd.fill(56,96,151);
  buttonAdd.stroke(0);
  buttonAdd.strokeWeight(1);
  buttonAdd.image(add,10,6); 
  buttonAdd.endDraw();
  /*......................*/
  
  
   //cuadrar imagen boton Add
  buttonDelete.beginDraw();
  buttonDelete.background(56,96,151);
  buttonDelete.rect(0,0,47,37);
  buttonDelete.fill(56,96,151);
  buttonDelete.stroke(0);
  buttonDelete.strokeWeight(1);
  buttonDelete.image(delete,9,4); 
  buttonDelete.endDraw();
  /*......................*/
  
  
  buffer2.background(56,96,151);
  buffer2.endDraw();
  /*Fin del Canvas del menú de Botones*/
  
 
  //Posiciones de los Canvas
  image(buffer2,buffer2X,buffer2Y);
  image(buttonCapas,coordsButtonCapasX,coordsButtonCapasY);
  image(buttonColisiones,coordsButtonColisionesX,coordsButtonColisionesY);
  image(buttonEscenas,coordsButtonEscenasX,coordsButtonEscenasY);
  image(buttonAdd,coordsButtonAddX,coordsButtonAddY);
  image(buttonDelete,coordsButtonDeleteX,coordsButtonDeleteY);
    /*........................................................*/
  
  //Canvas del Slider
  buffer3.beginDraw();
  buffer3.background(0,0,0);
  buffer3.fill(255,255,255);
  buffer3.textSize(10);
  buffer3.textFont(font1);
  buffer3.text(" OPACIDAD ",2,22);
  buffer3.endDraw();
  image(buffer3,buffer3X,buffer3Y);
   /*........................................................*/
  
  //Canvas del Area de las Capas-Colsiones -Escenas
  buffer4.beginDraw();
  buffer4.background(0,0,0);
  buffer4.endDraw();
  image(buffer4,buffer4X,buffer4Y);
   /*........................................................*/
  

  
  

}


void mouseClicked()
{
  //Condición Cambiar fill y stroke Weight del Botón Capas
  if( canvas.coordsButtonCapasX < mouseX && mouseX<canvas.coordsButtonCapasX+50 && 
  canvas.coordsButtonCapasY<mouseY && mouseY<canvas.coordsButtonCapasY+40)
  {
  if (mouseButton == LEFT)
    {
  buttonCapas.beginDraw();
  buttonCapas.background(56,96,151);
  buttonCapas.rect(0, 0,47,37);
  buttonCapas.fill(255,255,255);
  buttonCapas.stroke(0);
  buttonCapas.strokeWeight(5);
  buttonCapas.image(capas,10,5); 
  buttonCapas.endDraw();
  
  rColisiones=56;
  gColisiones=96;
  bColisiones=151;
  swColisiones=1;
  
  rCapas=20;
  gCapas=40;
  bCapas=90;
  swCapas=5;
  
  rEscenas=56;
  gEscenas=96;
  bEscenas=151;
  swEscenas=1;
  
    }
  }
 /*.......................................................................*/
  
  
  
  //Condición Cambiar fill y stroke Weight del Botón Colsiiones
   if( canvas.coordsButtonColisionesX < mouseX && mouseX<canvas.coordsButtonColisionesX+50 && 
  canvas.coordsButtonColisionesY<mouseY && mouseY<canvas.coordsButtonColisionesY+40)
  {
  if (mouseButton == LEFT)
    {
  buttonColisiones.beginDraw();
  buttonColisiones.background(56,96,151);
  buttonColisiones.rect(0, 0,47,37);
  buttonColisiones.fill(255,255,255);
  buttonColisiones.stroke(0);
  buttonColisiones.strokeWeight(5);
  buttonColisiones.image(capas,10,5); 
  buttonColisiones.endDraw();
  
  rColisiones=20;
  gColisiones=40;
  bColisiones=90;
  swColisiones=5;
  
  rCapas=56;
  gCapas=96;
  bCapas=151;
  swCapas=1;
  
  rEscenas=56;
  gEscenas=96;
  bEscenas=151;
  swEscenas=1;
  
    }
  }
/*.......................................................................*/
  
  
  
 //Condición Cambiar fill y stroke Weight del Botón Escenas
  if( canvas.coordsButtonEscenasX < mouseX && mouseX<canvas.coordsButtonEscenasX+50 && 
  canvas.coordsButtonEscenasY<mouseY && mouseY<canvas.coordsButtonEscenasY+40)
  {
  if (mouseButton == LEFT)
    {
  buttonEscenas.beginDraw();
  buttonEscenas.background(56,96,151);
  buttonEscenas.rect(0, 0,47,37);
  buttonEscenas.fill(255,255,255);
  buttonEscenas.stroke(0);
  buttonEscenas.strokeWeight(5);
  buttonEscenas.image(capas,10,5); 
  buttonEscenas.endDraw();
  
  rColisiones=56;
  gColisiones=96;
  bColisiones=151;
  swColisiones=1;
  
  rCapas=56;
  gCapas=96;
  bCapas=151;
  swCapas=1;
  
  rEscenas=20;
  gEscenas=40;
  bEscenas=90;
  swEscenas=5;
  
    }
  }
  /*.......................................................................*/
  
  
  
   //Condición Cambiar fill y stroke Weight del Botón Agregar
  if( canvas.coordsButtonAddX < mouseX && mouseX<canvas.coordsButtonAddX+50 && 
  canvas.coordsButtonAddY<mouseY && mouseY<canvas.coordsButtonAddY+40)
  {
  if (mouseButton == LEFT)
    {
  buttonAdd.beginDraw();
  buttonAdd.background(56,96,151);
  buttonAdd.rect(0, 0,47,37);
  buttonAdd.fill(255,255,255);
  buttonAdd.stroke(0);
  buttonAdd.strokeWeight(5);
  buttonAdd.image(capas,10,5); 
  buttonAdd.endDraw();
  
  
    }
  }
  
 /*.......................................................................*/
  
  
  
 //Condición Cambiar fill y stroke Weight del Botón Agregar
  if( canvas.coordsButtonDeleteX < mouseX && mouseX<canvas.coordsButtonDeleteX+50 && 
  canvas.coordsButtonDeleteY<mouseY && mouseY<canvas.coordsButtonDeleteY+40)
  {
  if (mouseButton == LEFT)
    {
  buttonDelete.beginDraw();
  buttonDelete.background(56,96,151);
  buttonDelete.rect(0, 0,47,37);
  buttonDelete.fill(255,255,255);
  buttonDelete.stroke(0);
  buttonDelete.strokeWeight(5);
  buttonDelete.image(capas,10,5); 
  buttonAdd.endDraw();
  
    }
  }
  
  
  
  if( canvas.coordsVentana1X < mouseX && mouseX<coordsVentana1X+405 && 
  canvas.coordsVentana1Y<mouseY && mouseY<canvas.coordsVentana1Y+305)
  {
  if (mouseButton == LEFT)
    {
    
   //coordsVentana1X=mouseX;
   //coordsVentana1Y=mouseY;
   /*
   buffer1X=+buffer1X;
   buffer1Y=10+buffer1Y;
   buffer2X=10+buffer2X;
   buffer2Y=10+buffer2Y;
   buffer3X=10+buffer3X;
   buffer3Y=10+buffer3Y;
   buffer4X=10+buffer4X;
   buffer4Y=10+buffer4Y;
   coordsButtonCapasX=10+coordsButtonCapasX;
   coordsButtonCapasY=10+coordsButtonCapasY;
   coordsButtonColisionesX=10+coordsButtonColisionesX;
   coordsButtonColisionesY=10+coordsButtonColisionesY;
   coordsButtonEscenasX=10+coordsButtonEscenasX;
   coordsButtonEscenasY=10+coordsButtonEscenasY;
   coordsButtonAddX=10+coordsButtonAddX;
   coordsButtonAddY=10+coordsButtonAddY;
   coordsButtonDeleteX=10+coordsButtonDeleteX;
   coordsButtonDeleteY=10+coordsButtonDeleteY;
   coordsSliderX=10+coordsSliderX;
   coordsSliderY=10+coordsSliderY;*/
   
   
   
    }
  }
  
  /*.......................................................................*/
  
}
/*..........Fin de la función MouseClicked...........*/


void moverVentanas ()
{

}


}
/*..........Fin de la Clase DrawCanavs...........*/
