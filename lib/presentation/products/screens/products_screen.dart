import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:man_shop_app/presentation/products/bloc/cubit.dart';
import 'package:man_shop_app/presentation/products/bloc/states.dart';
import 'package:man_shop_app/presentation/products/widgets/banner_widget.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productsCubit = BlocProvider.of<ProductsCubit>(context);
    return BlocConsumer<ProductsCubit, ProductsStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: state is ProductsLoadingState
                ? const Center(
                    child: CircularProgressIndicator(
                      strokeWidth: 4,
                      color: Colors.blue,
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15.0,
                      vertical: 10.0,
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 50,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                              color: Color(0xFFF2F3F2),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                        const SizedBox(height: 10.0),
                        BannerWidget(),
                      ],
                    ),
                  ),
          ),
        );
      },
    );
  }
}
