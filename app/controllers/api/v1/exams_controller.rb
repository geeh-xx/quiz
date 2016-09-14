class Api::V1::ExamsController < ApplicationController
  before_action :authenticate_user!
  include CurrentExam

  def index
    if current_user.exams.nil?
      render nothing: true, status: 404
    else
      exams = current_user.exams.all
      render json: exams, status: 200
    end
  end

  def show
    begin
      exam = Exam.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      logger.error "Exam invalid #{params[:id]}"
      render nothing: true, status: 400
    else
      render json: exam, status: 200
    end
  end

  def create
    exam = set_exam
    session[:exam_id] = nil
    render json: exam, status: 201
  end

  def destroy
    exam = set_exam
    exam.destroy
    session[:exam_id] = nil
    render nothing: true, status: 204
  end

  private
    def exam_params
      params_require(:item).permit :user_id
    end

end
