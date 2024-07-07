import 'package:flutter/material.dart';

import 'package:pos_management/ui/utiliy/app_colors.dart';
import 'package:pos_management/ui/utiliy/assets_path.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15)),
              color: AppColors.primaryColor,
            ),
            child: Padding(
              padding: EdgeInsets.only(top: 50, left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  search_section,
                  SizedBox(
                    height: 10,
                  ),
                  profilesection,
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          montlyTotalSel,
          SizedBox(
            height: 80,
          ),
          Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Category',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      category_section(
                          onTap: () {},
                          Image: AssetImage(AssetsPath.saleImage),
                          title: 'Sale'),
                      category_section(
                          onTap: () {},
                          Image: AssetImage(AssetsPath.salebookImage),
                          title: 'Sale Book'),
                      category_section(
                          onTap: () {},
                          Image: AssetImage(AssetsPath.duebookImage),
                          title: 'Due Book'),
                      category_section(
                          onTap: () {},
                          Image: AssetImage(AssetsPath.usersImage),
                          title: 'Users'),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      category_section(
                          onTap: () {},
                          Image: AssetImage(AssetsPath.stockImage),
                          title: 'Stock'),
                      category_section(
                          onTap: () {},
                          Image: AssetImage(AssetsPath.accountingImage),
                          title: 'Accounting'),
                      category_section(
                          onTap: () {},
                          Image: AssetImage(AssetsPath.roleImage),
                          title: 'Role'),
                      category_section(
                          onTap: () {},
                          Image: AssetImage(AssetsPath.moreImage),
                          title: 'See all'),
                    ],
                  ),
                ],
              )),
        ],
      ),
    );
  }

  Column category_section(
      {required String title,
      required ImageProvider Image,
      required VoidCallback onTap}) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: CircleAvatar(
            maxRadius: 25,
            backgroundImage: Image,
          ),
        ),
        Text(title)
      ],
    );
  }

  Padding get montlyTotalSel {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Container(
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey.shade200),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'এই মাসের  বিক্রি',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      Text(
                        '0 ৳',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: AppColors.primaryColor),
                      ),
                    ],
                  ),
                ),
                Wrap(
                  children: [
                    Text(
                      'মাস',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    Transform.scale(
                        scale: 0.8,
                        child: Switch(value: false, onChanged: (value) {}))
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey.shade200,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'এই মাসের আয়',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'এই মাসের ব্যায়',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '0 ৳',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: AppColors.primaryColor,
                          ),
                        ),
                        Text(
                          '0 ৳',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: AppColors.primaryColor),
                        ),
                      ],
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }

  Row get profilesection {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Wrap(
          children: [
            CircleAvatar(
              maxRadius: 25,
              backgroundImage: AssetImage(AssetsPath.profileImage),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Welcome!',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Lana',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
        CircleAvatar(
          maxRadius: 18,
          backgroundColor: Colors.white,
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_active,
              color: Colors.blue,
            ),
          ),
        )
      ],
    );
  }

  Row get search_section {
    return Row(
      children: [
        Image.asset(
          AssetsPath.applogo,
          scale: 30,
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: SizedBox(
              height: 40,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Search here...',
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  suffixIcon: Icon(
                    Icons.search,
                    color: Colors.grey.shade500,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
