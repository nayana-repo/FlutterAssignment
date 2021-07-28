class BaseResponse {

  static const String SUCCESS = "success";
  static const String ERROR = "error";

  String status;
  String error;
  String message;

  BaseResponse({this.status, this.error, this.message});

  BaseResponse.fromJson(Map<String, dynamic> json) {
    fromJson(json);
  }

  fromJson(Map<String, dynamic> json) {
    status = json['status'];
    error = json['error'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['error'] = this.error;
    data['message'] = this.message;
    return data;
  }

  bool isSuccess() => status != null && status == SUCCESS;
}
