class Api::V1::ItemAnswersController < ApplicationController
  before_action :authenticate_user!
  include CurrentExam

  def index
    item_answers = ItemAnswer.all
    render json: item_answers, status: 200
  end

  def create
    exam = set_exam
    answer = Answer.create(answer: params[:answer], number: params[:answer_number])
    item_answer = exam.item_answers.build(:answer => answer)
    if item_answer.save
      render json: item_answer, status: 201
    else
      render json: item_answer.errors, status: 422
    end

  end

  def destroy
    item_answer = ItemAnswer.find(params[:id])
    item_answer.destroy
    render nothing: true, status: 204
  end

  private
  def item_answer_params
    params_require(:item_answer).permit :answer_id, :exam_id
  end

end
