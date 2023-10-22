import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/provider/application_provider.dart';

class CustomSearchBar extends StatefulWidget {
  const CustomSearchBar({super.key});

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  late TextEditingController searchController;

  @override
  void initState() {
    super.initState();
    searchController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
    ApplicationProvider.searchQuery = '';
  }

  @override
  Widget build(BuildContext context) {
    var appProvider = Provider.of<ApplicationProvider>(context);

    return SearchBar(
      controller: searchController,
      onChanged: (value) {
        searchController.text = value;
        appProvider.changeSearchQuery(searchController.text);
        if(value == ''){
          appProvider.changeSearchQuery('');
        }
      },
      elevation: const MaterialStatePropertyAll(0),
      constraints: const BoxConstraints(
        minHeight: 45,
        maxHeight: 45,
      ),
      padding: const MaterialStatePropertyAll(
        EdgeInsets.symmetric(horizontal: 15),
      ),
      backgroundColor: const MaterialStatePropertyAll(
        Color(0xffffffff),
      ),
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: const BorderSide(
            color: Color(0xffD0D5DD),
          ),
        ),
      ),
      leading: appProvider.getSearchQuery().isEmpty == true
          ? Image.asset(
              'assets/images/search.png',
              width: 20,
              height: 20,
              fit: BoxFit.cover,
            )
          : const SizedBox(),
      hintText: 'Articles, Video, Audio and More,...',
      hintStyle: const MaterialStatePropertyAll(
        TextStyle(
          color: Color(0xff667085),
          fontFamily: 'Inter',
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
