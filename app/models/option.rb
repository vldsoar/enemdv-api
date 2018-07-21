# == Schema Information
#
# Table name: options
#
#  id          :integer          not null, primary key
#  description :string
#  question_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Option < ApplicationRecord
  belongs_to :question
end
