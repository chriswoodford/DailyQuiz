class CreateQuizDefinitions < ActiveRecord::Migration
  def change
    create_table :quiz_definitions do |t|
      t.integer :difficulty
      t.references :category

      t.timestamps
    end
  end
end
