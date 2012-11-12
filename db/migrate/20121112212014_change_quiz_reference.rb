class ChangeQuizReference < ActiveRecord::Migration
  def up
    remove_column :quizzes, :quiz_definition_id
    add_column :quizzes, :daily_quiz_id, :integer
  end

  def down
    remove_column :quizzes, :daily_quiz_id
    add_column :quizzes, :quiz_definition_id, :integer
  end
end
