module CurrentExam
  extend ActiveSupport::Concern

  private
    def set_exam
      Exam.find(session[:exam_id])
    rescue ActiveRecord::RecordNotFound
      exam = Exam.create(user_id: current_user.id)
      session[:exam_id] = exam.id
      exam
    end

end