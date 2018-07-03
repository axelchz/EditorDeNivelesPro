import controlP5.*;
import java.awt.Dimension;
import java.awt.Toolkit;



//Declarando Variables de Objetos

VentanaCuartos ventanaCuartos1;
VentanaAssets ventanaAssets1;
VentanaCapas ventanaCapas1;

ControlP5  buttomCapas,buttomColisiones,buttomEscenas;
ControlP5  buttomAddLayer,buttomAddCommonLayer,buttomDeleteLayer,buttomNext,buttomPreview;

ControlP5 contentSlider;
Slider slider;

ControlP5 buttomAddRooms,buttomDeleteRooms,buttomNextRooms,buttomPreviewRooms;

ControlP5 buttomAddAssets,buttomDeleteAssets,buttomNextAssets,buttomPreviewAssets;

ControlP5 buttomSave,buttomLoad;




/*........................................................*/

//Variables para obtener el alcho y largo de la aplicación
public int anchoAplicacion;
public int altoAplicacion;


  
   
 //declarando  variables publicas de las imagenes a utilizar en los botones
public PImage capasDefault,capasForeground,capasLabel,colisionDefault,colisionForeground,colisionLabel,sceneDefault,sceneForeground,sceneLabel;

public PImage addDefault,addForeground,addLabel,addLcDefault,addLcForeground,addLcLabel,deleteDefault,deleteForeground,deleteLabel;
public PImage nextDefault,nextForeground,nextLabel, previewDefault, previewForeground, previewLabel;

public PImage  addRoomsDefault,addRoomsForeground,addRoomsLabel,deleteRoomsDefault,deleteRoomsForeground,deleteRoomsLabel,
nextRoomsDefault,nextRoomsForeground,nextRoomsLabel,previewRoomsDefault,previewRoomsForeground,previewRoomsLabel;

public PImage  addAssetsDefault,addAssetsForeground,addAssetsLabel,deleteAssetsDefault,deleteAssetsForeground,deleteAssetsLabel,
nextAssetsDefault,nextAssetsForeground,nextAssetsLabel,previewAssetsDefault,previewAssetsForeground,previewAssetsLabel;

public PImage saveDefault,saveForeground,saveLabel,loadDefault,loadForeground,loadLabel;
/*........................................................*/


void setup()
{


  Toolkit tk = Toolkit.getDefaultToolkit();
  Dimension tamanio=tk.getScreenSize();
  int ancho = (int)tamanio.getWidth();
  int alto =  (int)tamanio.getHeight();
 
  anchoAplicacion = 28*ancho/30;
  altoAplicacion = 5*alto/6;
  
  surface.setSize( anchoAplicacion , altoAplicacion);

  
 //Creación de Nuevos Objetos
 
  ventanaCuartos1= new VentanaCuartos();
  ventanaAssets1 = new VentanaAssets();
  ventanaCapas1 = new VentanaCapas();

  buttomCapas = new ControlP5(this);
  buttomColisiones = new ControlP5(this);
  buttomEscenas = new ControlP5(this);
  
  buttomAddLayer= new ControlP5(this);
  buttomAddCommonLayer= new ControlP5(this);
  buttomDeleteLayer= new ControlP5(this);
  
  buttomNext= new ControlP5(this);
  buttomPreview= new ControlP5(this);
  
  
  contentSlider= new ControlP5(this);
   
  
  buttomAddRooms=new ControlP5(this);
  buttomDeleteRooms= new ControlP5(this);
  buttomNextRooms= new ControlP5(this);
  buttomPreviewRooms= new ControlP5(this);
  
  
  buttomAddAssets=new ControlP5(this);
  buttomDeleteAssets= new ControlP5(this);
  buttomNextAssets= new ControlP5(this);
  buttomPreviewAssets= new ControlP5(this);
  
  
  buttomSave=new ControlP5(this);
  buttomLoad=new ControlP5(this);
  
  
/*.................................................*/

  //Cargando imagenes y cambiando de tamaños

  capasDefault=loadImage("ButtomsVentana/capa/capaDefault.jpg");
  capasDefault.resize(50,40);
  
  capasForeground=loadImage("ButtomsVentana/capa/capaForeground.jpg");
  capasForeground.resize(50,40);
    
  capasLabel=loadImage("ButtomsVentana/capa/capaLabel.jpg");
  capasLabel.resize(50,40);
  
  /*.................................................*/

  
  colisionDefault=loadImage("ButtomsVentana/colisiones/colisionDefault.jpg");
  colisionDefault.resize(50,40);
  
  colisionForeground=loadImage("ButtomsVentana/colisiones/colisionForeground.jpg");
  colisionForeground.resize(50,40);
    
  colisionLabel=loadImage("ButtomsVentana/colisiones/colisionLabel.jpg");
  colisionLabel.resize(50,40);
  
   /*........................................................*/
  
  sceneDefault=loadImage("ButtomsVentana/escena/escenaDefault.jpg");
  sceneDefault.resize(50,40);
  
  sceneForeground=loadImage("ButtomsVentana/escena/escenaForeground.jpg");
  sceneForeground.resize(50,40);
  
  sceneLabel=loadImage("ButtomsVentana/escena/escenaLabel.jpg");
  sceneLabel.resize(50,40);
  
  
  /*........................................................*/
  
  
  
  addDefault=loadImage("ButtomsVentana/agregarLayer/addLayerDefault.jpg");
  addDefault.resize(50,40);
  
  addForeground=loadImage("ButtomsVentana/agregarLayer/addLayerForeground.jpg");
  addForeground.resize(50,40);
  
  addLabel=loadImage("ButtomsVentana/agregarLayer/addLayerLabel.jpg");
  addLabel.resize(50,40);
  
  
  /*........................................................*/
  
  
  addLcDefault=loadImage("ButtomsVentana/agregarLayerComun/addLcDefault.jpg");
  addLcDefault.resize(50,40);
  
  addLcForeground=loadImage("ButtomsVentana/agregarLayerComun/addLcForeground.jpg");
  addLcForeground.resize(50,40);
   
  addLcLabel=loadImage("ButtomsVentana/agregarLayerComun/addLcLabel.jpg");
  addLcLabel.resize(50,40);
  
  /*........................................................*/
  
  
  deleteDefault=loadImage("ButtomsVentana/eliminar/deleteDefault.jpg");
  deleteDefault.resize(50,40);
  
  
  deleteForeground=loadImage("ButtomsVentana/eliminar/deleteForeground.jpg");
  deleteForeground.resize(50,40);
  

  deleteLabel=loadImage("ButtomsVentana/eliminar/deleteLabel.jpg");
  deleteLabel.resize(50,40);
  
  /*........................................................*/
  
  nextDefault=loadImage("ButtomsVentana/next/NextDefault.jpg");
  nextDefault.resize(50,40);
  
  nextForeground=loadImage("ButtomsVentana/next/NextForeground.jpg");
  nextForeground.resize(50,40);
  
  nextLabel=loadImage("ButtomsVentana/next/NextLabel.jpg");
  nextLabel.resize(50,40);
  
  /*........................................................*/
  
  
  previewDefault=loadImage("ButtomsVentana/preview/PreviewDefault.jpg");
  previewDefault.resize(50,40);
  
  previewForeground=loadImage("ButtomsVentana/preview/PreviewForeground.jpg");
  previewForeground.resize(50,40);
  
  previewLabel=loadImage("ButtomsVentana/preview/PreviewLabel.jpg");
  previewLabel.resize(50,40);
  
  /*........................................................*/
  
  

  addRoomsDefault=loadImage("ButtomsRooms/ButtomsAddRooms/AddDefault.jpg");
  addRoomsDefault.resize(50,40);
  
  addRoomsForeground=loadImage("ButtomsRooms/ButtomsAddRooms/AddForeground.jpg");
  addRoomsForeground.resize(50,40);
  
  addRoomsLabel=loadImage("ButtomsRooms/ButtomsAddRooms/AddLabel.jpg");
  addRoomsLabel.resize(50,40);
  
  /*........................................................*/

  
  deleteRoomsDefault=loadImage("ButtomsRooms/ButtomsDeleteRooms/deleteDefault.jpg");
  deleteRoomsDefault.resize(50,40);
  
  deleteRoomsForeground=loadImage("ButtomsRooms/ButtomsDeleteRooms/deleteForeground.jpg");
  deleteRoomsForeground.resize(50,40);
  
  deleteRoomsLabel=loadImage("ButtomsRooms/ButtomsDeleteRooms/deleteLabel.jpg");
  deleteRoomsLabel.resize(50,40);
  
  /*........................................................*/

  
  nextRoomsDefault=loadImage("ButtomsRooms/ButtomsNextRooms/NextDefault.jpg");
  nextRoomsDefault.resize(50,40);
  
  nextRoomsForeground=loadImage("ButtomsRooms/ButtomsNextRooms/NextForeground.jpg");
  nextRoomsForeground.resize(50,40);
  
  nextRoomsLabel=loadImage("ButtomsRooms/ButtomsNextRooms/NextLabel.jpg");
  nextRoomsLabel.resize(50,40);
  
  /*........................................................*/

  
  previewRoomsDefault=loadImage("ButtomsRooms/ButtomsPreviewRooms/PreviewDefault.jpg");
  previewRoomsDefault.resize(50,40);
  
  previewRoomsForeground=loadImage("ButtomsRooms/ButtomsPreviewRooms/PreviewForeground.jpg");
  previewRoomsForeground.resize(50,40);
  
  previewRoomsLabel=loadImage("ButtomsRooms/ButtomsPreviewRooms/PreviewLabel.jpg");
  previewRoomsLabel.resize(50,40);
  
  
  /*........................................................*/


  addAssetsDefault=loadImage("ButtomsAssets/ButtomsAddAssets/AddDefault.jpg");
  addAssetsDefault.resize(50,40);
  
  addAssetsForeground=loadImage("ButtomsAssets/ButtomsAddAssets/AddForeground.jpg");
  addAssetsForeground.resize(50,40);
  
  addAssetsLabel=loadImage("ButtomsAssets/ButtomsAddAssets/AddLabel.jpg");
  addAssetsLabel.resize(50,40);
  
  /*........................................................*/
  
  
  
  deleteAssetsDefault=loadImage("ButtomsAssets/ButtomsDeleteAssets/deleteDefault.jpg");
  deleteAssetsDefault.resize(50,40);
  
  deleteAssetsForeground=loadImage("ButtomsAssets/ButtomsDeleteAssets/deleteForeground.jpg");
  deleteAssetsForeground.resize(50,40);
  
  deleteAssetsLabel=loadImage("ButtomsAssets/ButtomsDeleteAssets/deleteLabel.jpg");
  deleteAssetsLabel.resize(50,40);
  
  /*........................................................*/

 
  nextAssetsDefault=loadImage("ButtomsAssets/ButtomsNextAssets/NextDefault.jpg");
  nextAssetsDefault.resize(50,40);
  
  nextAssetsForeground=loadImage("ButtomsAssets/ButtomsNextAssets/NextForeground.jpg");
  nextAssetsForeground.resize(50,40);
  
  nextAssetsLabel=loadImage("ButtomsAssets/ButtomsNextAssets/NextLabel.jpg");
  nextAssetsLabel.resize(50,40);
  
  /*........................................................*/
 
  previewAssetsDefault=loadImage("ButtomsAssets/ButtomsPreviewAssets/PreviewDefault.jpg");
  previewAssetsDefault.resize(50,40);
  
  previewAssetsForeground=loadImage("ButtomsAssets/ButtomsPreviewAssets/PreviewForeground.jpg");
  previewAssetsForeground.resize(50,40);
  
  previewAssetsLabel=loadImage("ButtomsAssets/ButtomsPreviewAssets/PreviewLabel.jpg");
  previewAssetsLabel.resize(50,40);
  
  /*........................................................*/
  
  
   
  saveDefault=loadImage("ButtomSave/ButtomSaveDefault.jpg");
  saveDefault.resize(anchoAplicacion/10,40);
  
  saveForeground=loadImage("ButtomSave/ButtomSaveForeground.jpg");
  saveForeground.resize(anchoAplicacion/10,40);
  
  saveLabel=loadImage("ButtomSave/ButtomSaveLabel.jpg");
  saveLabel.resize(anchoAplicacion/10,40);
  
  /*........................................................*/
  
  
  loadDefault=loadImage("ButtomLoad/ButtomLoadDefault.jpg");
  loadDefault.resize(anchoAplicacion/10,40);
  
  loadForeground=loadImage("ButtomLoad/ButtomLoadForeground.jpg");
  loadForeground.resize(anchoAplicacion/10,40);
  
  loadLabel=loadImage("ButtomLoad/ButtomLoadLabel.jpg");
  loadLabel.resize(anchoAplicacion/10,40);
  
  /*........................................................*/
 
 
 
   buttomCapas.addButton("irSeccionCapas")
     .setPosition(10,30+altoAplicacion/3)
     .setSize(50,40)
     .setLabel("Capas")
     .setImages(capasDefault,capasForeground,capasLabel);
     
     
   buttomColisiones.addButton("irSeccionColisiones")
     .setPosition(60,altoAplicacion/3+30)
     .setSize(50,40)
     .setLabel("Colisiones")
     .setImages(colisionDefault,colisionForeground,colisionLabel);
     
   buttomEscenas.addButton("irSeccionEscenas")
     .setPosition(110,altoAplicacion/3+30)
     .setSize(50,40)
     .setLabel("Escenas")
     .setImages(sceneDefault,sceneForeground,sceneLabel);
     
  
   /*..........................................................................................................*/
     
   buttomAddLayer.addButton("addLayer")
     .setPosition(anchoAplicacion/5-155,altoAplicacion/3+120)
     .setSize(50,40)
     .setLabel("AddLay")
     .setImages(addDefault,addForeground,addLabel);
     
     
    buttomAddCommonLayer.addButton("addCommonLayer")
     .setPosition(anchoAplicacion/5-105,altoAplicacion/3+120)
     .setSize(50,40)
     .setLabel("AddCom")
     .setImages(addLcDefault,addLcForeground,addLcLabel);
     
     buttomDeleteLayer.addButton("deleteLayer")
     .setPosition(anchoAplicacion/5-55,altoAplicacion/3+120)
     .setSize(50,40)
     .setLabel("Delete")
     .setImages(deleteDefault,deleteForeground,deleteLabel);
     
     
     buttomNext.addButton("irSeccionAnterior")
     .setPosition(10,altoAplicacion/3+120)
     .setSize(50,40)
     .setLabel("Preview")
     .setImages(previewDefault,previewForeground,previewLabel);
     
     
      buttomPreview.addButton("irSeccionSiguiente")
     .setPosition(60,altoAplicacion/3+120)
     .setSize(50,40)
     .setLabel("Next")
     .setImages(nextDefault,nextForeground,nextLabel);
     
 
   /*..........................................................................................................*/
 
  //Creando Slider y Botones de cuartos sus propiedades
  slider = contentSlider.addSlider("",100,0).setPosition(ventanaCapas1.coordsSliderX,ventanaCapas1.coordsSliderY).setRange(0,100).scrolled(0);
  slider.setSize(ventanaCapas1.anchoBuffer1/2+17,30);
  slider.setScrollSensitivity(.1);
  
  
   /*..........................................................................................................*/

  buttomAddRooms.addButton("agregarCuartos")
     .setPosition(ventanaCuartos1.coordsVentanaCuartosX,ventanaCuartos1.coordsVentanaCuartosY+30)
     .setSize(50,40)
     .setLabel("Add")
     .setImages(addRoomsDefault,addRoomsForeground,addRoomsLabel);
     
  
  buttomDeleteRooms.addButton("eliminarCuartos")
     .setPosition(ventanaCuartos1.coordsVentanaCuartosX+50,ventanaCuartos1.coordsVentanaCuartosY+30)
     .setSize(50,40)
     .setLabel("Delete")
     .setImages(deleteRoomsDefault,deleteRoomsForeground,deleteRoomsLabel);
     
     
  buttomNextRooms.addButton("PassNextRooms")
     .setPosition(ventanaCuartos1.anchoVentanaCuartos-53,ventanaCuartos1.coordsVentanaCuartosY+30)
     .setSize(50,40)
     .setLabel("Next")
     .setImages(nextRoomsDefault,nextRoomsForeground,nextRoomsLabel);
     
     
  buttomPreviewRooms.addButton("PassPreviewRooms")
     .setPosition(ventanaCuartos1.anchoVentanaCuartos-103,ventanaCuartos1.coordsVentanaCuartosY+30)
     .setSize(50,40)
     .setLabel("Preview")
     .setImages(previewRoomsDefault,previewRoomsForeground,previewRoomsLabel);
      
  
    /*..........................................................................................................*/
    
     
  buttomAddAssets.addButton("agregarAssets")
     .setPosition(ventanaAssets1.coordsVentanaAssetsX,ventanaAssets1.coordsVentanaAssetsY+30)
     .setSize(50,40)
     .setLabel("Add")
     .setImages(addAssetsDefault,addAssetsForeground,addAssetsLabel);

  
  
  buttomDeleteAssets.addButton("eliminarAssets")
     .setPosition(ventanaAssets1.coordsVentanaAssetsX+50,ventanaAssets1.coordsVentanaAssetsY+30)
     .setSize(50,40)
     .setLabel("Delete")
     .setImages(deleteAssetsDefault,deleteAssetsForeground,deleteAssetsLabel);
     
     
  buttomNextAssets.addButton("PassNextAssets")
     .setPosition(anchoAplicacion-51,ventanaAssets1.coordsVentanaAssetsY+30)
     .setSize(50,40)
     .setLabel("Next")
     .setImages(nextAssetsDefault,nextAssetsForeground,nextAssetsLabel);
     
     
  buttomPreviewAssets.addButton("PassPreviewAssets")
     .setPosition(anchoAplicacion-101,ventanaAssets1.coordsVentanaAssetsY+30)
     .setSize(50,40)
     .setLabel("Preview")
     .setImages(previewAssetsDefault,previewAssetsForeground,previewAssetsLabel);
     
   /*..........................................................................................................*/
      
          
     buttomSave.addButton("Save")
     .setPosition(anchoAplicacion/2-200,0)
     .setSize(anchoAplicacion/10,40)
     .setLabel("Guardar")
     .setImages(saveDefault,saveForeground,saveLabel);
     
           
     buttomLoad.addButton("Load")
     .setPosition(anchoAplicacion/2-40,0)
     .setSize(anchoAplicacion/10,40)
     .setLabel("Cargar")
     .setImages(loadDefault,loadForeground,loadLabel);
     
     
   /*........................................................*/
    
  
  

  
}
/*.....................Fin de la función Setup...................................*/

//Dibujando en Ventana
void draw()
{ 
  
  background(255,255,255);
  ventanaCuartos1.draw();
  ventanaAssets1.draw();
  ventanaCapas1.draw();
  
  
  
  
}
