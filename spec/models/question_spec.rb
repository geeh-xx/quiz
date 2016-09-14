require 'rails_helper'

RSpec.describe Question, type: :model do

    context "Validantion Question" do

      it "Question relations" do
        should have_many(:items)
      end

      it "Question valid?" do
        question = Question.new
        question.title = "Teste"
        question.a = "Xablau a"
        question.b = "Xablau b"
        question.c = "Xablau c"
        question.d = "Xablau d"
        expect(question.valid?).to be_truthy
      end

      it "Question invalid?" do
        question = Question.new
        question.a = "Xablau a"
        question.b = "Xablau b"
        question.c = "Xablau c"
        question.d = "Xablau d"
        expect(question.valid?).to be_falsey
      end

    end

end
