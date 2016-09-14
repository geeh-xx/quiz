class AddActiveToExam < ActiveRecord::Migration
  def change
    add_column :exams, :active, :integer, :default => 0
  end
end
