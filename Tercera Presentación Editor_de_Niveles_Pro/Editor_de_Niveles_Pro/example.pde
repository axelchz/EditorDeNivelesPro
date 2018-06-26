//BORRAR TRAS ENTREGA
void example()
{
  data.addAsset("Brownie", "textures/Brownie.png");
  data.addAsset("Dangle", "textures/Dangle.png");
  data.addAsset("Turdlings", "textures/Turdlings.png");
  data.addAsset("Blue baby", "textures/Blue_baby.png");
  data.addAsset("Pin", "textures/Pin.png");
  
  data.addLayer("Capa1");
  data.addLayer("Capa2");
  data.addLayer("Capa3");
  
  data.addInstancedAsset(data.assets.get(0), data.layers.get(0), new PVector(600, 200));
  data.addInstancedAsset(data.assets.get(1), data.layers.get(1), new PVector(400, 350));
  data.addInstancedAsset(data.assets.get(2), data.layers.get(2), new PVector(850, 400));
  data.addInstancedAsset(data.assets.get(1), data.layers.get(0), new PVector(900, 200));
  data.addInstancedAsset(data.assets.get(3), data.layers.get(1), new PVector(200, 350));
  data.addInstancedAsset(data.assets.get(4), data.layers.get(2), new PVector(300, 500));
}
