import controlP5.*;



class VentanaAssets
{
  
     
     public PGraphics ventanaAssets,bufferNombre;
     
     public int coordsVentanaAssetsX=anchoAplicacion-anchoAplicacion/5 ;
     public int coordsVentanaAssetsY=0 ;
     public int coordsBufferNombreX=coordsVentanaAssetsX;
     public int coordsBufferNombreY=coordsVentanaAssetsY;
     
     
     public int anchoVentanaAssets=anchoAplicacion/5;
     public int altoVentanaAssets= altoAplicacion-(2*altoAplicacion/3 );
     public int anchoBufferNombre= anchoAplicacion/5;
     public int altoBufferNombre = 30;


    public VentanaAssets()
    {
      ventanaAssets=createGraphics(anchoVentanaAssets,altoVentanaAssets);
      bufferNombre=createGraphics(anchoBufferNombre,altoBufferNombre);

      
    }




void draw()
{
  
  ventanaAssets.beginDraw();
  ventanaAssets.background(255,255,125);
  ventanaAssets.fill(255,255,125);
  ventanaAssets.endDraw();
  image(ventanaAssets, coordsVentanaAssetsX, coordsVentanaAssetsY);
  
  
  
  bufferNombre.beginDraw();
  bufferNombre.background(0,0,0);
  bufferNombre.fill(255,255,255);
  bufferNombre.textSize(anchoBufferNombre/16);
  PFont font1;
  font1=loadFont("AGaramondPro-Bold-18.vlw");
  textFont(font1);
  bufferNombre.text(" ASSETS ",120,20);
  bufferNombre.endDraw();
  image(bufferNombre,coordsBufferNombreX,coordsBufferNombreY );
  
 
  

}



}
