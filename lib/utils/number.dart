import 'package:intl/intl.dart';

final formatter = new NumberFormat("#,###");
final formatterFloat = new NumberFormat("#,###.#");

String number(dynamic value){
  if(value != null){
    if(value.runtimeType == String){

      return formatter.format(int.parse(value));
    }
    return formatter.format(value);
  } else {
    return "0";
  }

}

String float(dynamic value){
  if(value != null) {
    if (value.runtimeType == String) {
      return formatterFloat.format(double.parse(value));
    }
    return formatterFloat.format(value);
  } else {
    return "0";
  }
}
double getDouble(value){
  if(value != null) {
    if (value.runtimeType == String) {
      if(double.parse(value, (e) => null) != null){
        return double.parse(value);

      }
      return 0.0;
    }
    if (value.runtimeType == double) {
      return value;
    } if (value.runtimeType == int) {
      if(double.parse(value.toString(), (e) => null) != null){
        return double.parse(value.toString());
      }
      return 0.0;

    }
    return 0.0;

  } else {
    return 0.0;
  }
}