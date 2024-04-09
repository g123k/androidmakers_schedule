import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart';

class PanelAPI {
  final Databases _db = Databases(
    Client()
      ..setEndpoint('https://cloud.appwrite.io/v1')
      ..setProject('660e67099781b107ea88')
      ..setSelfSigned(status: true),
  );

  Future<Iterable<PanelMessage>> getMessages() async {
    final DocumentList documentList = await _db.listDocuments(
      databaseId: '660e71585b13ddc9102d',
      collectionId: '660e71901f9f51a7b86e',
    );

    return documentList.documents
        .map((Document doc) => PanelMessage._fromDocument(doc));
  }
}

class PanelMessage {
  final String line1;
  final String? line2;
  final String? url;
  final String? image;
  final DateTime? startDate;
  final DateTime? endDate;

  PanelMessage(
    this.line1,
    this.line2,
    this.url,
    this.image,
    this.startDate,
    this.endDate,
  );

  PanelMessage._fromDocument(Document doc)
      : line1 = doc.data['line1'],
        line2 = doc.data['line2'],
        url = doc.data['link'],
        image = doc.data['image'],
        startDate = doc.data['startDate'] != null
            ? DateTime.tryParse(doc.data['startDate'])
            : null,
        endDate = doc.data['endDate'] != null
            ? DateTime.tryParse(doc.data['endDate'])
            : null;

  @override
  String toString() {
    return 'PanelMessage{line1: $line1, line2: $line2, url: $url, image: $image, startDate: $startDate, endDate: $endDate}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PanelMessage &&
          runtimeType == other.runtimeType &&
          line1 == other.line1 &&
          line2 == other.line2 &&
          url == other.url &&
          image == other.image &&
          startDate == other.startDate &&
          endDate == other.endDate;

  @override
  int get hashCode =>
      line1.hashCode ^
      line2.hashCode ^
      url.hashCode ^
      image.hashCode ^
      startDate.hashCode ^
      endDate.hashCode;
}
