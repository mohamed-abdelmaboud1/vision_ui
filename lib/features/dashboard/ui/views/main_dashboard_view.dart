import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import '../../../../core/utils/app_images.dart';
import '../../../../core/widgets/custom_drawer.dart';
import '../../../tables/ui/widgets/table_view_body.dart';
import '../../logic/cubit/dash_cubit.dart';

class MainDashboardView extends StatelessWidget {
  const MainDashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              Assets.assetsImagesDashboardBackground,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Row(
          children: [
            const CustomDrawer(),
            const Gap(24),
            Column(
              children: [
                const CustomSearchBar(),
                   const Gap(16),
                BlocBuilder<DashCubit, DashState>(
                  builder: (context, state) {
                    final cubit = DashCubit.get(context);
                    return cubit.currentDesktopView();
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}