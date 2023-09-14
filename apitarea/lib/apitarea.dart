import 'package:http/http.dart' as http;
import 'package:apitarea/clases/reqres_respuesta.dart';

void getReqResService() async {
  var url = Uri.https('restcountries.com', '/v3.1/alpha/col');
  var res = await http.get(url);

  if (res.statusCode == 200) {
    print('staus 200');
    var resReqRes = reqResRespuestaFromJson(res.body);
    imprimirDatos(resReqRes);
  } else {
    print('Request failed with status: ${res.statusCode}.');
  }
}

imprimirDatos(List<ReqResRespuesta> resReqRes) {
  var pais = resReqRes[0].name.common;
  var poblacion = resReqRes[0].population;
  var fronteras = resReqRes[0].borders;
  var languages = resReqRes[0].languages.spa;
  var latitud = resReqRes[0].latlng[0];
  var longitud = resReqRes[0].latlng[1];
  var moneda = resReqRes[0].currencies.cop.name;
  var bandera = resReqRes[0].flags.png;
  List<String> fronterasModific = fronteras.map((frontera) {
    String firstLetter = frontera[0].toUpperCase();
    String remaining = frontera.substring(1).toLowerCase();
    return firstLetter + remaining;
  }).toList();

  print('\n==================================='
      '\n1) Pais: $pais'
      '\n2) Población: $poblacion'
      '\n3) Fronteras: \n\t${imprimirFronteras(fronterasModific)}'
      '\n4) Languages: $languages'
      '\n5) Latitud: $latitud'
      '\n6) Longitud: $longitud'
      '\n7) Moneda: $moneda'
      '\n8) Bandera: $bandera'
      '\n===================================');
}

String imprimirFronteras(List<String> fronterasModific) {
  return fronterasModific.join('\n\t');
}
