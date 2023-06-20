import 'package:flutter/foundation.dart';
import 'package:flutter_mysql/models/noted.dart';

class noteprovider with ChangeNotifier {
  List<Note> _Notes = [];

  List<Note> get notes => [..._Notes];

    void setNotes(List<Note> newNotes) {
    _Notes = newNotes;
    notifyListeners();
  }

    void addNote(Note note) {
    _Notes.add(note);
    notifyListeners();
  }
  
    void deleteNote(String noteId) {
    _Notes.removeWhere((note) => note.id == noteId);
    notifyListeners();
  }
    void updateNote(Note updatedNote) {
    final index = _Notes.indexWhere((note) => note.id == updatedNote.id);
    if (index != -1) {
      _Notes[index] = updatedNote;
      notifyListeners();
    }
  }

}
