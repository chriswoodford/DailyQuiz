class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.references :player
      t.references :quiz_definition

      t.timestamps
    end
  end
end
