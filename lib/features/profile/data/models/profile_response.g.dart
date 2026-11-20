// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProfileReviewRestaurant _$ProfileReviewRestaurantFromJson(
  Map<String, dynamic> json,
) => _ProfileReviewRestaurant(
  id: json['id'] as String,
  name: json['name'] as String,
  coverUrl: json['cover_url'] as String?,
);

Map<String, dynamic> _$ProfileReviewRestaurantToJson(
  _ProfileReviewRestaurant instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'cover_url': instance.coverUrl,
};

_ProfileMyReview _$ProfileMyReviewFromJson(Map<String, dynamic> json) =>
    _ProfileMyReview(
      id: json['id'] as String,
      rating: (json['rating'] as num).toInt(),
      comment: json['comment'] as String?,
      createdLabel: json['created_label'] as String?,
      restaurant: ProfileReviewRestaurant.fromJson(
        json['restaurant'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$ProfileMyReviewToJson(_ProfileMyReview instance) =>
    <String, dynamic>{
      'id': instance.id,
      'rating': instance.rating,
      'comment': instance.comment,
      'created_label': instance.createdLabel,
      'restaurant': instance.restaurant,
    };

_ProfileResponse _$ProfileResponseFromJson(Map<String, dynamic> json) =>
    _ProfileResponse(
      user: SessionUser.fromJson(json['user'] as Map<String, dynamic>),
      reviewCount: (json['review_count'] as num).toInt(),
      myReviews:
          (json['my_reviews'] as List<dynamic>?)
              ?.map((e) => ProfileMyReview.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$ProfileResponseToJson(_ProfileResponse instance) =>
    <String, dynamic>{
      'user': instance.user,
      'review_count': instance.reviewCount,
      'my_reviews': instance.myReviews,
    };
