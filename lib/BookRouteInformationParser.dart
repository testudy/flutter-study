import 'package:flutter/material.dart';
import './BookRoutePath.dart';

class BookRouteInformationParser extends RouteInformationParser<BookRoutePath> {
  @override
  Future<BookRoutePath> parseRouteInformation(RouteInformation routeInformation) async {
    final uri = Uri.parse(routeInformation.location ?? '');

    if (uri.pathSegments.length >= 2) {
      final remaining = uri.pathSegments[1];

      return BookRoutePath.details(int.tryParse(remaining));
    }

    return BookRoutePath.home();
  }

  @override
  RouteInformation restoreRouteInformation(BookRoutePath path) {
    if (path.isDetailsPage) {
      return RouteInformation(location: '/book/${path.id}');
    }

    return RouteInformation(location: '/');
  }
}
