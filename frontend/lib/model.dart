// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'model.freezed.dart';
part 'model.g.dart';

@freezed
class PropertyListing with _$PropertyListing {
  factory PropertyListing({
    required int id,
    @JsonKey(name: 'street_address') required String streetAddress,
    @JsonKey(name: 'city_address') required String cityAddress,
    @JsonKey(name: 'current_winning_bid_amount')
    required double currentWinningBidAmount,
    @JsonKey(name: 'last_bid_value') required double lastBidValue,
    @JsonKey(fromJson: _decodeImages, toJson: _encodeImages)
    required List<String> images,
    @JsonKey(name: 'lat') required double latitude,
    @JsonKey(name: 'long') required double longitude,
  }) = _PropertyListing;

  factory PropertyListing.fromJson(Map<String, dynamic> json) =>
      _$PropertyListingFromJson(json);
}

// Helper functions for decoding and encoding the JSON string for images
List<String> _decodeImages(String images) =>
    List<String>.from(jsonDecode(images));
String _encodeImages(List<String> images) => jsonEncode(images);

@freezed
class UserBidsCount with _$UserBidsCount {
  factory UserBidsCount({
    required int id,
    @JsonKey(name: 'outbid_counts') required int outbidCounts,
    @JsonKey(name: 'active_counts') required int activeCounts,
    @JsonKey(name: 'winning_bid_counts') required int winningBidCounts,
  }) = _UserBidsCount;

  factory UserBidsCount.fromJson(Map<String, dynamic> json) =>
      _$UserBidsCountFromJson(json);
}

@freezed
class LatestBid with _$LatestBid {
  factory LatestBid({
    @JsonKey(name: 'property_id') required int propertyId,
    @JsonKey(name: 'latest_bid') required int latestBid,
  }) = _LatestBid;

  factory LatestBid.fromJson(Map<String, dynamic> json) =>
      _$LatestBidFromJson(json);
}
