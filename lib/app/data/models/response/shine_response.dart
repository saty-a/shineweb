class Shine {
  final int? code;
  final String? message;
  final List<Result>? result;
  final int? count;

  Shine({
    this.code,
    this.message,
    this.result,
    this.count,
  });

  Shine.fromJson(Map<String, dynamic> json)
      : code = json['code'] as int?,
        message = json['message'] as String?,
        result = (json['result'] as List?)?.map((dynamic e) => Result.fromJson(e as Map<String,dynamic>)).toList(),
        count = json['count'] as int?;

  Map<String, dynamic> toJson() => {
    'code' : code,
    'message' : message,
    'result' : result?.map((e) => e.toJson()).toList(),
    'count' : count
  };
}

class Result {
  final TargetAge? targetAge;
  final String? id;
  final String? postType;
  final UserId? userId;
  final String? firstImage;
  final String? secondImage;
  final String? firstLabel;
  final String? secondLabel;
  final int? firstCount;
  final int? secondCount;
  final int? views;
  final String? text;
  final List<String>? labels;
  final List<dynamic>? targetCountries;
  final String? targetGender;
  final bool? underReview;
  final int? sharedCount;
  final bool? active;
  final bool? delete;
  final bool? isImageDeleted;
  final bool? labelAdded;
  final String? createdAt;
  final String? updatedAt;
  final int? v;

  Result({
    this.targetAge,
    this.id,
    this.postType,
    this.userId,
    this.firstImage,
    this.secondImage,
    this.firstLabel,
    this.secondLabel,
    this.firstCount,
    this.secondCount,
    this.views,
    this.text,
    this.labels,
    this.targetCountries,
    this.targetGender,
    this.underReview,
    this.sharedCount,
    this.active,
    this.delete,
    this.isImageDeleted,
    this.labelAdded,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  Result.fromJson(Map<String, dynamic> json)
      : targetAge = (json['targetAge'] as Map<String,dynamic>?) != null ? TargetAge.fromJson(json['targetAge'] as Map<String,dynamic>) : null,
        id = json['_id'] as String?,
        postType = json['postType'] as String?,
        userId = (json['userId'] as Map<String,dynamic>?) != null ? UserId.fromJson(json['userId'] as Map<String,dynamic>) : null,
        firstImage = json['firstImage'] as String?,
        secondImage = json['secondImage'] as String?,
        firstLabel = json['firstLabel'] as String?,
        secondLabel = json['secondLabel'] as String?,
        firstCount = json['firstCount'] as int?,
        secondCount = json['secondCount'] as int?,
        views = json['views'] as int?,
        text = json['text'] as String?,
        labels = (json['labels'] as List?)?.map((dynamic e) => e as String).toList(),
        targetCountries = json['targetCountries'] as List?,
        targetGender = json['targetGender'] as String?,
        underReview = json['underReview'] as bool?,
        sharedCount = json['sharedCount'] as int?,
        active = json['active'] as bool?,
        delete = json['delete'] as bool?,
        isImageDeleted = json['isImageDeleted'] as bool?,
        labelAdded = json['labelAdded'] as bool?,
        createdAt = json['createdAt'] as String?,
        updatedAt = json['updatedAt'] as String?,
        v = json['__v'] as int?;

  Map<String, dynamic> toJson() => {
    'targetAge' : targetAge?.toJson(),
    '_id' : id,
    'postType' : postType,
    'userId' : userId?.toJson(),
    'firstImage' : firstImage,
    'secondImage' : secondImage,
    'firstLabel' : firstLabel,
    'secondLabel' : secondLabel,
    'firstCount' : firstCount,
    'secondCount' : secondCount,
    'views' : views,
    'text' : text,
    'labels' : labels,
    'targetCountries' : targetCountries,
    'targetGender' : targetGender,
    'underReview' : underReview,
    'sharedCount' : sharedCount,
    'active' : active,
    'delete' : delete,
    'isImageDeleted' : isImageDeleted,
    'labelAdded' : labelAdded,
    'createdAt' : createdAt,
    'updatedAt' : updatedAt,
    '__v' : v
  };
}

class TargetAge {
  final int? startRange;
  final int? endRange;

  TargetAge({
    this.startRange,
    this.endRange,
  });

  TargetAge.fromJson(Map<String, dynamic> json)
      : startRange = json['startRange'] as int?,
        endRange = json['endRange'] as int?;

  Map<String, dynamic> toJson() => {
    'startRange' : startRange,
    'endRange' : endRange
  };
}

class UserId {
  final String? id;
  final String? email;
  final String? fullName;
  final bool? isSubscription;

  UserId({
    this.id,
    this.email,
    this.fullName,
    this.isSubscription,
  });

  UserId.fromJson(Map<String, dynamic> json)
      : id = json['_id'] as String?,
        email = json['email'] as String?,
        fullName = json['fullName'] as String?,
        isSubscription = json['isSubscription'] as bool?;

  Map<String, dynamic> toJson() => {
    '_id' : id,
    'email' : email,
    'fullName' : fullName,
    'isSubscription' : isSubscription
  };
}