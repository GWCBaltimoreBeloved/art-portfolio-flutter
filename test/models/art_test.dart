// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:art_portfolio_flutter/repository/art/models/art.dart';
import 'package:art_portfolio_flutter/repository/artist/models/artist.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('properly parses from json', () {
    final mockJson = {
      'documentId': 'mockDocumentId',
      'name': 'mockName',
      'description': 'mockDescription',
      'downloadUrl': 'mockDownloadUrl',
      'firebaseStoragePath': 'mockFirebaseStoragePath',
      'artist': {
        'documentId': 'mockDocumentId',
        'userId': 'mockUserId',
        'firstName': 'mockFirstName',
        'lastName': 'mockLastName',
        'description': 'mockDescription',
        'instagram': 'mockInstagram',
        'github': 'mockGithub',
        'favoriteArt': [],
      },
    };
    final art = Art.fromJson(mockJson);

    expect(art.documentId, 'mockDocumentId');
    expect(art.name, 'mockName');
    expect(art.description, 'mockDescription');
    expect(art.downloadUrl, 'mockDownloadUrl');
    expect(art.firebaseStoragePath, 'mockFirebaseStoragePath');
    expect(art.artist.documentId, 'mockDocumentId');
    expect(art.artist.userId, 'mockUserId');
    expect(art.artist.firstName, 'mockFirstName');
    expect(art.artist.lastName, 'mockLastName');
    expect(art.artist.description, 'mockDescription');
    expect(art.artist.instagram, 'mockInstagram');
    expect(art.artist.github, 'mockGithub');
  });
  test('properly converts to json', () {
    final art = Art(
      name: 'mockName',
      description: 'mockDescription',
      downloadUrl: 'mockDownloadUrl',
      firebaseStoragePath: 'mockFirebaseStoragePath',
      artist: Artist(
        userId: 'mockUserId',
        firstName: 'mockFirstName',
        lastName: 'mockLastName',
        description: 'mockDescription',
        instagram: 'mockInstagram',
        github: 'mockGithub',
        favoriteArt: [],
      ),
    );

    expect(
      art.toJson(),
      {
        'documentId': '',
        'name': 'mockName',
        'description': 'mockDescription',
        'downloadUrl': 'mockDownloadUrl',
        'firebaseStoragePath': 'mockFirebaseStoragePath',
        'artist': {
          'documentId': '',
          'userId': 'mockUserId',
          'firstName': 'mockFirstName',
          'lastName': 'mockLastName',
          'description': 'mockDescription',
          'instagram': 'mockInstagram',
          'github': 'mockGithub',
          'favoriteArt': [],
        }
      },
    );
  });
}
