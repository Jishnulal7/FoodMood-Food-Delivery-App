// ignore_for_file: prefer_const_constructors_in_immutables

part of 'autocomplete_bloc.dart';

abstract class AutocompleteEvent extends Equatable {
  const AutocompleteEvent();

  @override
  List<Object> get props => [];
}

class LoadAutocomplete extends AutocompleteEvent {
  final String searchInput;

  LoadAutocomplete({this.searchInput = ''});

  @override
  List<Object> get props => [searchInput];
}
