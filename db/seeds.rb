# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create({ username: 'nwilson' })
u2 = User.create({ username: 'mdunne' })
u3 = User.create({ username: 'kblach' })
u4 = User.create({ username: 'cdalbow' })
u5 = User.create({ username: 'hblock' })
u6 = User.create({ username: 'mbuehler' })
u7 = User.create({ username: 'pdasilva' })
u8 = User.create({ username: 'vlu' })
u9 = User.create({ username: 'smillington' })
u10 = User.create({ username: 'stointon' })
u11 = User.create({ username: 'hgould' })
u12 = User.create({ username: 'swilson' })
u13 = User.create({ username: 'dkreins' })
u14 = User.create({ username: 'kmcmorrow' })
u15 = User.create({ username: 'kdorais' })

p1 = Poll.create({ title: 'Wallbar', author_id: 15 })
q1 = Question.create({ text: 'Favorite part of the product?', poll_id: 1 })
a1 = AnswerChoice.create({ text: 'Easy', question_id: 1 })
a2 = AnswerChoice.create({ text: 'Quick', question_id: 1 })
a3 = AnswerChoice.create({ text: 'Intuitive', question_id: 1 })
a4 = AnswerChoice.create({ text: 'Sleek', question_id: 1 })

q2 = Question.create({ text: 'What type of drink would you like offered?', poll_id: 1 })
a5 = AnswerChoice.create({ text: 'Beer', question_id: 2 })
a6 = AnswerChoice.create({ text: 'Wine', question_id: 2 })
a7 = AnswerChoice.create({ text: 'Seltzer', question_id: 2 })
a8 = AnswerChoice.create({ text: 'Combo', question_id: 2 })

q3 = Question.create({ text: 'How satisfied were you with the product?', poll_id: 1 })
a9 = AnswerChoice.create({ text: 'Very Unsatisfied', question_id: 3 })
a10 = AnswerChoice.create({ text: 'Unsatisfied', question_id: 3 })
a11 = AnswerChoice.create({ text: 'Neutral', question_id: 3 })
a12 = AnswerChoice.create({ text: 'Satisfied', question_id: 3 })
a13 = AnswerChoice.create({ text: 'Very Satisfied', question_id: 3 })

r1 = Response.create({ user_id: 1, answer_choice_id: 2 })
r2 = Response.create({ user_id: 1, answer_choice_id: 5 })
r3 = Response.create({ user_id: 1, answer_choice_id: 13 })

r4 = Response.create({ user_id: 6, answer_choice_id: 4 })
r5 = Response.create({ user_id: 6, answer_choice_id: 7 })
r6 = Response.create({ user_id: 6, answer_choice_id: 12 })

r7 = Response.create({ user_id: 8, answer_choice_id: 3 })
r8 = Response.create({ user_id: 8, answer_choice_id: 6 })
r9 = Response.create({ user_id: 8, answer_choice_id: 11 })

r10 = Response.create({ user_id: 4, answer_choice_id: 1 })
r11 = Response.create({ user_id: 4, answer_choice_id: 5 })
r12 = Response.create({ user_id: 4, answer_choice_id: 9 })