import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import '../../constants/colors.dart';
import '../model/data.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kGradientEndColor,
      body: Container(
        decoration:  BoxDecoration(
          gradient: LinearGradient(
             colors: [
               kGradientStartColor,
               kGradientEndColor ,
             ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: const [0.3, 0.7]
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 32.0, right: 32, top: 20, bottom: 0),
                  child: Column(
                    children: [
                      const Text(
                        'EXPLORE',
                        style: TextStyle(
                          fontFamily: 'Metropolis',
                          fontSize: 44,
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      DropdownButton<DropdownMenuItem>(
                        items: const [
                          DropdownMenuItem(
                            child: Text(
                              'Solar System',
                              style: TextStyle(
                                fontFamily: 'Metropolis',
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                                color: Color(0x7cdbf1ff),
                              ),
                              textAlign: TextAlign.left,
                            ),
                          )
                        ],
                        onChanged: (value) {},
                        icon: const Padding(
                          padding: EdgeInsets.only(left: 16.0),
                          child: Icon(
                            Icons.arrow_drop_down,
                            color: Colors.white,
                          ),
                        ),
                        underline: const SizedBox(),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 400,
                  padding: const EdgeInsets.only(left: 32),
                  child: Swiper(
                    loop: true,
                    itemCount: planets.length,
                    itemWidth: MediaQuery.of(context).size.width - 2 * 64,
                    layout: SwiperLayout.STACK,
                    pagination: const SwiperPagination(
                     // margin: EdgeInsets.only(top: 0),
                      builder: DotSwiperPaginationBuilder(
                        size: 5,
                        activeSize: 20,
                        color: Colors.grey,
                        activeColor: Colors.orange,
                        space: 8,
                      ),
                    ),
                    itemBuilder: (context, index) {
                      return Stack(
                        alignment: AlignmentDirectional.topStart,
                        children: [
                          Column(
                            children: [
                              const SizedBox(
                                height: 40,
                              ),
                              Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(32.0),
                                ),
                                elevation: 10,
                                color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(32.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(
                                        height: 100,
                                      ),
                                      Text(
                                        planets[index].name,
                                        style: const TextStyle(
                                            fontFamily: 'Metropolis',
                                            fontSize: 44,
                                            color: Color(0xff47455f),
                                            fontWeight: FontWeight.w900),
                                      ),
                                      const SizedBox(height: 20,),
                                      Text('Escrower Solar System',
                                          style: TextStyle(
                                              fontFamily: 'Metropolis',
                                              fontSize: 15,
                                              color: kPrimaryTextColor,
                                              fontWeight: FontWeight.w500),
                                          textAlign: TextAlign.left),
                                      const SizedBox(
                                        height: 32,
                                      ),
                                      Row(
                                        children: [
                                          Text('Know more',
                                              style: TextStyle(
                                                  fontFamily: 'Metropolis',
                                                  fontSize: 18,
                                                  color: kSecondaryTextColor,
                                                  fontWeight: FontWeight.w500),
                                              textAlign: TextAlign.left),
                                          Icon(
                                            Icons.adaptive.arrow_forward,
                                            color: kSecondaryTextColor,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Positioned(
                            top: 0,
                            right: 0,
                            left: 0,
                            child: Image.asset(
                              planets[index].iconImage,
                              height: 150,
                              width: 150,
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        padding: const EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                onPressed: () {}, icon: Image.asset('asset/images/p1.png')),
            IconButton(
                onPressed: () {}, icon: Image.asset('asset/images/p2.png')),
            IconButton(
                onPressed: () {}, icon: Image.asset('asset/images/p3.png')),
            IconButton(
                onPressed: () {}, icon: Image.asset('asset/images/p4.png')),
            IconButton(
                onPressed: () {}, icon: Image.asset('asset/images/p5.png'))
          ],
        ),
      ),
    );
  }
}
