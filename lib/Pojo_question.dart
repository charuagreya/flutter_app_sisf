class Pojo_question {
  bool status;
  String error;
  List<Responce> responce;

  Pojo_question({this.status, this.error, this.responce});

  Pojo_question.fromJson(Map<String, dynamic> json) {
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
  List<QuestionRows> questionRows;
  String chapterId;
  String question;
  String createdOn;
  String createdBy;
  String isDeleted;

  Responce(
      {this.id,
        this.questionRows,
        this.chapterId,
        this.question,
        this.createdOn,
        this.createdBy,
        this.isDeleted});

  Responce.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    if (json['questionRows'] != null) {
      questionRows = new List<QuestionRows>();
      json['questionRows'].forEach((v) {
        questionRows.add(new QuestionRows.fromJson(v));
      });
    }
    chapterId = json['chapter_id'];
    question = json['question'];
    createdOn = json['created_on'];
    createdBy = json['created_by'];
    isDeleted = json['is_deleted'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if (this.questionRows != null) {
      data['questionRows'] = this.questionRows.map((v) => v.toJson()).toList();
    }
    data['chapter_id'] = this.chapterId;
    data['question'] = this.question;
    data['created_on'] = this.createdOn;
    data['created_by'] = this.createdBy;
    data['is_deleted'] = this.isDeleted;
    return data;
  }
}

class QuestionRows {
  String id;
  String questionId;
  String objective;
  String currectAnswer;

  QuestionRows({this.id, this.questionId, this.objective, this.currectAnswer});

  QuestionRows.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    questionId = json['question_id'];
    objective = json['objective'];
    currectAnswer = json['currect_answer'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['question_id'] = this.questionId;
    data['objective'] = this.objective;
    data['currect_answer'] = this.currectAnswer;
    return data;
  }
}