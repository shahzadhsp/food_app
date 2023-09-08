import 'package:flutter/foundation.dart';

class FavoriteProvider extends ChangeNotifier {
  List<int> _selectedItem = [];

  List<int> get selectedItems => _selectedItem;
  void addFavoriteItem(int value) {
    _selectedItem.add(value);
    notifyListeners();
  }

  void removeFavoriteItem(int value) {
    _selectedItem.remove(value);
    notifyListeners();
  }
}
