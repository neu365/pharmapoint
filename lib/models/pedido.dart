class Pedido {
  int id;
  String title;
  double estimatedCost;
  int utilizadorId;
  int farmaceuticoId;
  DateTime requestTime;
  bool isAccepted;
  bool hasPrescription;
  int prescriptionNumber;

  Pedido({
    this.id,
    this.title,
    this.estimatedCost,
    this.utilizadorId,
    this.farmaceuticoId,
    this.requestTime,
    this.isAccepted,
    this.hasPrescription,
    this.prescriptionNumber,
  });
}
