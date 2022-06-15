class SupportModel {
  final String customerId,
      customerName,
      customerSurname,
      problem,
      depertment,
      urgency,
      status,
      startingTime;
  final String? endTime;
  SupportModel({
    required this.customerId,
    required this.customerName,
    required this.customerSurname,
    required this.problem,
    required this.depertment,
    required this.urgency,
    required this.status,
    required this.startingTime,
    this.endTime,
  });
}
