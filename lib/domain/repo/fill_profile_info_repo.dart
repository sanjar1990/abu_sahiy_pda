abstract class FillProfileInfoRepo{
  Future<void>setFullName(String fullName);
  String getFullName();

  Future<void>setNickName(String nickName);
  String getNickName();

  Future<void>setBirthDate(String birthDate);
  String getBirthDate();

  Future<void>setEmail(String email);
  String getEmail();

  Future<void>setGender(String gender);
  String getGender();

  Future<void>setImagePath(String imagePath);
  String getImagePath();

}