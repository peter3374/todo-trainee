import 'package:todo/data/model/category/category_model.dart';
import 'package:todo/data/repository/category_repository.dart';
import 'package:todo/data/repository/config_repository.dart';

String get _assetsPath => 'assets/defaultCategoryIcons/';

class DefaultCategoryProvider {
  static const List<String> _categoryTitles = [
    'Event',
    'Personal',
    'Shopping',
    'Sport',
    'Work'
  ];

  static Future<void> fillDefaultCategory() async {
    final configRepository = FirstTimeVisitRepositoryImpl();
    final categoryModel = CategoryRepositoryImpl().database;
    await configRepository.openConfigBox();

    if (await configRepository.getIsFirstTime()) {
      for (int i = 0; i < _categoryTitles.length; i++) {
        await categoryModel.add(
          CategoryModel(
            id: i,
            title: _categoryTitles[i],
            imgPath: '$_assetsPath${_categoryTitles[i]}.png',
          ),
        );
      }
    }
    await configRepository.putIsFirstTime(false);
  }
}