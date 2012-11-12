class CreateQuestionOptions < ActiveRecord::Migration
  def change
    create_table :question_options do |t|
      t.text :answer
      t.boolean :is_correct
      t.references :question

      t.timestamps
    end
  end
end
