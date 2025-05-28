import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateOrEditCategory extends StatefulWidget {
  const CreateOrEditCategory({super.key});

  @override
  State<CreateOrEditCategory> createState() => _CreateOrEditCategoryState();
}

class _CreateOrEditCategoryState extends State<CreateOrEditCategory> {
  final _nameCategoryTextController = TextEditingController();
  final List<Color> _colorDataSouruce = [];
  late Color? _colorSeclected;

  @override
  void initState() {
    super.initState();
    _colorDataSouruce.addAll([
      Color(0xFFC9CC41),
      Color(0xFF66CC41),
      Color(0xFF41CCA7),
      Color(0xFF4181CC),
      Color(0xFF41A2CC),
      Color(0xFFCC8441),
      Color(0xFF9741CC),
      Color(0xFFCC4173),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Container(
          margin: EdgeInsets.symmetric(horizontal: 7),
          child: Text(
            "create_category_page_title".tr(),
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
          ).tr(),
        ),
      ),
      body: _buildBodyPageScreen(),
    );
  }

  Widget _buildBodyPageScreen() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildCategoryNameField(),
        _buildCategoryChooseIconField(),
        _buildCategoryChooseBackgroundColors(),
        Spacer(),
        _buildCreateAndCancelButton()
      ],
    );
  }

  Widget _buildCategoryNameField() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildFieldTitle("create_category_form_category_name_label".tr()),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: TextFormField(
              controller: _nameCategoryTextController,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
              decoration: InputDecoration(
                  hintText:
                      "create_category_form_category_name_placeholder".tr(),
                  hintStyle: TextStyle(
                    fontSize: 16,
                    color: Color(0xFFAFAFAF),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: BorderSide(
                        width: 1,
                        color: Color(0xFF979797),
                      ))),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildCategoryChooseIconField() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24),
      margin: EdgeInsets.only(top: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildFieldTitle("create_category_form_category_icon_label".tr()),
          GestureDetector(
            onTap: () {
              print("Hello : Chon icon tu 1 man hinh khac");
            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Color(0xFFFFFFFF).withOpacity(0.21)),
              margin: EdgeInsets.only(top: 10),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Text(
                  "create_category_form_category_icon_placeholder".tr(),
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ).tr(),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildCategoryChooseBackgroundColors() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24),
      margin: EdgeInsets.only(top: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildFieldTitle(
              "create_category_form category_background_color".tr()),
          Container(
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: 36,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final color = _colorDataSouruce.elementAt(index);
                    final isSelected = _colorSeclected == color;
                    return GestureDetector(
                      onTap: (){
                        print("choose color in index{$index}");
                        setState(() {
                          _colorSeclected =color;
                        });
                      },
                      child: Container(
                        width: 36,
                        height: 36,
                        margin: EdgeInsets.only(right: 12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(36 / 2),
                          color: color,
                        ),
                        child: isSelected ? Icon(Icons.check, color: Colors.white, size: 20) : null
                      ),
                    );
                  },
                  itemCount: _colorDataSouruce.length)),
        ],
      ),
    );
  }

  Widget _buildFieldTitle(String titleLaber) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Text(
        titleLaber,
        style: TextStyle(fontSize: 16, color: Colors.white.withOpacity(0.87)),
      ),
    );
  }
  Widget _buildCreateAndCancelButton() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24).copyWith(top: 107,bottom: 24),
      child: Row(
        children: [
          TextButton(
              onPressed: () {
              },
              child: Text(
                "commom_cancel".tr(),
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: "Lato",
                  fontWeight: FontWeight.w400,
                  color: Colors.white.withOpacity(0.44),
                ),
              )),
          const Spacer(),
          ElevatedButton(
              onPressed: () {
                _handleCreateCategory();
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF8875FF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  )),
              child: Text(
              "create_category_create_button".tr(),
                  style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Lato",
                      fontWeight: FontWeight.w400,
                      color: Colors.white)))
        ],
      ),
    );
  }
  void _handleCreateCategory(){
    final categoryName = _nameCategoryTextController.text;
    print(categoryName);
    // Save cac thong tin
  }
}
