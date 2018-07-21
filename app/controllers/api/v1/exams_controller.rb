class Api::V1::ExamsController < ApplicationController
  def index
    @exams = Exam.all
    render json: @exams
  end
end
