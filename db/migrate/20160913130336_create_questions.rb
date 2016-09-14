class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title
      t.string :a
      t.string :b
      t.string :c
      t.string :d
      t.string :font
      t.string :category

      t.timestamps null: false
    end
  end
end
