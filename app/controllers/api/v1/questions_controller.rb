class Api::V1::QuestionsController < ApplicationController
  before_action :set_exam
  before_action :set_question, only: :show

  def index
    @questions = @exam.questions
                      .page(params[:page])
                      .per(params[:per] || 1)

    render json: {questions: @exam.questions, meta: pagination_meta(@questions)}
  end

  def show
    render json: @question
  end

  private

    def set_exam
      @exam = Exam.find(params[:exam_id])
    end

    def set_question
      @question = @exam.find_by!(id: params[:id]) if @exam
    end
end
