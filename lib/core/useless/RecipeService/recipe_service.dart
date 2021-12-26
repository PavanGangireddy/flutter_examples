// import 'package:chopper/chopper.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
// import './recipe_model.dart';
// import './model_response.dart';
// import './model_converter.dart';

// part 'recipe_service.chopper.dart';

// const String apiKey = 'fc246d58';
// const String apiId = '9b07b8f8237a51a2fc61fd13e529d5eb';
// const String apiUrl = 'https://jsonkeeper.com/';

// final recipeServiceProvider =
//     Provider.autoDispose<RecipeService>((ref) => RecipeService.create());

// @ChopperApi()
// abstract class RecipeService extends ChopperService {
//   @Get(path: 'b/85RU')
//   Future<Response<Result<APIRecipeQuery>>> getRecipes(
//       @Query('q') String query, @Query('from') int from, @Query('to') int to);

//   static RecipeService create() {
//     final client = ChopperClient(
//       baseUrl: apiUrl,
//       interceptors: [_addQuery, HttpLoggingInterceptor()],
//       converter: ModelConverter(),
//       errorConverter: const JsonConverter(),
//       services: [
//         _$RecipeService(),
//       ],
//     );

//     return _$RecipeService(client);
//   }
// }

// Request _addQuery(Request req) {
//   final params = Map<String, dynamic>.from(req.parameters);
//   params['app_id'] = apiId;
//   params['app_key'] = apiKey;
//   return req.copyWith(parameters: params);
// }
