jq_languages = ActiveSupport::JSON.decode(File.read('db/seeds/sample_questions_languages.json'))

@exam_languages = Exam.create(year: 2018, kind: :languages)
# @exam_human_sciences = Exam.create(year: 2018, kind: :human_sciences)

jq_languages.each do |jquestion|
  @question = @exam_languages.questions.create(wording: jquestion['wording'])
  jquestion['options'].each do |opt|
    @question.options.create(opt)
  end
end
