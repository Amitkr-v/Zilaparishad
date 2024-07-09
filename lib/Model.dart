class SchemeItem {
  String _id;
  String _fh;
  String _fy;
  String _sn;
  String _status;

  SchemeItem({
    required String id,
    required String fh,
    required String fy,
    required String sn,
    required String status,
  })  : _id = id,
        _fh = fh,
        _fy = fy,
        _sn = sn,
        _status=status;

  // Getters
  String get id => _id;
  String get fh => _fh;
  String get fy => _fy;
  String get sn => _sn;
  String get status =>_status;

  // Setters
  set id(String value) {
    _id = value;
  }

  set fh(String value) {
    _fh = value;
  }

  set fy(String value) {
    _fy = value;
  }

  set sn(String value) {
    _fh = value;
  }
  set status(String value) {
    _status = value;
  }
}
