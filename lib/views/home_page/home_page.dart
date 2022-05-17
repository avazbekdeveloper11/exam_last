import 'package:exam_last/blocs/cubit/home_cubit.dart';
import 'package:exam_last/core/components/text_form_deco.dart';
import 'package:exam_last/core/components/text_styles.dart';
import 'package:exam_last/core/constant/size_config.dart';
import 'package:exam_last/core/data/data.dart';
import 'package:exam_last/core/init/base_view/base_view.dart';
import 'package:exam_last/services/service.dart';
import 'package:exam_last/views/home_page/_widgets/courses_builder.dart';
import 'package:exam_last/views/home_page/_widgets/filter_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView(
      viewModal: HomePage,
      onPageBuilder: (context, widget) => BlocProvider(
        create: (context) => HomeCubit(),
        child: homeScaffold(),
      ),
    );
  }

  Scaffold homeScaffold() {
    return Scaffold(
      body: BlocConsumer<HomeCubit, HomeState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          return FutureBuilder(
            future: Service.getData(),
            builder: ((context, AsyncSnapshot snapshot) {
              if (!snapshot.hasData) {
                return const Center(
                  child: CircularProgressIndicator.adaptive(),
                );
              } else if (snapshot.hasError) {
                return const Center(child: Text("Error Data"));
              } else {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // ! Title
                    Padding(
                      padding: EdgeInsets.only(
                        top: getHeight(44),
                        left: getWidht(28),
                        bottom: getHeight(5),
                      ),
                      child: Text(
                        "Qanday darslar sizni\nqiziqtiradi?",
                        style: StyleConst.instance.styleBold(25),
                      ),
                    ),
                    // ! SubTitle
                    Padding(
                      padding: EdgeInsets.only(
                        left: getWidht(28),
                        bottom: getHeight(22),
                      ),
                      child: Text(
                        category[context.watch<HomeCubit>().items]['subtitle'],
                        style: StyleConst.instance.styleSmall(12),
                      ),
                    ),
                    // ! Search Form
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: getWidht(16)),
                      child: SizedBox(
                        height: getHeight(41),
                        child: TextFormField(
                          decoration: TextFormDeco.deco(),
                        ),
                      ),
                    ),
                    // ! FIlter Builder
                    const FilterBuilder(),
                    Padding(
                      padding: EdgeInsets.only(
                        left: getWidht(28),
                        bottom: getHeight(14),
                      ),
                      child: Text(
                        "Dizaynga oid kurslar",
                        style: StyleConst.instance.styleMiddle(18),
                      ),
                    ),
                    // ! Courses Builder
                    CoursesBuilder(data: snapshot.data),
                  ],
                );
              }
            }),
          );
        },
      ),
    );
  }
}
