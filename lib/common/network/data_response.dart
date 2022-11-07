class DataResponse<T> {
  DataResponse.error(this.message) : isSuccess = 0;
  DataResponse.success(this.data) : isSuccess = 1;
  DataResponse.loading(this.message) : isSuccess = 0;

  int isSuccess;
  T? data;
  String? message;

  @override
  String toString() {
    return 'IsSuccess : ${isSuccess == 1} \n'
        ' Message : $message \n Data : $data';
  }
}
