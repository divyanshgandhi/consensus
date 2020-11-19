class User {
  String _phone;
  String _firstName;
  String _lastName;
  String _uid;
  String _privateKey;
  String _publicKey;
  String _address;
  String _photoUrl;

  User(phone, firstName, lastName, uid, privateKey, publicKey, address,
      photoUrl) {
    this._phone = phone;
    this._firstName = firstName;
    this._lastName = lastName;
    this._uid = uid;
    this._privateKey = privateKey;
    this._publicKey = publicKey;
    this._address = address;
    this._photoUrl = photoUrl;
  }

  String getPhone() {
    return _phone;
  }

  //TODO: Define getters and setters
}
