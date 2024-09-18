import '../../../../core/bloc/bloc_core.dart';
import '../../../models/models.dart';

class LoadingState extends BaseState {}

class APIErrorState extends BaseState {
  final String message;
  final DashboardParams? params;
  APIErrorState(this.message, {this.params});
}
