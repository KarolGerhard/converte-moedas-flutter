import 'dart:convert';

class ConverteAiModel{
  String base;
  Map<String, double> rates;
  String date;

  ConverteAiModel({this.base, this.date, this.rates});

  ConverteAiModel.fromJson(Map<String, dynamic> json){
    base = json['base'];
    rates = json['rates'].cast<String, double>();
    date = json['date'];
  }

  Map<String, dynamic> toJson(){
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['base'] = this.base;
    data['rates'] = this.rates;
    data['date'] = this.date;
    return data;
  }

   @override
  String toString() {
    return 'ConverteAi{base: $base, rates: $rates, date: $date';
  }

}