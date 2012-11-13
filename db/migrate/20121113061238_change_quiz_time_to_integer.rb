class ChangeQuizTimeToInteger < ActiveRecord::Migration
  def up
    change_column :quizzes, :time, :integer
  end

  def down
    change_column :quizzes, :time, :time
  end
end
