class Answer < ActiveRecord::Base
  validates :answer, :number, presence: true

  has_many :item_answers, dependent: :destroy
  before_destroy :ensure_not_referenced_by_any_item_answer

  private
  def ensure_not_referenced_by_any_item_answer
    if item_answers.empty?
      return true
    else
      errors.add(:base, 'There are answer')
      return false
    end
  end

end
