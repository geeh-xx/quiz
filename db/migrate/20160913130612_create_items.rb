class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.references :question, index: true, foreign_key: true
      t.references :exam, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
