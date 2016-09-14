class Api::V1::QuestionsController < ApplicationController

  def index
    if current_user.admin?
      questions = Question.all
      render json: questions, status: 200
    else
      render nothing: true, status: 401
    end
  end

  def create
    question = Question.new(question_params)

    if question.save
      render json: question, status: 201 ,location: question
    else
      render json: question.errors, status: 422
    end
  end

  def destroy
    question = Question.find(params[:id])
    question.destroy
    render nothing: true, status: 204
  end

  private
    def question_params
      params_require(:question).permit :enunciation, :a, :b, :c, :d, :font, :category
    end

end
