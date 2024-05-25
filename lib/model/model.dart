class StModel {
  String? name;
  String? email;
  String? address;


  StModel({this.name, this.email, this.address, });
  StModel.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    email = json["email"];
    address = json["address"];
  
  }
  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "email": email,
      "address": address,
     
    };
  }
}