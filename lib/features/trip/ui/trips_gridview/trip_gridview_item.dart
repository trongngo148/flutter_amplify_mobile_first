import 'package:flutter/material.dart';
import 'package:flutter_amplify_app/common/navigation/router/routes.dart';
import 'package:flutter_amplify_app/features/trip/ui/trips_gridview/trip_gridview_item_card.dart';
import 'package:flutter_amplify_app/models/Trip.dart';
import 'package:go_router/go_router.dart';

class TripGridViewItem extends StatelessWidget {
  const TripGridViewItem({
    required this.trip,
    super.key,
  });

  final Trip trip;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      onTap: () {
        context.goNamed(
          AppRoute.trip.name,
          pathParameters: {'id': trip.id},
          extra: trip,
        );
      },
      child: TripGridViewItemCard(
        trip: trip,
      ),
    );
  }
}
