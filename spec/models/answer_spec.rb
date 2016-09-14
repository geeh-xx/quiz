require 'rails_helper'

RSpec.describe Answer, type: :model do

  context "Validantion Answer" do

    it "Answer relations" do
      should have_many(:item_answers)
    end

    it "Answer valid?" do
      answer = Answer.new
      answer.one = "1"
      answer.two = "2"
      answer.three = "3"
      answer.four = "4"
      answer.five = "5"
      answer.six = "6"
      answer.seven = "7"
      answer.eight = "8"
      answer.nine = "9"
      answer.ten = "10"
      expect(answer.valid?).to be_truthy
    end

    it "Answer invalid?" do
      answer = Answer.new
      answer.one = "1"
      answer.two = "2"
      answer.three = "3"
      answer.five = "5"
      answer.six = "6"
      answer.seven = "7"
      answer.eight = "8"
      answer.nine = "9"
      answer.ten = "10"
      expect(answer.valid?).to be_falsey
    end
  end

end
