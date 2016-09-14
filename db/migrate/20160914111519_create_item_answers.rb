class CreateItemAnswers < ActiveRecord::Migration
  def change
    create_table :item_answers do |t|
      t.references :exam, index: true, foreign_key: true
      t.references :answer, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
