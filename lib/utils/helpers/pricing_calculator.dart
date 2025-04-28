
class PricingCalculator {
  PricingCalculator._();

  static double calculateTotalPrice(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    double shippingCharges = getShippingCost(location);
    double totalPrice = productPrice + taxAmount + shippingCharges;
    return totalPrice;
  }

  static String calculateShippingCost(double productPrice, String loacation) {
    double shippingCost = getShippingCost(loacation);
    return shippingCost.toStringAsFixed(2);
  }

  static String calculateTax(double productPrice, String location) {
    double taxRate = getTaxRateForLocation(location);
    double taxAmount = productPrice * taxRate;
    return taxAmount.toStringAsFixed(2);
  }

  static double getTaxRateForLocation(String location) {
    return 0.10;
  }

  static double getShippingCost(String location) {
    return 5.0;
  }
}
