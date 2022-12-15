import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:gofarmng/Constants/size_config.dart';
import 'package:gofarmng/Styles/colors.dart';
import 'package:gofarmng/Widgets/myText.dart';
import 'package:gofarmng/Widgets/textField.dart';

class NewProducts extends StatefulWidget {
  const NewProducts({super.key});

  @override
  State<NewProducts> createState() => _NewProductsState();
}

class _NewProductsState extends State<NewProducts> {
  final List<String> categories = ['buyer', 'seller'];
  String? selectedValue;
  final TextEditingController _categoriesController = TextEditingController();
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _quantityController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();

  @override
  void dispose() {
    _titleController.clear();
    _titleController.clear();
    _quantityController.clear();
    _priceController.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: black,
        title: myText(
          text: "Upload New Product",
          fontSize: getProportionateScreenWidth(16),
          fontWeight: FontWeight.w700,
          color: black,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            const Divider(
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 8, 20, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Categories',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: textColor,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    height: getProportionateScreenHeight(54),
                    padding: EdgeInsets.symmetric(
                        horizontal: getProportionateScreenWidth(10)),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: lightGrey),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton2(
                        hint: Text(
                          'Select Category',
                          style: TextStyle(
                            color: grey,
                          ),
                        ),
                        icon: const Icon(Icons.keyboard_arrow_down),
                        iconSize: 30,
                        iconDisabledColor: grey,
                        items: categories
                            .map((role) => DropdownMenuItem<String>(
                                  value: role,
                                  child: Text(
                                    role,
                                    style: const TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ))
                            .toList(),
                        value: selectedValue,
                        onChanged: (value) {
                          _categoriesController.text = value!;
                          setState(() {
                            selectedValue = value as String;
                          });
                        },
                        buttonPadding: const EdgeInsetsDirectional.only(end: 8),
                        buttonHeight: 40,
                        buttonWidth: MediaQuery.of(context).size.width,
                        itemHeight: 40,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  customTextField(
                      title: 'Title',
                      controller: _titleController,
                      hint: 'Enter title'),
                  const SizedBox(height: 16),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Add Image',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: textColor,
                      ),
                    ),
                  ),
                  const myText(
                      textAlign: TextAlign.left,
                      text: 'You can upload up to 5 images of your products'),
                  const SizedBox(height: 8),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(width: 1, color: green)),
                    child: Icon(Icons.add, color: green),
                  ),
                  myText(text: 'Add more', color: green),
                  const SizedBox(height: 8),
                  const myText(text: 'Choose pictures from file (PNG or JPEG)'),
                  const SizedBox(height: 16),
                  customTextField(
                      title: 'Quantity',
                      controller: _quantityController,
                      hint: 'Enter quantity',
                      keyboardType: TextInputType.number),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      SizedBox(
                        width: getProportionateScreenWidth(160),
                        child: customTextField(
                            title: 'Price',
                            hint: 'Price per unit',
                            controller: _priceController,
                            keyboardType: TextInputType.number),
                      ),
                      const SizedBox(width: 12),
                      SizedBox(
                        width: getProportionateScreenWidth(160),
                        child: Container(
                          height: getProportionateScreenHeight(54),
                          padding: EdgeInsets.symmetric(
                              horizontal: getProportionateScreenWidth(10)),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: lightGrey),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton2(
                              hint: Text(
                                'Select Category',
                                style: TextStyle(
                                  color: grey,
                                ),
                              ),
                              icon: const Icon(Icons.keyboard_arrow_down),
                              iconSize: 30,
                              iconDisabledColor: grey,
                              items: categories
                                  .map((role) => DropdownMenuItem<String>(
                                        value: role,
                                        child: Text(
                                          role,
                                          style: const TextStyle(
                                            fontSize: 14,
                                          ),
                                        ),
                                      ))
                                  .toList(),
                              value: selectedValue,
                              onChanged: (value) {
                                _categoriesController.text = value!;
                                setState(() {
                                  selectedValue = value as String;
                                });
                              },
                              buttonPadding:
                                  const EdgeInsetsDirectional.only(end: 8),
                              buttonHeight: 40,
                              buttonWidth: MediaQuery.of(context).size.width,
                              itemHeight: 40,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
