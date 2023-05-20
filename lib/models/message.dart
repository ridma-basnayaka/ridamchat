class Message {
  Message({
    required this.msg,
    required this.read,
    required this.toId,
    required this.type,
    required this.sent,
    required this.fromID,
  });
  late final String msg;
  late final String read;
  late final String toId;
  late final Type type;
  late final String sent;
  late final String fromID;

  Message.fromJson(Map<String, dynamic> json) {
    msg = json['msg'].toString();
    read = json['read'].toString();
    toId = json['told'].toString();
    type = json['type'].toString() == Type.image.name ? Type.image : Type.text;
    sent = json['sent'].toString();
    fromID = json['fromId'].toString();
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['msg'] = msg;
    data['read'] = read;
    data['told'] = toId;
    data['type'] = type.name;
    data['sent'] = sent;
    data['fromId'] = fromID;
    return data;
  }
}

enum Type { text, image }
