
class task{
  String _firstName;
  String _lastName;

  task(this._firstName, this._lastName);

  task.map(dynamic obj){
    this._firstName = obj['firstName'];
    this._lastName = obj['lastName'];
  }
  String get firstName => _firstName;
  String get lastName => _lastName;

  Map<String, dynamic> toMap(){
    var map = new Map<String, dynamic>();
    map['firstName'] = _firstName;
    map['lastName'] = _lastName;
    return map;
  }

  task.fromMap(Map<String,dynamic>map){
    this._firstName = map['firstname'];
    this._lastName = map['lastName'];
  }
}