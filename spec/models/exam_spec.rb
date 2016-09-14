require 'rails_helper'

RSpec.describe Exam, type: :model do

  context "Validantion Question" do

    it "Exam relations" do
      should have_many(:items)
      should have_many(:item_answers)
      should belong_to(:user)
    end

    it "Exam valid?" do
      exam = Exam.new

      user = User.new
      user.role = "admin"
      user.email = "teste@teste.com.br"
      user.password = "123456789"
      user.password_confirmation = "123456789"

      exam.user_id = user.id

      expect(exam.valid?).to be_truthy
    end

  end

end
