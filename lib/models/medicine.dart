class Medicine {
String trade_name;
int price;
String image;
int quantity;
String? ScientificName;
String? category;
String? company;
String? expirationDate;
Medicine(
    {required this.trade_name,
      this.ScientificName,
      this.category,
      this.company,
      this.expirationDate,
      required this.price,
      required this.image,
      required this.quantity});
}
