class Exam < ActiveRecord::Base
  enum role: [:disable, :active]

  belongs_to :user
  has_many :items, dependent: :destroy
  has_many :item_answers, dependent: :destroy

end
