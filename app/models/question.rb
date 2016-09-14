class Question < ActiveRecord::Base
  validates :enunciaton, :a ,:b, :c, :d, presence: true

  has_many :items, dependent: :destroy
  before_destroy :ensure_not_referenced_by_any_item

  private
    def ensure_not_referenced_by_any_item
      if items.empty?
        return true
      else
        errors.add(:base, 'There are question')
        return false
      end
    end

end
