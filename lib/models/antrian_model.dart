class AntrianModel {
  final int no;
  final String id_users;
  final String nama_user;
  final String updateDate;

  AntrianModel(
      {required this.no,
      required this.id_users,
      required this.nama_user,
      required this.updateDate});

  factory AntrianModel.formJson(Map json) {
    return AntrianModel(
      no: json['no'],
      id_users: json['id_users'],
      nama_user: json['nama_user'],
      updateDate: json['updateDate'],
    );
  }
}
