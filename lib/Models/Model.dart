class Contact {
  String Email;
  String StackOverflow;
  String Tweeter;
  String LinkedIn;
  String Other1;
  String Other2;
}

class Member {
  String Name;
  String Description;
  List<Contact> Contacts;
}

class Discussion {
  String What;
  DateTime When;
  List<Member> Who;
}
class ProjectModel {
  projectModel(String name, String desc, String status, String github) {
    Name = name;
    Description = desc;
    Status = status;
    Github = github;
  }
  String Name;
  String Description;
  Member Owner;
  String Status;
  String Github;
  Member Friends;
  Discussion Discussions;
}