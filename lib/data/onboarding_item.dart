import 'package:shop_app/model/onboarding.dart';
import 'package:shop_app/core/constant/image.dart';

class ListData {
  ListData._();
  static final ListData instance = ListData._();
  List<OnBoarding> items = [
    OnBoarding(
        title: "Choose Product",
        details:
            "A product is the item offered for sale.\n A product can be a service or an item. It can be \n physical or in virtual or cyber form",
        image: ImageUrl.image1),
    OnBoarding(
        title: "Make Payment",
        details:
            "Payment is the transfer of money \n services in exchange product or Payments \n typically made terms agreed",
        image: ImageUrl.image2),
    OnBoarding(
        title: "Get Your Order",
        details:
            "Business or commerce an order is a stated \n intention either spoken to engage in a \n commercial transaction specific products",
        image: ImageUrl.image3),
  ];
}
