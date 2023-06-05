class Cars{
  String carId, carBrand, carNameKurdish, carNameEnglish, carNameArabic;

  Cars(this.carId, {required this.carBrand,
   required this.carNameKurdish, required this.carNameEnglish, required this.carNameArabic});


  Cars.fromJson(Map<String, dynamic> json) : this(
    json['car_id'],
    carBrand: json['car_brand'],
    carNameKurdish: json['car_name_kurdish'],
    carNameArabic: json['car_name_arabic'],
    carNameEnglish: json['car_name_english']
  );

  Map<String, dynamic> toJson() => {
    'car_id': carId,
    'car_brand': carBrand,
    'car_name_kurdish': carNameKurdish,
    'car_name_arabic': carNameArabic,
    'car_name_english': carNameEnglish
  };

}