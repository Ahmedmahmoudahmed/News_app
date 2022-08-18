

import 'package:news_cloud/models/category_model.dart';

List<CategoryModel> getCategories(){
  List<CategoryModel> myCategories=List<CategoryModel>();
  CategoryModel categoryModel;

  //1
  categoryModel=CategoryModel();
  categoryModel.categoryName="Business";
  categoryModel.imagrUrl="https://images.unsplash.com/photo-1520333789090-1afc82db536a?ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=751&q=80";
  myCategories.add(categoryModel);

  //2
  categoryModel=CategoryModel();
  categoryModel.categoryName="Entertainment";
  categoryModel.imagrUrl="https://images.unsplash.com/photo-1499364615650-ec38552f4f34?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=666&q=80";
  myCategories.add(categoryModel);

  //3
  categoryModel=CategoryModel();
  categoryModel.categoryName="General";
  categoryModel.imagrUrl="https://images.unsplash.com/photo-1602288637781-5ca78e8af9d4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80";
  myCategories.add(categoryModel);

  //4
  categoryModel=CategoryModel();
  categoryModel.categoryName="Health";
  categoryModel.imagrUrl="https://images.unsplash.com/photo-1542736667-069246bdbc6d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=751&q=80";
  myCategories.add(categoryModel);

  //5
  categoryModel=CategoryModel();
  categoryModel.categoryName="Science";
  categoryModel.imagrUrl="https://images.unsplash.com/photo-1507668077129-56e32842fceb?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80";
  myCategories.add(categoryModel);

  //6
  categoryModel=CategoryModel();
  categoryModel.categoryName="Sports";
  categoryModel.imagrUrl="https://images.unsplash.com/photo-1459865264687-595d652de67e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80";
  myCategories.add(categoryModel);

  //7
  categoryModel=CategoryModel();
  categoryModel.categoryName="Technology";
  categoryModel.imagrUrl="https://images.unsplash.com/photo-1581091226825-a6a2a5aee158?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80";
  myCategories.add(categoryModel);

  return myCategories;
}