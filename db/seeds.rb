# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(user_name: "rando")
User.create!(user_name: "joseph")
User.create!(user_name: "emily")
User.create!(user_name: "quinn")
User.create!(user_name: "sam")
User.create!(user_name: "gage")
User.create!(user_name: "ryan")
User.create!(user_name: "claire")
User.create!(user_name: "brooke")
User.create!(user_name: "john")
User.create!(user_name: "jeff")
User.create!(user_name: "ahser")
User.create!(user_name: "Anthony")

rand_user = User.all

Poll.create!(title: 'Animal poll', author_id: rand_user.sample.id)
Poll.create!(title: 'Movie poll', author_id: rand_user.sample.id)
Poll.create!(title: 'Soda poll', author_id: rand_user.sample.id)
Poll.create!(title: 'Best beach to go to poll', author_id: rand_user.sample.id)
Poll.create!(title: 'Best food poll', author_id: rand_user.sample.id)
Poll.create!(title: 'Best bootcamp poll', author_id: rand_user.sample.id)

rand_poll = Poll.all

Question.create!(question: 'Best animal?', poll_id: 1)
Question.create!(question: 'Best animal color?', poll_id: 1)
Question.create!(question: 'Best whale?', poll_id: 1)
Question.create!(question: 'Best dog breed', poll_id: 1)
Question.create!(question: 'Best movie?', poll_id: 2)
Question.create!(question: 'Best superhero?', poll_id: 2)
Question.create!(question: 'Best soda?', poll_id: 3)


AnswerChoice.create!(answer_choice: 'fox', question_id: 1)
AnswerChoice.create!(answer_choice: 'dog', question_id: 1)
AnswerChoice.create!(answer_choice: 'cat', question_id: 1)
AnswerChoice.create!(answer_choice: 'red', question_id: 2)
AnswerChoice.create!(answer_choice: 'black', question_id: 2)
AnswerChoice.create!(answer_choice: 'pink', question_id: 2)

Response.create!(answer_choice_id: 1, user_id: rand_user.sample.id)
Response.create!(answer_choice_id: 1, user_id: rand_user.sample.id)
Response.create!(answer_choice_id: 1, user_id: rand_user.sample.id)
Response.create!(answer_choice_id: 1, user_id: rand_user.sample.id)
Response.create!(answer_choice_id: 2, user_id: rand_user.sample.id)
Response.create!(answer_choice_id: 2, user_id: rand_user.sample.id)
Response.create!(answer_choice_id: 2, user_id: rand_user.sample.id)
Response.create!(answer_choice_id: 2, user_id: rand_user.sample.id)
Response.create!(answer_choice_id: 2, user_id: rand_user.sample.id)
Response.create!(answer_choice_id: 3, user_id: rand_user.sample.id)
Response.create!(answer_choice_id: 3, user_id: rand_user.sample.id)
Response.create!(answer_choice_id: 3, user_id: rand_user.sample.id)

Response.create!(answer_choice_id: 4, user_id: rand_user.sample.id)
Response.create!(answer_choice_id: 4, user_id: rand_user.sample.id)
Response.create!(answer_choice_id: 5, user_id: rand_user.sample.id)
Response.create!(answer_choice_id: 6, user_id: rand_user.sample.id)
Response.create!(answer_choice_id: 6, user_id: rand_user.sample.id)
Response.create!(answer_choice_id: 6, user_id: rand_user.sample.id)
