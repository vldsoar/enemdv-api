jq_hs = ActiveSupport::JSON.decode(File.read('db/seeds/questions_hs.json'))

# @exam_languages = Exam.create(year: 2018, kind: :languages)
@exam_human_sciences = Exam.create(year: 2018, kind: :human_sciences)

jq_hs.each do |jquestion|
  @question = @exam_human_sciences.questions.create(wording: jquestion['wording'])
  jquestion['options'].each do |opt|
    @question.options.create(opt)
  end
end
