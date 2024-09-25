import 'package:flutter/material.dart';

import 'balance_history_chart.dart';
import 'build_common_decoration.dart';
import 'sales_over_view_title.dart';

class SalesOverViewWidget extends StatelessWidget {
  const SalesOverViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 3,
        child: Container(
          height: 440,
          padding: const EdgeInsets.all(16),
          decoration: buildCommonDecoration(),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SalesOverViewTitle(),
              BalanceHistoryChart(),
            ],
          ),
        ));
  }
}