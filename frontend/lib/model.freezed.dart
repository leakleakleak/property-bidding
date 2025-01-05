// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PropertyListing _$PropertyListingFromJson(Map<String, dynamic> json) {
  return _PropertyListing.fromJson(json);
}

/// @nodoc
mixin _$PropertyListing {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'street_address')
  String get streetAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'city_address')
  String get cityAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_winning_bid_amount')
  double get currentWinningBidAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_bid_value')
  double get lastBidValue => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _decodeImages, toJson: _encodeImages)
  List<String> get images => throw _privateConstructorUsedError;
  @JsonKey(name: 'lat')
  double get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'long')
  double get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PropertyListingCopyWith<PropertyListing> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyListingCopyWith<$Res> {
  factory $PropertyListingCopyWith(
          PropertyListing value, $Res Function(PropertyListing) then) =
      _$PropertyListingCopyWithImpl<$Res, PropertyListing>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'street_address') String streetAddress,
      @JsonKey(name: 'city_address') String cityAddress,
      @JsonKey(name: 'current_winning_bid_amount')
      double currentWinningBidAmount,
      @JsonKey(name: 'last_bid_value') double lastBidValue,
      @JsonKey(fromJson: _decodeImages, toJson: _encodeImages)
      List<String> images,
      @JsonKey(name: 'lat') double latitude,
      @JsonKey(name: 'long') double longitude});
}

/// @nodoc
class _$PropertyListingCopyWithImpl<$Res, $Val extends PropertyListing>
    implements $PropertyListingCopyWith<$Res> {
  _$PropertyListingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? streetAddress = null,
    Object? cityAddress = null,
    Object? currentWinningBidAmount = null,
    Object? lastBidValue = null,
    Object? images = null,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      streetAddress: null == streetAddress
          ? _value.streetAddress
          : streetAddress // ignore: cast_nullable_to_non_nullable
              as String,
      cityAddress: null == cityAddress
          ? _value.cityAddress
          : cityAddress // ignore: cast_nullable_to_non_nullable
              as String,
      currentWinningBidAmount: null == currentWinningBidAmount
          ? _value.currentWinningBidAmount
          : currentWinningBidAmount // ignore: cast_nullable_to_non_nullable
              as double,
      lastBidValue: null == lastBidValue
          ? _value.lastBidValue
          : lastBidValue // ignore: cast_nullable_to_non_nullable
              as double,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PropertyListingImplCopyWith<$Res>
    implements $PropertyListingCopyWith<$Res> {
  factory _$$PropertyListingImplCopyWith(_$PropertyListingImpl value,
          $Res Function(_$PropertyListingImpl) then) =
      __$$PropertyListingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'street_address') String streetAddress,
      @JsonKey(name: 'city_address') String cityAddress,
      @JsonKey(name: 'current_winning_bid_amount')
      double currentWinningBidAmount,
      @JsonKey(name: 'last_bid_value') double lastBidValue,
      @JsonKey(fromJson: _decodeImages, toJson: _encodeImages)
      List<String> images,
      @JsonKey(name: 'lat') double latitude,
      @JsonKey(name: 'long') double longitude});
}

/// @nodoc
class __$$PropertyListingImplCopyWithImpl<$Res>
    extends _$PropertyListingCopyWithImpl<$Res, _$PropertyListingImpl>
    implements _$$PropertyListingImplCopyWith<$Res> {
  __$$PropertyListingImplCopyWithImpl(
      _$PropertyListingImpl _value, $Res Function(_$PropertyListingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? streetAddress = null,
    Object? cityAddress = null,
    Object? currentWinningBidAmount = null,
    Object? lastBidValue = null,
    Object? images = null,
    Object? latitude = null,
    Object? longitude = null,
  }) {
    return _then(_$PropertyListingImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      streetAddress: null == streetAddress
          ? _value.streetAddress
          : streetAddress // ignore: cast_nullable_to_non_nullable
              as String,
      cityAddress: null == cityAddress
          ? _value.cityAddress
          : cityAddress // ignore: cast_nullable_to_non_nullable
              as String,
      currentWinningBidAmount: null == currentWinningBidAmount
          ? _value.currentWinningBidAmount
          : currentWinningBidAmount // ignore: cast_nullable_to_non_nullable
              as double,
      lastBidValue: null == lastBidValue
          ? _value.lastBidValue
          : lastBidValue // ignore: cast_nullable_to_non_nullable
              as double,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PropertyListingImpl
    with DiagnosticableTreeMixin
    implements _PropertyListing {
  _$PropertyListingImpl(
      {required this.id,
      @JsonKey(name: 'street_address') required this.streetAddress,
      @JsonKey(name: 'city_address') required this.cityAddress,
      @JsonKey(name: 'current_winning_bid_amount')
      required this.currentWinningBidAmount,
      @JsonKey(name: 'last_bid_value') required this.lastBidValue,
      @JsonKey(fromJson: _decodeImages, toJson: _encodeImages)
      required final List<String> images,
      @JsonKey(name: 'lat') required this.latitude,
      @JsonKey(name: 'long') required this.longitude})
      : _images = images;

  factory _$PropertyListingImpl.fromJson(Map<String, dynamic> json) =>
      _$$PropertyListingImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'street_address')
  final String streetAddress;
  @override
  @JsonKey(name: 'city_address')
  final String cityAddress;
  @override
  @JsonKey(name: 'current_winning_bid_amount')
  final double currentWinningBidAmount;
  @override
  @JsonKey(name: 'last_bid_value')
  final double lastBidValue;
  final List<String> _images;
  @override
  @JsonKey(fromJson: _decodeImages, toJson: _encodeImages)
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  @JsonKey(name: 'lat')
  final double latitude;
  @override
  @JsonKey(name: 'long')
  final double longitude;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PropertyListing(id: $id, streetAddress: $streetAddress, cityAddress: $cityAddress, currentWinningBidAmount: $currentWinningBidAmount, lastBidValue: $lastBidValue, images: $images, latitude: $latitude, longitude: $longitude)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PropertyListing'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('streetAddress', streetAddress))
      ..add(DiagnosticsProperty('cityAddress', cityAddress))
      ..add(DiagnosticsProperty(
          'currentWinningBidAmount', currentWinningBidAmount))
      ..add(DiagnosticsProperty('lastBidValue', lastBidValue))
      ..add(DiagnosticsProperty('images', images))
      ..add(DiagnosticsProperty('latitude', latitude))
      ..add(DiagnosticsProperty('longitude', longitude));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropertyListingImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.streetAddress, streetAddress) ||
                other.streetAddress == streetAddress) &&
            (identical(other.cityAddress, cityAddress) ||
                other.cityAddress == cityAddress) &&
            (identical(
                    other.currentWinningBidAmount, currentWinningBidAmount) ||
                other.currentWinningBidAmount == currentWinningBidAmount) &&
            (identical(other.lastBidValue, lastBidValue) ||
                other.lastBidValue == lastBidValue) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      streetAddress,
      cityAddress,
      currentWinningBidAmount,
      lastBidValue,
      const DeepCollectionEquality().hash(_images),
      latitude,
      longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PropertyListingImplCopyWith<_$PropertyListingImpl> get copyWith =>
      __$$PropertyListingImplCopyWithImpl<_$PropertyListingImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PropertyListingImplToJson(
      this,
    );
  }
}

abstract class _PropertyListing implements PropertyListing {
  factory _PropertyListing(
          {required final int id,
          @JsonKey(name: 'street_address') required final String streetAddress,
          @JsonKey(name: 'city_address') required final String cityAddress,
          @JsonKey(name: 'current_winning_bid_amount')
          required final double currentWinningBidAmount,
          @JsonKey(name: 'last_bid_value') required final double lastBidValue,
          @JsonKey(fromJson: _decodeImages, toJson: _encodeImages)
          required final List<String> images,
          @JsonKey(name: 'lat') required final double latitude,
          @JsonKey(name: 'long') required final double longitude}) =
      _$PropertyListingImpl;

  factory _PropertyListing.fromJson(Map<String, dynamic> json) =
      _$PropertyListingImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'street_address')
  String get streetAddress;
  @override
  @JsonKey(name: 'city_address')
  String get cityAddress;
  @override
  @JsonKey(name: 'current_winning_bid_amount')
  double get currentWinningBidAmount;
  @override
  @JsonKey(name: 'last_bid_value')
  double get lastBidValue;
  @override
  @JsonKey(fromJson: _decodeImages, toJson: _encodeImages)
  List<String> get images;
  @override
  @JsonKey(name: 'lat')
  double get latitude;
  @override
  @JsonKey(name: 'long')
  double get longitude;
  @override
  @JsonKey(ignore: true)
  _$$PropertyListingImplCopyWith<_$PropertyListingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserBidsCount _$UserBidsCountFromJson(Map<String, dynamic> json) {
  return _UserBidsCount.fromJson(json);
}

/// @nodoc
mixin _$UserBidsCount {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'outbid_counts')
  int get outbidCounts => throw _privateConstructorUsedError;
  @JsonKey(name: 'active_counts')
  int get activeCounts => throw _privateConstructorUsedError;
  @JsonKey(name: 'winning_bid_counts')
  int get winningBidCounts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserBidsCountCopyWith<UserBidsCount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserBidsCountCopyWith<$Res> {
  factory $UserBidsCountCopyWith(
          UserBidsCount value, $Res Function(UserBidsCount) then) =
      _$UserBidsCountCopyWithImpl<$Res, UserBidsCount>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'outbid_counts') int outbidCounts,
      @JsonKey(name: 'active_counts') int activeCounts,
      @JsonKey(name: 'winning_bid_counts') int winningBidCounts});
}

/// @nodoc
class _$UserBidsCountCopyWithImpl<$Res, $Val extends UserBidsCount>
    implements $UserBidsCountCopyWith<$Res> {
  _$UserBidsCountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? outbidCounts = null,
    Object? activeCounts = null,
    Object? winningBidCounts = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      outbidCounts: null == outbidCounts
          ? _value.outbidCounts
          : outbidCounts // ignore: cast_nullable_to_non_nullable
              as int,
      activeCounts: null == activeCounts
          ? _value.activeCounts
          : activeCounts // ignore: cast_nullable_to_non_nullable
              as int,
      winningBidCounts: null == winningBidCounts
          ? _value.winningBidCounts
          : winningBidCounts // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserBidsCountImplCopyWith<$Res>
    implements $UserBidsCountCopyWith<$Res> {
  factory _$$UserBidsCountImplCopyWith(
          _$UserBidsCountImpl value, $Res Function(_$UserBidsCountImpl) then) =
      __$$UserBidsCountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'outbid_counts') int outbidCounts,
      @JsonKey(name: 'active_counts') int activeCounts,
      @JsonKey(name: 'winning_bid_counts') int winningBidCounts});
}

/// @nodoc
class __$$UserBidsCountImplCopyWithImpl<$Res>
    extends _$UserBidsCountCopyWithImpl<$Res, _$UserBidsCountImpl>
    implements _$$UserBidsCountImplCopyWith<$Res> {
  __$$UserBidsCountImplCopyWithImpl(
      _$UserBidsCountImpl _value, $Res Function(_$UserBidsCountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? outbidCounts = null,
    Object? activeCounts = null,
    Object? winningBidCounts = null,
  }) {
    return _then(_$UserBidsCountImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      outbidCounts: null == outbidCounts
          ? _value.outbidCounts
          : outbidCounts // ignore: cast_nullable_to_non_nullable
              as int,
      activeCounts: null == activeCounts
          ? _value.activeCounts
          : activeCounts // ignore: cast_nullable_to_non_nullable
              as int,
      winningBidCounts: null == winningBidCounts
          ? _value.winningBidCounts
          : winningBidCounts // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserBidsCountImpl
    with DiagnosticableTreeMixin
    implements _UserBidsCount {
  _$UserBidsCountImpl(
      {required this.id,
      @JsonKey(name: 'outbid_counts') required this.outbidCounts,
      @JsonKey(name: 'active_counts') required this.activeCounts,
      @JsonKey(name: 'winning_bid_counts') required this.winningBidCounts});

  factory _$UserBidsCountImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserBidsCountImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'outbid_counts')
  final int outbidCounts;
  @override
  @JsonKey(name: 'active_counts')
  final int activeCounts;
  @override
  @JsonKey(name: 'winning_bid_counts')
  final int winningBidCounts;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserBidsCount(id: $id, outbidCounts: $outbidCounts, activeCounts: $activeCounts, winningBidCounts: $winningBidCounts)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserBidsCount'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('outbidCounts', outbidCounts))
      ..add(DiagnosticsProperty('activeCounts', activeCounts))
      ..add(DiagnosticsProperty('winningBidCounts', winningBidCounts));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserBidsCountImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.outbidCounts, outbidCounts) ||
                other.outbidCounts == outbidCounts) &&
            (identical(other.activeCounts, activeCounts) ||
                other.activeCounts == activeCounts) &&
            (identical(other.winningBidCounts, winningBidCounts) ||
                other.winningBidCounts == winningBidCounts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, outbidCounts, activeCounts, winningBidCounts);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserBidsCountImplCopyWith<_$UserBidsCountImpl> get copyWith =>
      __$$UserBidsCountImplCopyWithImpl<_$UserBidsCountImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserBidsCountImplToJson(
      this,
    );
  }
}

abstract class _UserBidsCount implements UserBidsCount {
  factory _UserBidsCount(
      {required final int id,
      @JsonKey(name: 'outbid_counts') required final int outbidCounts,
      @JsonKey(name: 'active_counts') required final int activeCounts,
      @JsonKey(name: 'winning_bid_counts')
      required final int winningBidCounts}) = _$UserBidsCountImpl;

  factory _UserBidsCount.fromJson(Map<String, dynamic> json) =
      _$UserBidsCountImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'outbid_counts')
  int get outbidCounts;
  @override
  @JsonKey(name: 'active_counts')
  int get activeCounts;
  @override
  @JsonKey(name: 'winning_bid_counts')
  int get winningBidCounts;
  @override
  @JsonKey(ignore: true)
  _$$UserBidsCountImplCopyWith<_$UserBidsCountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LatestBid _$LatestBidFromJson(Map<String, dynamic> json) {
  return _LatestBid.fromJson(json);
}

/// @nodoc
mixin _$LatestBid {
  @JsonKey(name: 'property_id')
  int get propertyId => throw _privateConstructorUsedError;
  @JsonKey(name: 'latest_bid')
  int get latestBid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LatestBidCopyWith<LatestBid> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LatestBidCopyWith<$Res> {
  factory $LatestBidCopyWith(LatestBid value, $Res Function(LatestBid) then) =
      _$LatestBidCopyWithImpl<$Res, LatestBid>;
  @useResult
  $Res call(
      {@JsonKey(name: 'property_id') int propertyId,
      @JsonKey(name: 'latest_bid') int latestBid});
}

/// @nodoc
class _$LatestBidCopyWithImpl<$Res, $Val extends LatestBid>
    implements $LatestBidCopyWith<$Res> {
  _$LatestBidCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? propertyId = null,
    Object? latestBid = null,
  }) {
    return _then(_value.copyWith(
      propertyId: null == propertyId
          ? _value.propertyId
          : propertyId // ignore: cast_nullable_to_non_nullable
              as int,
      latestBid: null == latestBid
          ? _value.latestBid
          : latestBid // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LatestBidImplCopyWith<$Res>
    implements $LatestBidCopyWith<$Res> {
  factory _$$LatestBidImplCopyWith(
          _$LatestBidImpl value, $Res Function(_$LatestBidImpl) then) =
      __$$LatestBidImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'property_id') int propertyId,
      @JsonKey(name: 'latest_bid') int latestBid});
}

/// @nodoc
class __$$LatestBidImplCopyWithImpl<$Res>
    extends _$LatestBidCopyWithImpl<$Res, _$LatestBidImpl>
    implements _$$LatestBidImplCopyWith<$Res> {
  __$$LatestBidImplCopyWithImpl(
      _$LatestBidImpl _value, $Res Function(_$LatestBidImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? propertyId = null,
    Object? latestBid = null,
  }) {
    return _then(_$LatestBidImpl(
      propertyId: null == propertyId
          ? _value.propertyId
          : propertyId // ignore: cast_nullable_to_non_nullable
              as int,
      latestBid: null == latestBid
          ? _value.latestBid
          : latestBid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LatestBidImpl with DiagnosticableTreeMixin implements _LatestBid {
  _$LatestBidImpl(
      {@JsonKey(name: 'property_id') required this.propertyId,
      @JsonKey(name: 'latest_bid') required this.latestBid});

  factory _$LatestBidImpl.fromJson(Map<String, dynamic> json) =>
      _$$LatestBidImplFromJson(json);

  @override
  @JsonKey(name: 'property_id')
  final int propertyId;
  @override
  @JsonKey(name: 'latest_bid')
  final int latestBid;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'LatestBid(propertyId: $propertyId, latestBid: $latestBid)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'LatestBid'))
      ..add(DiagnosticsProperty('propertyId', propertyId))
      ..add(DiagnosticsProperty('latestBid', latestBid));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LatestBidImpl &&
            (identical(other.propertyId, propertyId) ||
                other.propertyId == propertyId) &&
            (identical(other.latestBid, latestBid) ||
                other.latestBid == latestBid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, propertyId, latestBid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LatestBidImplCopyWith<_$LatestBidImpl> get copyWith =>
      __$$LatestBidImplCopyWithImpl<_$LatestBidImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LatestBidImplToJson(
      this,
    );
  }
}

abstract class _LatestBid implements LatestBid {
  factory _LatestBid(
          {@JsonKey(name: 'property_id') required final int propertyId,
          @JsonKey(name: 'latest_bid') required final int latestBid}) =
      _$LatestBidImpl;

  factory _LatestBid.fromJson(Map<String, dynamic> json) =
      _$LatestBidImpl.fromJson;

  @override
  @JsonKey(name: 'property_id')
  int get propertyId;
  @override
  @JsonKey(name: 'latest_bid')
  int get latestBid;
  @override
  @JsonKey(ignore: true)
  _$$LatestBidImplCopyWith<_$LatestBidImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
