class CreateDailyQuizzes < ActiveRecord::Migration
  def change
    create_table :daily_quizzes do |t|
      t.date :date
      t.references :quiz_definition

      t.timestamps
    end
    add_index :daily_quizzes, :quiz_definition_id
    add_index :daily_quizzes, :date
  end
end
