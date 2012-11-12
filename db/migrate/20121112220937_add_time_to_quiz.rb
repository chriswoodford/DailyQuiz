class AddTimeToQuiz < ActiveRecord::Migration
  def change
    add_column :quizzes, :time, :time
  end
end
