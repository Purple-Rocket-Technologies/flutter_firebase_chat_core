import 'package:flutter_chat_types/flutter_chat_types.dart' as types;

class MyTextMessage extends types.TextMessage {
  final String messageTestField;

  const MyTextMessage({
    required types.User author,
    int? createdAt,
    required String id,
    Map<String, dynamic>? metadata,
    types.PreviewData? previewData,
    String? remoteId,
    String? roomId,
    types.Status? status,
    required String text,
    types.MessageType? type,
    int? updatedAt,
    this.messageTestField = "test-field",
  }) : super(
          author: author,
          id: id,
          text: text,
          createdAt: createdAt,
          metadata: metadata,
          previewData: previewData,
          remoteId: remoteId,
          roomId: roomId,
          status: status,
          type: type,
          updatedAt: updatedAt,
        );

  MyTextMessage.fromPartial({
    required types.User author,
    int? createdAt,
    required String id,
    required types.PartialText partialText,
    String? remoteId,
    String? roomId,
    types.Status? status,
    types.PreviewData? previewData,
    int? updatedAt,
    Map<String, dynamic>? metadata,
    types.MessageType? type,
    this.messageTestField = "test-field",
  }) : super(
          author: author,
          id: id,
          text: partialText.text,
          createdAt: createdAt,
          metadata: metadata,
          previewData: previewData,
          remoteId: remoteId,
          roomId: roomId,
          status: status,
          type: type,
          updatedAt: updatedAt,
        );

  @override
  Map<String, dynamic> toJson() {
    final map = super.toJson();

    map["messageTestField"] = messageTestField;

    return map;
  }
}

class MyFileMessage extends types.FileMessage {
  final String messageTestField;

  const MyFileMessage({
    required types.User author,
    int? createdAt,
    required String id,
    Map<String, dynamic>? metadata,
    String? mimeType,
    required String name,
    String? remoteId,
    String? roomId,
    required num size,
    types.Status? status,
    types.MessageType? type,
    int? updatedAt,
    required String uri,
    this.messageTestField = "test-field",
  }) : super(
          mimeType: mimeType,
          author: author,
          id: id,
          size: size,
          createdAt: createdAt,
          metadata: metadata,
          name: name,
          uri: uri,
          remoteId: remoteId,
          roomId: roomId,
          status: status,
          type: type,
          updatedAt: updatedAt,
        );

  MyFileMessage.fromPartial({
    required types.User author,
    int? createdAt,
    required String id,
    required types.PartialFile partialFile,
    String? remoteId,
    String? roomId,
    types.Status? status,
    int? updatedAt,
    this.messageTestField = "test-field",
  }) : super(
          mimeType: partialFile.mimeType,
          author: author,
          id: id,
          name: partialFile.name,
          uri: partialFile.name,
          size: partialFile.size,
          createdAt: createdAt,
          metadata: partialFile.metadata,
          remoteId: remoteId,
          roomId: roomId,
          status: status,
          type: types.MessageType.file,
          updatedAt: updatedAt,
        );

  @override
  Map<String, dynamic> toJson() {
    final map = super.toJson();

    map["messageTestField"] = messageTestField;

    return map;
  }
}

class MyImageMessage extends types.ImageMessage {
  final String messageTestField;

  const MyImageMessage({
    required types.User author,
    int? createdAt,
    double? height,
    required String id,
    Map<String, dynamic>? metadata,
    required String name,
    String? remoteId,
    String? roomId,
    required num size,
    types.Status? status,
    types.MessageType? type,
    int? updatedAt,
    required String uri,
    double? width,
    this.messageTestField = "test-field",
  }) : super(
          height: height,
          width: width,
          author: author,
          id: id,
          size: size,
          createdAt: createdAt,
          metadata: metadata,
          name: name,
          uri: uri,
          remoteId: remoteId,
          roomId: roomId,
          status: status,
          type: type,
          updatedAt: updatedAt,
        );

  MyImageMessage.fromPartial({
    required types.User author,
    int? createdAt,
    required String id,
    required types.PartialImage partialImage,
    String? remoteId,
    String? roomId,
    types.Status? status,
    int? updatedAt,
    this.messageTestField = "test-field",
  }) : super(
          height: partialImage.height,
          name: partialImage.name,
          size: partialImage.size,
          uri: partialImage.uri,
          width: partialImage.width,
          author: author,
          id: id,
          createdAt: createdAt,
          metadata: partialImage.metadata,
          remoteId: remoteId,
          roomId: roomId,
          status: status,
          type: types.MessageType.image,
          updatedAt: updatedAt,
        );

  @override
  Map<String, dynamic> toJson() {
    final map = super.toJson();

    map["messageTestField"] = messageTestField;

    return map;
  }
}
