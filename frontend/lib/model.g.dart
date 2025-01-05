// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PropertyListingImpl _$$PropertyListingImplFromJson(
        Map<String, dynamic> json) =>
    _$PropertyListingImpl(
      id: (json['id'] as num).toInt(),
      streetAddress: json['street_address'] as String,
      cityAddress: json['city_address'] as String,
      currentWinningBidAmount:
          (json['current_winning_bid_amount'] as num).toDouble(),
      lastBidValue: (json['last_bid_value'] as num).toDouble(),
      images: _decodeImages(json['images'] as String),
      latitude: (json['lat'] as num).toDouble(),
      longitude: (json['long'] as num).toDouble(),
    );

Map<String, dynamic> _$$PropertyListingImplToJson(
        _$PropertyListingImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'street_address': instance.streetAddress,
      'city_address': instance.cityAddress,
      'current_winning_bid_amount': instance.currentWinningBidAmount,
      'last_bid_value': instance.lastBidValue,
      'images': _encodeImages(instance.images),
      'lat': instance.latitude,
      'long': instance.longitude,
    };

_$UserBidsCountImpl _$$UserBidsCountImplFromJson(Map<String, dynamic> json) =>
    _$UserBidsCountImpl(
      id: (json['id'] as num).toInt(),
      outbidCounts: (json['outbid_counts'] as num).toInt(),
      activeCounts: (json['active_counts'] as num).toInt(),
      winningBidCounts: (json['winning_bid_counts'] as num).toInt(),
    );

Map<String, dynamic> _$$UserBidsCountImplToJson(_$UserBidsCountImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'outbid_counts': instance.outbidCounts,
      'active_counts': instance.activeCounts,
      'winning_bid_counts': instance.winningBidCounts,
    };

_$LatestBidImpl _$$LatestBidImplFromJson(Map<String, dynamic> json) =>
    _$LatestBidImpl(
      propertyId: (json['property_id'] as num).toInt(),
      latestBid: (json['latest_bid'] as num).toInt(),
    );

Map<String, dynamic> _$$LatestBidImplToJson(_$LatestBidImpl instance) =>
    <String, dynamic>{
      'property_id': instance.propertyId,
      'latest_bid': instance.latestBid,
    };
