class AddIndexToQuiz < ActiveRecord::Migration
  def change
    add_index :quizzes, :daily_quiz_id
  end
end
