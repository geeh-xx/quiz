class RemoveFieldsFromAnswer < ActiveRecord::Migration
  def change

    remove_column :answers, :one, :string
    remove_column :answers, :two, :string
    remove_column :answers, :three, :string
    remove_column :answers, :four, :string
    remove_column :answers, :five, :string
    remove_column :answers, :six, :string
    remove_column :answers, :seven, :string
    remove_column :answers, :eight, :string
    remove_column :answers, :nine, :string
    remove_column :answers, :ten, :string

  end
end
