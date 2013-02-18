# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#

categories = Category.create([
  { id: 1, name: 'Geography' },
  { id: 2, name: 'Entertainment' },
  { id: 3, name: 'History' },
  { id: 4, name: 'Arts & Literature' },
  { id: 5, name: 'Science & Nature' },
  { id: 6, name: 'Sports & Leisure' }
])

quiz_definition = QuizDefinition.create({
  id: 1,
  difficulty: 4,
  category: Category.find(4)
})

quiz_definition.questions.create([
  { id: 1, question: 'In what American state are the Blue Ridge Mountains located?' },
  { id: 2, question: 'How did Sitting Bull allegedly die?' },
  { id: 3, question: 'Who said, "When I was young I used to think that money was the most important thing in life, now that I am old, I know it is"?' },
  { id: 4, question: 'What is called the second full moon which occurs in the same calendar month?' },
  { id: 5, question: 'Name the island which is shaped like a fish hook.' },
  { id: 6, question: 'What did Orson Welles describe as the biggest train set a boy ever had?' },
  { id: 7, question: 'Where is the Soviet cosmonaut, Yuri Gagarin, buried?' },
  { id: 8, question: 'Which American novelist and humorist said: "I didn''t attend the funeral, but I sent a nice letter saying I approved of it"?' },
  { id: 9, question: 'Name the North American bird famous for its vocal imitation.' },
  { id: 10, question: 'Who said, "Some people say that I must be a terrible person, but it''s not true. I have the heart of a young boy in a jar on my desk"?' }
])

Question.find(1).question_options.create([
  { id: 1, answer: 'Utah', is_correct: false },
  { id: 2, answer: 'Alaska', is_correct: false },
  { id: 3, answer: 'Washington', is_correct: false },
  { id: 4, answer: 'Virginia', is_correct: true }
])

Question.find(2).question_options.create([
  { id: 5, answer: 'Killed at the Battle of the Little Bighorn', is_correct: false },
  { id: 6, answer: 'Natural old age', is_correct: false },
  { id: 7, answer: 'Drowned near the Grand River, South Dakota', is_correct: false },
  { id: 8, answer: 'Killed by the Indian police', is_correct: true }
])

Question.find(3).question_options.create([
  { id: 9, answer: 'Ebeneezer Scrooge', is_correct: false },
  { id: 10, answer: 'Groucho Marx', is_correct: false },
  { id: 11, answer: 'Fagin', is_correct: false },
  { id: 12, answer: 'Oscar Wilde', is_correct: true }
])

Question.find(4).question_options.create([
  { id: 13, answer: 'Blue moon', is_correct: true },
  { id: 14, answer: 'Harvest moon', is_correct: false },
  { id: 15, answer: 'Gibbous moon', is_correct: false },
  { id: 16, answer: 'Set moon', is_correct: false }
])

Question.find(5).question_options.create([
  { id: 17, answer: 'Sardinia', is_correct: false },
  { id: 18, answer: 'Madagascar', is_correct: false },
  { id: 19, answer: 'Bermuda', is_correct: true },
  { id: 20, answer: 'Iceland', is_correct: false }
])

Question.find(6).question_options.create([
  { id: 21, answer: 'The London Underground', is_correct: false },
  { id: 22, answer: 'The striking set of Citizen Kane', is_correct: true },
  { id: 23, answer: 'The Central Railroad of Casey Jones', is_correct: false },
  { id: 24, answer: 'The Paris Metro', is_correct: false }
])

Question.find(7).question_options.create([
  { id: 25, answer: 'Within the Kremlin walls', is_correct: true },
  { id: 26, answer: 'Highgate Cemetery, London', is_correct: false },
  { id: 27, answer: 'The Palace of Versailles', is_correct: false },
  { id: 28, answer: 'Vladivostok, Russia', is_correct: false }
])

Question.find(8).question_options.create([
  { id: 29, answer: 'Louisa May Alcott', is_correct: false },
  { id: 30, answer: 'Margaret Mitchell', is_correct: false},
  { id: 31, answer: 'Herbert George Wells', is_correct: false },
  { id: 32, answer: 'Mark Twain', is_correct: true }
])

Question.find(9).question_options.create([
  { id: 33, answer: 'Mockingbird', is_correct: true },
  { id: 34, answer: 'Nutcracker', is_correct: false },
  { id: 35, answer: 'Frogmouth', is_correct: false },
  { id: 36, answer: 'Hooded crow', is_correct: false }
])

Question.find(10).question_options.create([
  { id: 37, answer: 'Peter Lorre', is_correct: false },
  { id: 38, answer: 'Stephen King', is_correct: true },
  { id: 39, answer: 'Vincent Price', is_correct: false },
  { id: 40, answer: 'Anne Rice', is_correct: false }
])

daily_quiz = DailyQuiz.create({
  id: 1,
  date: Date.today,
  quiz_definition: quiz_definition
})
