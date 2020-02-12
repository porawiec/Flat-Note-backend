# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
Note.delete_all
Tag.delete_all
NotesTag.delete_all


user_a = User.create(username: "usera", password: "a")
user_b = User.create(username: "userb", password: "b")
user_c = User.create(username: "userc", password: "c")
user_d = User.create(username: "dutmaster", password: "flex")
 
note_a = Note.create(title: "A My Note Title", description: "A My Note Description", user: user_a)
note_b = Note.create(title: "B My Note Title", description: "B My Note Description", user: user_b)
note_c = Note.create(title: "C My Note Title", description: "C My Note Description", user: user_c)

tag_a = Tag.create(name: "A Note Tag")
tag_b = Tag.create(name: "B Note Tag")
tag_c = Tag.create(name: "C Note Tag")

# p note_a
# p tag_a
notes_tag_a = NotesTag.create(note: note_a, tag: tag_a)
notes_tag_b = NotesTag.create(note: note_b, tag: tag_b)
notes_tag_c = NotesTag.create(note: note_a, tag: tag_b)
notes_tag_d = NotesTag.create(note: note_b, tag: tag_a)
notes_tag_e = NotesTag.create(note: note_c, tag: tag_a)