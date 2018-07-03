public class Data
{
  String name;
  int idCount;
  
  ArrayList<Asset> assets;
  ArrayList<Room> rooms;
  

  
  public Room addRoom(String name)
  {
    Room tempRoom = new Room(name);
    
    rooms.add(tempRoom);
    
    return tempRoom;
  }
  
  public Asset addAsset(String name, String diffusePath)
  {
    Asset tempAsset = new Asset(idCount, name, diffusePath);
    
    idCount++;
    assets.add(tempAsset);
    
    return tempAsset;
  }
  
  JSONObject toJSONObject()
  {
    JSONObject dataInJSON = new JSONObject();
    
    JSONArray assetsInJSON = new JSONArray();
    JSONArray roomsInJSON = new JSONArray();
    
    dataInJSON
      .setString("name", name)
      ;
    
    for (int i = 0; i < assets.size(); i++)
    { assetsInJSON.setJSONObject(i, assets.get(i).toJSONObject()); }
    
    for (int i = 0; i < rooms.size(); i++)
    { roomsInJSON.setJSONObject(i, rooms.get(i).toJSONObject()); }
    
    dataInJSON
      .setJSONArray("assets", assetsInJSON)
      .setJSONArray("rooms", roomsInJSON)
      ;
    
    return dataInJSON;
  }
  
  void createJSONDocument(String path)
  {
    saveJSONObject(toJSONObject(), path);
  }
  
  
  /*-----------------------------------------------------
                  CLASES   DE   OBJETOS
  -----------------------------------------------------*/
  
  //CUARTOS
  class Room 
  {
    String name;
    PImage thumbnail;
    
    ArrayList<LayerGroup> layerGroups;
    MainCollision mainCollision;
    ArrayList<CommonCollision> commonCollisions;
    MainScene mainScene;
    ArrayList<CommonScene> commonScenes;
    
    Room(String name)
    {
      this.name = name;
      
      //Declarar mainCollision & mainScene aquí
      
      commonCollisions = new ArrayList<CommonCollision>();
      commonScenes = new ArrayList<CommonScene>();
    }
    
    JSONObject toJSONObject()
    {
      JSONObject roomInJSON = new JSONObject();
      
      JSONArray layerGroupsInJSON = new JSONArray();
      JSONObject mainCollisionInJSON = new JSONObject();
      JSONArray commonCollisionsInJSON = new JSONArray();
      JSONObject mainSceneInJSON = new JSONObject();
      JSONArray commonScenesInJSON = new JSONArray();
      
      roomInJSON
        .setString("name", name)
        ;
      
      for (int i = 0; i < layerGroups.size(); i++)
      { layerGroupsInJSON.setJSONObject(i, layerGroups.get(i).toJSONObject()); }
      
      mainCollisionInJSON = mainCollision.toJSONObject();
      
      for (int i = 0; i < commonCollisions.size(); i++)
      { commonCollisionsInJSON.setJSONObject(i, commonCollisions.get(i).toJSONObject()); }
      
      mainSceneInJSON = mainScene.toJSONObject();
      
      for (int i = 0; i < commonScenes.size(); i++)
      { commonScenesInJSON.setJSONObject(i, commonScenes.get(i).toJSONObject()); }
      
      roomInJSON
        .setJSONArray("layerGroups", layerGroupsInJSON)
        .setJSONObject("mainCollision", mainCollisionInJSON)
        .setJSONArray("commonCollisions", commonCollisionsInJSON)
        .setJSONObject("mainScene", mainSceneInJSON)
        .setJSONArray("commonScenes", commonScenesInJSON)
        ;
      
      return roomInJSON;
    }
  }
  
  
  //ASSETS
  class Asset 
  {
    int id;
    String name;
    String diffusePath;
    PImage diffuseTexture;
    
    ArrayList<Sprite> sprites;
    
    Asset(int id, String name, String diffusePath)
    {
      this.id = id;
      this.name = name;
      
      diffuseTexture = loadImage(diffusePath);
      
      if (diffuseTexture == null)
        throw new IllegalArgumentException("Invalid path");
      
      this.diffusePath = diffusePath;
    }
    
    JSONObject toJSONObject()
    {
      JSONObject assetInJSON = new JSONObject();
      
      assetInJSON
        .setInt("id", id)
        .setString("name", name)
        .setString("diffusePath", diffusePath);
        ;
      
      return assetInJSON;
    }
  }
  
  
  //CAPAS
  abstract class Layer
  {
    String name;
    Boolean unlocked, visible;
    
    Layer(String name, Boolean unlocked, Boolean visible)
    {
      this.name = name;
      this.unlocked = unlocked;
      this.visible = visible;
    }
    
    Layer(String name)
    {
      this(name, false, false);
    }
    
    JSONObject toJSONObject()
    {
      JSONObject layerInJSON = new JSONObject();
      
      layerInJSON
        .setString("name", name)
        .setBoolean("unlocked", unlocked)
        .setBoolean("visible", visible)
        ;
      
      return layerInJSON;
    }
  }
  
  class LayerGroup extends Layer
  {
    ArrayList<CommonLayer> commonLayers;
    
    LayerGroup(String name, Boolean unlocked, Boolean visible)
    { super(name, unlocked, visible); commonLayers = new ArrayList<CommonLayer>(); }
    
    LayerGroup(String name)
    { this(name, false, false); }
    
    JSONObject toJSONObject()
    {
      JSONObject layerGroupInJSON = super.toJSONObject();
      
      JSONArray commonLayersInJSON = new JSONArray();
      
      for (int i = 0; i < commonLayers.size(); i++)
      { commonLayersInJSON.setJSONObject(i, commonLayers.get(i).toJSONObject()); }
      
      layerGroupInJSON.setJSONArray("commonLayers", commonLayersInJSON);
      
      return layerGroupInJSON;
    }
  }
  
  class CommonLayer extends Layer
  {
    ArrayList<Sprite> sprites;
    
    CommonLayer(String name, Boolean unlocked, Boolean visible)
    { super(name, unlocked, visible); sprites = new ArrayList<Sprite>(); }
    
    CommonLayer(String name)
    { this(name, false, false); }
    
    JSONObject toJSONObject()
    {
      JSONObject commonLayerInJSON = super.toJSONObject();
      
      JSONArray spritesInJSON = new JSONArray();
      
      for (int i = 0; i < sprites.size(); i++)
      { spritesInJSON.setJSONObject(i, sprites.get(i).toJSONObject()); }
      
      commonLayerInJSON.setJSONArray("sprites", spritesInJSON);
      
      return commonLayerInJSON;
    }
  }
  
  
  //SPRITES
  class Sprite
  {
    PVector position;
    float rotation;
    
    Asset rootAsset;
    CommonLayer rootLayer;
    
    Sprite(PVector position, Asset rootAsset, CommonLayer rootLayer)
    {
      this.position = position;
      this.rootAsset = rootAsset;
      this.rootLayer = rootLayer;
    }
    
    JSONObject toJSONObject()
    {
      JSONObject spriteInJSON = new JSONObject();
      
      spriteInJSON
        .setInt("assetId", rootAsset.id)
        //PVector position(and more?) goes here
        .setFloat("rotation", rotation)
        ;
      
      return spriteInJSON;
    }
  }
  
  
  //COLISIONES
  abstract class Collision
  {
    String name;
    Boolean unlocked, visible;
    
    ArrayList<PVector> dots;
    
    Collision(String name, Boolean unlocked, Boolean visible, ArrayList<PVector> dots)
    {
      this.name = name;
      this.unlocked = unlocked;
      this.visible = visible;
      this.dots = dots;
    }
    
    Collision(String name)
    {
      this(name, false, false, new ArrayList<PVector>());
    }
    
    JSONObject toJSONObject()
    {
      JSONObject collisionInJSON = new JSONObject();
      JSONArray dotsInJSON = new JSONArray();
      
      collisionInJSON
        .setString("name", name)
        .setBoolean("unlocked", unlocked)
        .setBoolean("visible", visible)
        ;
      
      for (int i = 0; i < dots.size(); i++)
      {
        JSONObject dotInJSON = new JSONObject();
        
        dotInJSON
          .setFloat("X", dots.get(i).x)
          .setFloat("Y", dots.get(i).y)
          ;
        
        dotsInJSON.setJSONObject(i, dotInJSON);
      }
      
      collisionInJSON.setJSONArray("Dots", dotsInJSON);
      
      return collisionInJSON;
    }
  }
  
  class MainCollision extends Collision
  {
    MainCollision(String name, Boolean unlocked, Boolean visible, ArrayList<PVector> dots)
    { super(name, unlocked, visible, dots); }
    
    MainCollision(String name)
    { super(name); }
  }
  
  class CommonCollision extends Collision
  {
    CommonCollision(String name, Boolean unlocked, Boolean visible, ArrayList<PVector> dots)
    { super(name, unlocked, visible, dots); }
    
    CommonCollision(String name)
    { super(name); }
  }
  
  
  //ESCENAS
  abstract class Scene
  {
    final PVector defaultDimensions = new PVector(10, 10);
    
    String name;
    Boolean unlocked, visible;
    PVector position;
    
    Scene(String name, Boolean unlocked, Boolean visible, PVector position)
    {
      this.name = name;
      this.unlocked = unlocked;
      this.visible = visible;
      this.position = position;
    }
    
    Scene(String name)
    {
      this(name, false, false, new PVector());
    }
    
    JSONObject toJSONObject()
    {
      JSONObject sceneInJSON = new JSONObject();
      JSONObject positionInJSON = new JSONObject();
      
      sceneInJSON
        .setString("name", name)
        .setBoolean("unlocked", unlocked)
        .setBoolean("visible", visible)
        ;
        
      positionInJSON
        .setFloat("X", position.x)
        .setFloat("Y", position.y)
        ;
      
      sceneInJSON.setJSONObject("position", positionInJSON);
      
      return sceneInJSON;
    }
  }
  
  class MainScene extends Scene
  {
    PVector dimensions;
    
    //Constructor completo para cargar y copiar
    MainScene(String name, Boolean unlocked, Boolean visible, PVector position, PVector dimensions)
    {
      super(name, unlocked, visible, position);
      this.dimensions = dimensions;
    }
    
    MainScene(String name)
    {
      super(name);
      dimensions = new PVector(defaultDimensions.x, defaultDimensions.y);
    }
    
    JSONObject toJSONObject()
    {
      JSONObject mainSceneInJSON = super.toJSONObject();
      JSONObject dimensionsInJSON = new JSONObject();
      
      dimensionsInJSON
        .setFloat("X", dimensions.x)
        .setFloat("Y", dimensions.y)
        ;
      
      mainSceneInJSON.setJSONObject("dimensions", dimensionsInJSON);
      
      return mainSceneInJSON;
    }
  }
  
  class CommonScene extends Scene
  {
    float size;
    
    //Constructor completo para cargar y copiar
    CommonScene(String name, Boolean unlocked, Boolean visible, PVector position, float size)
    {
      super(name, unlocked, visible, position);
      this.size = size;
    }
    
    JSONObject toJSONObject()
    {
      JSONObject commonSceneInJSON = super.toJSONObject();
      
      commonSceneInJSON
        .setFloat("size", size)
        ;
        
      return commonSceneInJSON;
    }
  }
}
