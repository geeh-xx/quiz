class Api::V1::ItemsController < ApplicationController
  before_action :authenticate_user!
  include CurrentExam

  def index
    items = Item.all
    render json: items, status: 200
  end

  def create
    exam = set_exam
    questions = Question.first(10,:order => "RANDOM()")

    questions.each do |question|
      item = exam.items.build(:question => question)
      if item.save
        render json: item, status: 201 ,location: item
      else
        render json: item.errors, status: 422
      end
    end

  end

  def destroy
    item = Item.find(params[:id])
    item.destroy
    render nothing: true, status: 204
  end

  private
    def item_params
      params_require(:item).permit :question_id, :exam_id
    end

end
