class CustomResponseModel<T> {
  int? status;
  T? data;

  CustomResponseModel({this.status, this.data});

  CustomResponseModel.fromJson(Map<String, dynamic> json) {
    status = json['status'] ?? false;
    data = json['data'];
  }
}
