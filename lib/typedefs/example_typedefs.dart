typedef ProgressCallBack = void Function(int progress);
// eu posso criar meu próprio tipo, bizarro.
// no flutter tem vários typedefs de funções que retornam ou não valores.
// traz muita semântica.

void downloadFile(ProgressCallBack onProgress){
  for(int i=0; i <= 100; i+= 20){
    onProgress(i);
  }
}

typedef Json = Map<String, dynamic>;


class User{
  final String name;
  final int age;

User(this.name, this.age);

Json toJson() => {'name': name, 'age': age};

static User fromJson(Json json) =>
User(json['name'], json['age']);

}

void main(){
downloadFile((int progress){
  print(progress);
});


}

