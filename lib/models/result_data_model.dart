class ResultDataModel{
  ResultDataModel(this.date, this.title, this.size, this.time, {required this.docType});
  final String docType; // енум мб
  final String title; // плохое название
  final String size; // хз в чем его хранить
  final String date;
  final String time;
  // кол-во действующих
  // кол-во изменившихся
  // кол-во недействующих
}