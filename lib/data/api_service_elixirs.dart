// import 'package:flutter_gpotter/data/api_model.dart';

// import '../generated/swagger.swagger.dart';

// abstract class ApiService {
//   Future<ApiModel<List<ElixirDto>, Failure>> getElixirs();
//   Future<ApiModel<List<HouseDto>, Failure>> getHouses();
// }

// class APIServiceimplementation implements ApiService {
//   APIServiceimplementation._();
//   static final APIServiceimplementation instance = APIServiceimplementation._();

//   final Swagger service =
//       Swagger.create(baseUrl: 'https://wizard-world-api.herokuapp.com');

//   @override
//   Future<ApiModel<List<ElixirDto>, Failure>> getElixirs() async {
//     try {
//       final response = await service.elixirsGet();
//       if (response.statusCode != 200) {
//         ApiModel.error(Failure());
//       }
//       await Future.delayed(const Duration(seconds: 1));
//       final List<ElixirDto> elixirs = [];
//       elixirs.addAll(response.body!.toList());
//       return ApiModel.success(elixirs);
//     } catch (e) {
//       return ApiModel.error(Failure());
//     }
//   }

//   @override
//   Future<ApiModel<List<HouseDto>, Failure>> getHouses() {
//     // TODO: implement getHouses
//     throw UnimplementedError();
//   }
// }
