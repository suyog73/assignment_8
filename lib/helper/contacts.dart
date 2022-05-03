class Contact {
  String contactName = "";
  String contactNo = "";

  Contact(name, no) {
    contactName = name;
    contactNo = no;
  }
}

class ContactList {
  final List<Contact> contactList = [
    Contact('Suyog', "8329763258"),
    Contact('Sudesh', "8345697120"),
    Contact('Dnyaneshwar', "9468451132"),
    Contact('Saurabh', "87896214850"),
    Contact('Sumit', "9356697120"),
    Contact('Shivaprasad', "7789632014"),
  ];
}
