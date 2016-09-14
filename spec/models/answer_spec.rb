require 'rails_helper'

RSpec.describe Answer, type: :model do

  context "Validantion Answer" do

    it "Answer relations" do
      should have_many(:item_answers)
    end

    it "Answer valid?" do
      answer = Answer.new
      answer.answer = "xablau"
      answer.number = 2
      expect(answer.valid?).to be_truthy
    end

    it "Answer invalid?" do
      answer = Answer.new
      answer.answer = "xablau"
      expect(answer.valid?).to be_falsey
    end
  end

end
