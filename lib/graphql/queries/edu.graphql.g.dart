// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edu.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Edu$Query$Mentors _$Edu$Query$MentorsFromJson(Map<String, dynamic> json) {
  return Edu$Query$Mentors()
    ..id = json['id'] as int
    ..adviserWomanOne = json['adviser_woman_one'] as String
    ..adviserWomanTwo = json['adviser_woman_two'] as String
    ..bio = json['bio'] as String
    ..email = json['email'] as String
    ..facebook = json['facebook'] as String
    ..firstname = json['firstname'] as String
    ..instagram = json['instagram'] as String
    ..lastname = json['lastname'] as String
    ..phone = json['phone'] as String
    ..photo = json['photo'] as String
    ..skype = json['skype'] as String
    ..twitter = json['twitter'] as String
    ..website = json['website'] as String;
}

Map<String, dynamic> _$Edu$Query$MentorsToJson(Edu$Query$Mentors instance) =>
    <String, dynamic>{
      'id': instance.id,
      'adviser_woman_one': instance.adviserWomanOne,
      'adviser_woman_two': instance.adviserWomanTwo,
      'bio': instance.bio,
      'email': instance.email,
      'facebook': instance.facebook,
      'firstname': instance.firstname,
      'instagram': instance.instagram,
      'lastname': instance.lastname,
      'phone': instance.phone,
      'photo': instance.photo,
      'skype': instance.skype,
      'twitter': instance.twitter,
      'website': instance.website,
    };

Edu$Query$StemLabTour _$Edu$Query$StemLabTourFromJson(
    Map<String, dynamic> json) {
  return Edu$Query$StemLabTour()
    ..id = json['id'] as int
    ..link = json['link'] as String
    ..news = json['news'] as String
    ..posterImage = json['poster_image'] as String
    ..title = json['title'] as String
    ..wideImage = json['wide_image'] as String;
}

Map<String, dynamic> _$Edu$Query$StemLabTourToJson(
        Edu$Query$StemLabTour instance) =>
    <String, dynamic>{
      'id': instance.id,
      'link': instance.link,
      'news': instance.news,
      'poster_image': instance.posterImage,
      'title': instance.title,
      'wide_image': instance.wideImage,
    };

Edu$Query$LutDirect _$Edu$Query$LutDirectFromJson(Map<String, dynamic> json) {
  return Edu$Query$LutDirect()
    ..id = json['id'] as int
    ..direct = json['direct'] as String;
}

Map<String, dynamic> _$Edu$Query$LutDirectToJson(
        Edu$Query$LutDirect instance) =>
    <String, dynamic>{
      'id': instance.id,
      'direct': instance.direct,
    };

Edu$Query$StemTest$SubFormTestQuestions$SubFormTestQuestionsAnswes
    _$Edu$Query$StemTest$SubFormTestQuestions$SubFormTestQuestionsAnswesFromJson(
        Map<String, dynamic> json) {
  return Edu$Query$StemTest$SubFormTestQuestions$SubFormTestQuestionsAnswes()
    ..id = json['id'] as int
    ..answers = json['answers'] as String
    ..questionsId = json['questions_id'] as int;
}

Map<String, dynamic>
    _$Edu$Query$StemTest$SubFormTestQuestions$SubFormTestQuestionsAnswesToJson(
            Edu$Query$StemTest$SubFormTestQuestions$SubFormTestQuestionsAnswes
                instance) =>
        <String, dynamic>{
          'id': instance.id,
          'answers': instance.answers,
          'questions_id': instance.questionsId,
        };

Edu$Query$StemTest$SubFormTestQuestions
    _$Edu$Query$StemTest$SubFormTestQuestionsFromJson(
        Map<String, dynamic> json) {
  return Edu$Query$StemTest$SubFormTestQuestions()
    ..id = json['id'] as int
    ..testId = json['test_id'] as int
    ..questions = json['questions'] as String
    ..subFormTestQuestionsAnswes = (json['sub_form_test_questions_answes']
            as List)
        ?.map((e) => e == null
            ? null
            : Edu$Query$StemTest$SubFormTestQuestions$SubFormTestQuestionsAnswes
                .fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$Edu$Query$StemTest$SubFormTestQuestionsToJson(
        Edu$Query$StemTest$SubFormTestQuestions instance) =>
    <String, dynamic>{
      'id': instance.id,
      'test_id': instance.testId,
      'questions': instance.questions,
      'sub_form_test_questions_answes': instance.subFormTestQuestionsAnswes
          ?.map((e) => e?.toJson())
          ?.toList(),
    };

Edu$Query$StemTest _$Edu$Query$StemTestFromJson(Map<String, dynamic> json) {
  return Edu$Query$StemTest()
    ..id = json['id'] as int
    ..catId = json['cat_id'] as int
    ..posterUpload = json['poster_upload'] as String
    ..title = json['title'] as String
    ..subFormTestQuestions = (json['sub_form_test_questions'] as List)
        ?.map((e) => e == null
            ? null
            : Edu$Query$StemTest$SubFormTestQuestions.fromJson(
                e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$Edu$Query$StemTestToJson(Edu$Query$StemTest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cat_id': instance.catId,
      'poster_upload': instance.posterUpload,
      'title': instance.title,
      'sub_form_test_questions':
          instance.subFormTestQuestions?.map((e) => e?.toJson())?.toList(),
    };

Edu$Query _$Edu$QueryFromJson(Map<String, dynamic> json) {
  return Edu$Query()
    ..mentors = (json['mentors'] as List)
        ?.map((e) => e == null
            ? null
            : Edu$Query$Mentors.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..stemLabTour = (json['stem_lab_tour'] as List)
        ?.map((e) => e == null
            ? null
            : Edu$Query$StemLabTour.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..lutDirect = (json['lut_direct'] as List)
        ?.map((e) => e == null
            ? null
            : Edu$Query$LutDirect.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..stemTest = (json['stem_test'] as List)
        ?.map((e) => e == null
            ? null
            : Edu$Query$StemTest.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$Edu$QueryToJson(Edu$Query instance) => <String, dynamic>{
      'mentors': instance.mentors?.map((e) => e?.toJson())?.toList(),
      'stem_lab_tour': instance.stemLabTour?.map((e) => e?.toJson())?.toList(),
      'lut_direct': instance.lutDirect?.map((e) => e?.toJson())?.toList(),
      'stem_test': instance.stemTest?.map((e) => e?.toJson())?.toList(),
    };
