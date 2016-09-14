class Api::V1::ItemsController < ApplicationController
  before_action :authenticate_user!

  def index
    items = Item.all
    render json: items, status: 200
  end

  def create
    exam = Exam.new
    questions = Question.order("RANDOM()").limit(10)

    questions.each do |question|
      item = exam.items.build(:question => question)
      if item.save
        render json: item, status: 201
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
