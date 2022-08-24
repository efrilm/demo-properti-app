class TrackingModel {
  final String? id_tracking;
  final String? id_user;
  final String? id_lead;
  final String? keterangan;

  final String? tgl;
  final String? nama_user;

  TrackingModel(
      {this.id_tracking,
      this.id_user,
      this.id_lead,
      this.keterangan,
      this.tgl,
      this.nama_user});

  factory TrackingModel.fromJson(Map json) {
    return TrackingModel(
        id_tracking: json['id_tracking'],
        id_user: json['id_user'],
        id_lead: json['id_lead'],
        keterangan: json['keterangan'],
        tgl: json['tgl'],
        nama_user: json['nama_user']);
  }
}
