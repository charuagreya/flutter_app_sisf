class Chapter_POJO {
  bool status;
  String error;
  List<Responce> responce;

  Chapter_POJO({this.status, this.error, this.responce});

  Chapter_POJO.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    error = json['Error'];
    if (json['Responce'] != null) {
      responce = new List<Responce>();
      json['Responce'].forEach((v) {
        responce.add(new Responce.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['Error'] = this.error;
    if (this.responce != null) {
      data['Responce'] = this.responce.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Responce {
  String id;
  String subjectId;
  String name;
  String description;
  String timing;
  String noOfQuestion;
  String isDeleted;

  Responce(
      {this.id,
        this.subjectId,
        this.name,
        this.description,
        this.timing,
        this.noOfQuestion,
        this.isDeleted});

  Responce.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    subjectId = json['subject_id'];
    name = json['name'];
    description = json['description'];
    timing = json['timing'];
    noOfQuestion = json['no_of_question'];
    isDeleted = json['is_deleted'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['subject_id'] = this.subjectId;
    data['name'] = this.name;
    data['description'] = this.description;
    data['timing'] = this.timing;
    data['no_of_question'] = this.noOfQuestion;
    data['is_deleted'] = this.isDeleted;
    return data;
  }
}