import 'package:web_motors/modules/list_cars/domain/entities/car_entity.dart';

class CarModel extends CarEntity {
  CarModel.fromJson(Map<String, dynamic> json) {
    id = json['ID'];
    make = json['Make'];
    model = json['Model'];
    version = json['Version'];
    image = json['Image'];
    km = json['KM'];
    price = json['Price'];
    yearModel = json['YearModel'];
    yearFab = json['YearFab'];
    color = json['Color'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ID'] = id;
    data['Make'] = make;
    data['Model'] = model;
    data['Version'] = version;
    data['Image'] = image;
    data['KM'] = km;
    data['Price'] = price;
    data['YearModel'] = yearModel;
    data['YearFab'] = yearFab;
    data['Color'] = color;
    return data;
  }
}
