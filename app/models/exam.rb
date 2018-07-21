# == Schema Information
#
# Table name: exams
#
#  id         :integer          not null, primary key
#  year       :integer
#  kind       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Exam < ApplicationRecord
  has_many :questions

  enum kind: [
    :languages,
    :human_sciences,
    :natural_sciences,
    :math
  ]
end
