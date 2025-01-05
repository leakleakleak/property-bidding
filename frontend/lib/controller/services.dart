import 'dart:convert';

import 'package:frontend/model.dart';
import 'package:http/http.dart' as http;

Future<UserBidsCount> fetchUserBids() async {
  final url = Uri.parse('http://localhost:3000/api/user-bids');

  try {
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final List<dynamic> jsonResponse = json.decode(response.body);

      if (jsonResponse.isEmpty) {
        throw Exception('No user bids available');
      }

      final UserBidsCount data =
          UserBidsCount.fromJson(jsonResponse[0] as Map<String, dynamic>);
      return data;
    } else {
      throw Exception(
          'Failed to load user bids. Status code: ${response.statusCode}');
    }
  } catch (e) {
    throw Exception('Failed to fetch user bids: $e');
  }
}

Future<List<PropertyListing>> fetchPropertyListing() async {
  final url = Uri.parse('http://localhost:3000/api/property-listings');

  try {
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final List<dynamic> jsonResponse = json.decode(response.body);

      if (jsonResponse.isEmpty) {
        throw Exception('No user bids available');
      }

      final List<PropertyListing> data =
          jsonResponse.map((json) => PropertyListing.fromJson(json)).toList();
      return data;
    } else {
      throw Exception(
          'Failed to load user bids. Status code: ${response.statusCode}');
    }
  } catch (e) {
    throw Exception('Failed to fetch user bids: $e');
  }
}

Future<List<LatestBid>> fetchLatestBids() async {
  final url = Uri.parse('http://localhost:3000/api/latest-bid');

  try {
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final List<dynamic> jsonResponse = json.decode(response.body);

      if (jsonResponse.isEmpty) {
        throw Exception('No bids available');
      }

      final List<LatestBid> data =
          jsonResponse.map((json) => LatestBid.fromJson(json)).toList();
      return data;
    } else {
      throw Exception(
          'Failed to load latest bids. Status code: ${response.statusCode}');
    }
  } catch (e) {
    throw Exception('Failed to fetch latest bids: $e');
  }
}
