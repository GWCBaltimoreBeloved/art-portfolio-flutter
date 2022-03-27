// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:art_portfolio_flutter/repository/artist/models/artist.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('properly parses from json', () {
    final mockJson = {
      'documentId': 'mockDocumentId',
      'userId': 'mockUserId',
      'firstName': 'mockFirstName',
      'lastName': 'mockLastName',
      'description': 'mockDescription',
      'instagram': 'mockInstagram',
      'github': 'mockGithub',
      'favoriteArt': [],
    };

    final artist = Artist.fromJson(mockJson);

    expect(artist.documentId, 'mockDocumentId');
    expect(artist.userId, 'mockUserId');
    expect(artist.firstName, 'mockFirstName');
    expect(artist.lastName, 'mockLastName');
    expect(artist.description, 'mockDescription');
    expect(artist.instagram, 'mockInstagram');
    expect(artist.github, 'mockGithub');
  });
  test('properly converts to json', () {
    final artist = Artist(
      userId: 'mockUserId',
      firstName: 'mockFirstName',
      lastName: 'mockLastName',
      description: 'mockDescription',
      instagram: 'mockInstagram',
      github: 'mockGithub',
      favoriteArt: [],
    );

    expect(artist.toJson(), {
      'documentId': '',
      'userId': 'mockUserId',
      'firstName': 'mockFirstName',
      'lastName': 'mockLastName',
      'description': 'mockDescription',
      'instagram': 'mockInstagram',
      'github': 'mockGithub',
      'favoriteArt': [],
    });
  });
}
