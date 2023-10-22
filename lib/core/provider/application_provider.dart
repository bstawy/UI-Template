import 'package:flutter/material.dart';

class ApplicationProvider extends ChangeNotifier {
  int indexOfSelectedCarouselItem = 0;
  int indexOfSelectedBottomNavigationItem = 0;
  int indexOfCurrentPage = 0;
  static String searchQuery = '';
  int indexOfSelectedChip = 0;

  changeCurrentPageIndex(int index) {
    indexOfCurrentPage = index;
    notifyListeners();
  }

  int selectedPageIndex() {
    return indexOfCurrentPage;
  }

  changeCarouselIndex(int index) {
    indexOfSelectedCarouselItem = index;
    notifyListeners();
  }

  int selectedCarouselIndex() {
    return indexOfSelectedCarouselItem;
  }

  changeBottomNavBarIndex(int index) {
    indexOfSelectedBottomNavigationItem = index;
    notifyListeners();
  }

  int selectedBottomNavBarIndex() {
    return indexOfSelectedBottomNavigationItem;
  }

  changeSearchQuery(String query) {
    searchQuery = query;
    notifyListeners();
  }

  String getSearchQuery(){
    return searchQuery;
  }

  changeChipIndex(int index) {
    indexOfSelectedChip = index;
    notifyListeners();
  }

  int selectedChip() {
    return indexOfSelectedChip;
  }

}