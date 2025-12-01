import 'package:cardvipno1/colors/Ap_colors.dart';
import 'package:cardvipno1/cubit/home_cubit.dart';
import 'package:cardvipno1/cubit/home_state.dart';
import 'package:cardvipno1/gen/assets.gen.dart';
import 'package:cardvipno1/widget/animate_do_daraxt.dart';
import 'package:cardvipno1/widget/card.widger.dart';
import 'package:cardvipno1/widget/rentiimage.dart';
import 'package:cardvipno1/widget/text_fild.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreens extends StatefulWidget {
  const HomeScreens({super.key});

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  late TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          if (state is HomeloadingState) {
            return const Center(child: CupertinoActivityIndicator());
          }

          if (state is HomeErroState) {
            return const Center(
              child: Text("Xatolik mavjud, qayta urinib ko‘ring"),
            );
          }

          if (state is HomeSuccessSate) {
            final cars = context.read<HomeCubit>().cars;

            return SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 33,
                        top: 52,
                        right: 15,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(Assets.icons.location),
                              const SizedBox(width: 5),
                              Text(
                                "Location",
                                style: GoogleFonts.rubik(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              AnimatedIconButton(
                                image: "assets/images/daraxat.png",
                                width: 91,
                                height: 33,
                                onTap: () {
                                  print("daraxat bosildi");
                                },
                              ),
                              const SizedBox(width: 5),
                              AnimatedIconButton(
                                image: "assets/images/user2.png",
                                width: 33,
                                height: 33,
                                onTap: () {
                                  print("user2 bosildi");
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 28),

                    reantvsimages(),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: texfildwidget(controller: controller),
                    ),

                    const SizedBox(height: 15),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Top Brands",
                            style: GoogleFonts.rubik(
                              fontSize: 21,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              "View All",
                              style: TextStyle(
                                fontSize: 14,
                                color: ApColors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 10),

                    CardWidget(cars: cars),

                    const SizedBox(height: 15),

                    const SizedBox(height: 20),

                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text(
                        "Most Popular Cars",
                        style: GoogleFonts.rubik(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
          return const SizedBox();
        },
      ),
    );
  }
}
