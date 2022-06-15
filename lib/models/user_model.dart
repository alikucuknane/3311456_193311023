class UserModel {
  final String name,
      surname,
      mail,
      password,
      avatarPhoto,
      phone,
      isAdmin,
      isModerator,
      credit,
      isProducer;
  final List<String>? remoteDesktopIpAdress, remoteDeskopPasswords;
  final String? facebook,
      instagram,
      pinterest,
      twitter,
      linkedin,
      titktok,
      youtube; // Social Media
  final List<String> malls;
  final List<String>? viewed;
  UserModel({
    required this.name,
    required this.surname,
    required this.mail,
    required this.password,
    required this.avatarPhoto,
    required this.phone,
    required this.malls,
    required this.isAdmin,
    required this.isModerator,
    required this.credit,
    required this.isProducer,

    // Not required (Remote Desktop İnformation)
    this.remoteDesktopIpAdress,
    this.remoteDeskopPasswords,

    // Not required (Social Media Adress)
    this.facebook,
    this.instagram,
    this.pinterest,
    this.twitter,
    this.linkedin,
    this.titktok,
    this.youtube,

    // Education
    this.viewed,
  });
}
