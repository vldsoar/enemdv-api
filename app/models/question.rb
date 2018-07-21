# == Schema Information
#
# Table name: questions
#
#  id         :integer          not null, primary key
#  wording    :text
#  exam_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Question < ApplicationRecord
  belongs_to :exam
  has_many :options, dependent: :destroy
end
