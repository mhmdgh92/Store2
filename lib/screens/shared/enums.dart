enum OrderStatus {
  completed,
  waiting,
  canceled,
}

enum ValidationType{
  Email,
  Name,
  Password,
  Address
}

enum ProcessCondition{
  Waiting,
  Processing,
  Completed
}

enum OrderingStatus{
  ChoosingMethod,
  AddingAddress,
  Billing,
  Sent
}

enum OrderProductStatus{
  Checking,
  Confirmed,
  Preparing,
  Shipped,
  Delivered
}

enum OrderDeliveryMethod{
  FromStoreHouse,
  HomeDelivery
}