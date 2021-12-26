// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

class _RecipeServiceImpl implements RecipeServiceImpl {
  _RecipeServiceImpl(this._dio, {this.baseUrl});

  final Dio _dio;

  String? baseUrl;

  @override
  Future<APIRecipeQuery> getRecipes(query, from, to) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'q': query,
      r'from': from,
      r'to': to
    };
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<APIRecipeQuery>(
            Options(method: 'GET', headers: _headers, extra: _extra)
                .compose(_dio.options, 'b/85RU',
                    queryParameters: queryParameters, data: _data)
                .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = APIRecipeQuery.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
