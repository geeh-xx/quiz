class CreatePerfils < ActiveRecord::Migration
  def change
    create_table :perfils do |t|
      t.string :name
      t.string :birth
      t.string :cpf
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
