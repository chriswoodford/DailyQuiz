class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.references :question_option
      t.references :quiz

      t.timestamps
    end
  end
end
