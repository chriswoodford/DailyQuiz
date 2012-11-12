class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :question
      t.references :quiz_definition

      t.timestamps
    end
  end
end
