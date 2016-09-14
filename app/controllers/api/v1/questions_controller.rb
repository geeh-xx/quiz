class Api::V1::QuestionsController < ApplicationController
  before_action :autheticate_user!

  def index
    @questions = Question.all
    render json: questions, status: 200
    authorize @questions
  end

  def create
    @question = Question.new(question_params)

    if question.save
      render json: question, status: 201
    else
      render json: question.errors, status: 422
    end

    authorize @question
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    render nothing: true, status: 204

    authorize @question
  end

  private
    def question_params
      params_require(:question).permit :enunciation, :a, :b, :c, :d, :font, :category
    end

end
