class Ressource {
  int number;
  String name;
  public Ressource(String p1) {
    name = p1;
    number = 0;
  }
}
class RessourceStream {
  Ressource ressource;
  int number;
  public RessourceStream(int p1, String p2) {
    number = p1;
    ressource = getRessourceByName(p2);
  }
  public RessourceStream(int p1) {
    number = p1;
  }
  public RessourceStream() {
    
  }
}
class Structure {
  RessourceStream[] ressourceStreams;
  int amount;
  String name;
  public Structure(int p1) {
    ressourceStreams = new RessourceStream[p1];
    for (int i = 0; i < p1; i++) {
      ressourceStreams[i] = new RessourceStream();
    }
  }
  public Structure(String p1, String[] p2, int[] p3) {
    ressourceStreams = new RessourceStream[p2.length];
    for (int i = 0; i < p2.length; i++) {
      ressourceStreams[i] = new RessourceStream(p3[i%p3.length], p2[i%p2.length]);
    }
  }
}

Ressource getRessourceByName(String name) {
  Ressource result = null;
  if (ressources != null && ressources.length > 0) {
    for (int i = 0; i < ressources.length; i++) {
      if (ressources[i] != null) {
        if (ressources[i].name.equals(name)) {
          result = ressources[i];
        }
      }
    }
  }
  return result;
}

Ressource[] ressources;
Structure[] structures;