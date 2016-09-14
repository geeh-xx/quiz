class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :one
      t.string :two
      t.string :three
      t.string :four
      t.string :five
      t.string :six
      t.string :seven
      t.string :eight
      t.string :nine
      t.string :ten

      t.timestamps null: false
    end
  end
end
