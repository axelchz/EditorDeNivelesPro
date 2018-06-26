import controlP5.*;

//Declarando Variables de Objetos
Data data;

DrawCanvas canvas;
ControlP5 ui;
Slider slider;

/*........................................................*/


//declarando  variables publicas del rgb y stroke weight para el Botón Capas
 public int rCapas;
 public int gCapas;
 public int bCapas;
 public int swCapas;
  /*........................................................*/
 
 
 //declarando  variables publicas del rgb y stroke weight para el Botón Colisiones
 public int rColisiones;
 public int gColisiones;
 public int bColisiones;
 public int swColisiones;
 /*........................................................*/
 
 
  //declarando  variables publicas del rgb y stroke weight para el Botón Escenas
 public int rEscenas;
 public int gEscenas;
 public int bEscenas;
 public int swEscenas;
  //declarando  variables publicas del rgb y stroke weight para el Botón Colisiones
   
 //declarando  variables publicas de las imagenes a utilizar en los botones
public PImage capas,colisiones, escenas,add,delete;
/*........................................................*/


void setup()
{
  size(1200,650);
  background(255,255,255);
  
  data = new Data();
  
 //Creación de Nuevos Objetos
  
  canvas = new DrawCanvas();
  ui= new ControlP5(this);
/*.................................................*/
  //Botones para la tarea. BORRAR DESPUÉS
  example();
  
  for (int i = 0; i < data.layers.size(); i++)
  {
    ui.addButton(data.layers.get(i).name)
      .setPosition(50, 150 + 40 * i)
      .setSize(300,30);
  }
  
  ui.addTextarea("txt")
    .setPosition(420,20)
    .setSize(200,200)
    .setFont(createFont("arial",12))
    .setLineHeight(14)
    .setColor(color(128))
    .setColorBackground(color(255,100))
    .setColorForeground(color(255,100))
    .setText("Click + arrastrar para mover sprites. Click en las capas para mostrar qué sprites pertenecen a qué capas.")
    ;
  
  
  //Creando Slider y sus propiedades
  slider = ui.addSlider("",100,0).setPosition(canvas.coordsSliderX,canvas.coordsSliderY).setRange(0,100).scrolled(0);
  slider.setSize(240,30);
  slider.setScrollSensitivity(.1);
  

  
   /*........................................................*/
  
  //valor incial del rgb y el stroke weight del boton capas
  rCapas=20;
  gCapas=40;
  bCapas=90;
  swCapas=5;
  /*.................................................*/
  
  
  //valor incial del rgb y el stroke weight del boton colisiones
  rColisiones=56;
  gColisiones=96;
  bColisiones=151;
  swColisiones=1;
  /*.................................................*/
  
  //valor incial del rgb y el stroke weight del boton Escena
  rEscenas=56;
  gEscenas=96;
  bEscenas=151;
  swEscenas=1;
  /*.................................................*/
  
 

  
  
  
  //Cargando imagenes y cambiando de tamaños
  capas = loadImage("capas.png");
  capas.resize(30,30);
  
  colisiones=loadImage("colision.png");
  colisiones.resize(35,35);
  
  escenas=loadImage("escena.png");
  escenas.resize(26,26);
  
  add=loadImage("addDocument.png");
  add.resize(30,30);
  
  delete=loadImage("delete.png");
  delete.resize(30,30);
   /*........................................................*/
  
  
  highlightedAssets = new ArrayList<Data.InstancedAsset>();
}

Data.InstancedAsset activeAsset;
ArrayList <Data.InstancedAsset> highlightedAssets;

//Dibujando en Ventana
void draw()
{
  background(255);
  canvas.draw();
  canvas.mouseClicked(); 
  
  
  //Dibujar instancias de asset según orden de capas
  for(Data.Layer layer : data.layers)
  {
    for(Data.InstancedAsset asset : layer.instancedAssets)
    {
      Boolean highlight = false;
      for (Data.InstancedAsset tempAsset : highlightedAssets)
      {
        if (asset == tempAsset) highlight = true;
      }
      if (asset == activeAsset) highlight = true;
      if (highlight) tint(0, 153, 204);
      image(asset.rootAsset.diffuseTexture, asset.position.x, asset.position.y);
      noTint();
    }
  }
}


//Codigo spaghet BORRAR TRAS ENTREGA

void mousePressed()
{
  activeAsset = checkAssetMouse();
  
  highlightedAssets = new ArrayList<Data.InstancedAsset>();
}

void mouseDragged()
{
  if (activeAsset != null)
  {
    activeAsset.position = new PVector(activeAsset.position.x + mouseX - pmouseX, activeAsset.position.y + mouseY - pmouseY);
  }
}

void mouseReleased()
{
  if (activeAsset != null)
  {
    activeAsset = null;
  }
}

public Data.InstancedAsset checkAssetMouse()
{
  for (int i = data.layers.size() - 1; i >= 0; i--)
  {
    for (Data.InstancedAsset asset : data.layers.get(i).instancedAssets)
    {
      if (abs(asset.position.x + asset.getWidth() / 2 - mouseX) < asset.getWidth() / 2 &&
        abs(asset.position.y + asset.getHeight() / 2 - mouseY) < asset.getHeight() / 2)
      {
        return asset;
      }
    }
  }
  return null;
}

public void Capa1() {
  highlightedAssets = data.layers.get(0).instancedAssets;
}

public void Capa2() {
  highlightedAssets = data.layers.get(1).instancedAssets;
}

public void Capa3() {
  highlightedAssets = data.layers.get(2).instancedAssets;
}
