class AddFieldsFromAnswer < ActiveRecord::Migration
  def change
    add_column :answers, :number, :string
    add_column :answers, :answer, :string
  end
end
