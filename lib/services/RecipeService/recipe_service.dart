import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart' as retrofit;

import './repository.dart';
import '../endpoints.dart';
import './models.dart';

part 'recipe_service.g.dart';

@retrofit.RestApi()
abstract class RecipeServiceImpl implements RecipeService {
  factory RecipeServiceImpl(Dio dio) = _RecipeServiceImpl;

  @retrofit.GET(Endpoints.recipeList)
  Future<APIRecipeQuery> getRecipes(@retrofit.Query('q') String query,
      @retrofit.Query('from') int from, @retrofit.Query('to') int to);

  // @GET("/posts")
  // Future<List<Post>> getPosts(@Header("Content-Type") String contentType);

  // @GET("/comments")
  // @Headers(<String, dynamic>{
  //   //Static header
  //   "Content-Type": "application/json",
  //   "Custom-Header": "Your header"
  // })
  // Future<List<Comment>> getAllComments();

  // @GET("/posts/{id}")
  // Future<Post> getPostFromId(@Path("id") int postId);

  // @GET("/comments?postId={id}")
  // Future<Comment> getCommentFromPostId(@Path("id") int postId);

  // @GET("/comments")
  // Future<Comment> getCommentFromPostIdWithQuery(
  //     @Query("postId") int postId); //This yields to "/comments?postId=postId

  // @DELETE("/posts/{id}")
  // Future<void> deletePost(@Path("id") int postId);

  // @POST("/posts")
  // Future<Post> createPost(@Body() Post post);
}
