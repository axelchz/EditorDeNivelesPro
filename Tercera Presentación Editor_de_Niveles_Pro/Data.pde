public class Data
{
  ArrayList<Asset> assets;
  ArrayList<Layer> layers;
  ArrayList<InstancedAsset> instancedAssets;
  
  public Data ()
  {
    assets = new ArrayList<Asset>();
    layers = new ArrayList<Layer>();
    instancedAssets = new ArrayList<InstancedAsset>();
  }
  
  //CREADORES DE OBJETOS
  public Asset addAsset(String name, String diffusePath)
  {
    Asset asset = new Asset(this, name, diffusePath);
    
    assets.add(asset);
    
    return asset;
  }
  
  public Layer addLayer(String name)
  {
    Layer layer = new Layer(this, name);
    
    layers.add(layer);
    
    return layer;
  }
  
  public InstancedAsset addInstancedAsset(Asset rootAsset, Layer rootLayer, PVector position)
  {
    InstancedAsset tempInstancedAsset = new InstancedAsset(this, rootAsset, rootLayer, position);
    
    instancedAssets.add(tempInstancedAsset);
    
    return tempInstancedAsset;
  }
  
  
  //BORRADORES DE OBJECTOS
  public void deleteInstancedAsset(InstancedAsset instancedAsset)
  {
    instancedAsset.rootAsset.instancedAssets.remove(instancedAsset);
    instancedAsset.rootLayer.instancedAssets.remove(instancedAsset);
    instancedAssets.remove(instancedAsset);
  }
  
  
  //OBJETOS
  public class Asset
  {
    Data rootData;
    ArrayList<InstancedAsset> instancedAssets;
    
    String name;
    String diffusePath;
    PImage diffuseTexture;
    
    protected Asset(Data data, String name, String diffusePath)
    {
      rootData = data;
      instancedAssets = new ArrayList<InstancedAsset>();
      
      this.name = name;
      this.diffusePath = diffusePath;
      diffuseTexture = loadImage(diffusePath);
    }
  }
  
  public class Layer
  {
    Data rootData;
    ArrayList<InstancedAsset> instancedAssets;
    
    String name;
    Boolean isActive;
    
    private Layer(Data data, String name)
    {
      rootData = data;
      instancedAssets = new ArrayList<InstancedAsset>();
      
      this.name = name;
      isActive = false;
    }
  }
  
  public class InstancedAsset
  {
    Data rootData;
    Asset rootAsset;
    Layer rootLayer;
    
    PVector position;
    Boolean isActive;
    
    private InstancedAsset(Data data, Asset rootAsset, Layer rootLayer, PVector position)
    {
      this.rootData = data;
      this.rootAsset = rootAsset;
      this.rootLayer = rootLayer;
      this.position = position;
      isActive = false;
      
      rootAsset.instancedAssets.add(this);
      rootLayer.instancedAssets.add(this);
    }
    
    public float getWidth()
    {
      return rootAsset.diffuseTexture.width;
    }
    
    public float getHeight()
    {
      return rootAsset.diffuseTexture.height;
    }
  }
}
