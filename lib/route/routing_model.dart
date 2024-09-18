class RoutingModel {
  final Type? page;
  final bool initial;
  final bool authenticated;
  final List<String>? roles;
  final List<String>? permissions;

  RoutingModel(this.page, { this.initial = false, this.authenticated = false, this.roles, this.permissions });
}

class RouteAuthorization {
  final List<String> roles;
  final List<String> permissions;

  RouteAuthorization({required this.roles, required this.permissions});
}