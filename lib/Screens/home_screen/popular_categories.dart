import 'package:flutter/material.dart';
import 'package:gofarmng/Provider/AuthProvider/authProvider.dart';
import 'package:provider/provider.dart';

import '../../Constants/size_config.dart';
import '../../Provider/AuthProvider/fetchdata_provider.dart';
import '../../Styles/colors.dart';
import '../../Widgets/myText.dart';
import 'categories.dart';

class PopularCategories extends StatelessWidget {
  const PopularCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthenticationProvider>(
      builder: (context, value, child) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                myText(
                  text: "Popular Categories",
                  fontSize: getProportionateScreenHeight(16),
                ),
                TextButton(
                  onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const ViewAllProducts(),
                    ),
                  ),
                  child: myText(
                    text: "View all",
                    fontSize: getProportionateScreenHeight(12),
                    color: green,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(
                8,
              ),
            ),
            Container(
              color: Colors.white,
              height: getProportionateScreenWidth(
                72,
              ),
              child: FutureBuilder(
                future: FetchDataProvider().fetchAllProducts(),
                builder: (context, snapshot) {
                  return !snapshot.hasData && !snapshot.hasError
                      ? const Center(
                          child: CircularProgressIndicator(),
                        )
                      : snapshot.hasError
                          ? Text(snapshot.error.toString())
                          : ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemCount: snapshot.data!.data!.length,
                              separatorBuilder:
                                  (BuildContext context, int index) => SizedBox(
                                width: getProportionateScreenWidth(10),
                              ),
                              itemBuilder: (BuildContext context, int index) {
                                // final apidata = snapshot.data;
                                // print();
                                final product = snapshot.data!.data![index];
                                return SizedBox(
                                  // height: 72,
                                  width: getProportionateScreenHeight(48),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        height:
                                            getProportionateScreenHeight(48),
                                        width: getProportionateScreenHeight(48),
                                        decoration: BoxDecoration(
                                          boxShadow: const [
                                            BoxShadow(
                                              color: Color(0x40111111),
                                              offset: Offset(0, 1),
                                              blurRadius: 4,
                                              spreadRadius: 0,
                                            ),
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: Image.network(
                                          "${product.productPicture}",
                                        ),
                                      ),
                                      SizedBox(
                                        height: getProportionateScreenHeight(8),
                                      ),
                                      myText(
                                        text: "${product.category}",
                                        color: const Color(0xff353535),
                                        fontSize:
                                            getProportionateScreenHeight(12),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ],
                                  ),
                                );
                              },
                            );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
