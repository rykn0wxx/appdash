# == Schema Information
#
# Table name: fact_phones
#
#  id           :integer          not null, primary key
#  calls_abn    :integer
#  calls_abn_sl :integer
#  calls_ans    :integer
#  calls_ans_sl :integer
#  calls_off    :integer
#  queue_ans    :integer
#  record_date  :date
#  time_hold    :integer
#  time_talk    :integer
#  time_wrap    :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  language_id  :integer
#  project_id   :integer
#
# Indexes
#
#  index_fact_phones_on_language_id  (language_id)
#  index_fact_phones_on_project_id   (project_id)
#

class FactPhone < ApplicationRecord
  validates :record_date, presence: true
  validates :calls_off, :calls_ans, :calls_ans_sl, :calls_abn, :calls_abn_sl, :time_talk, :time_hold, :time_wrap, :queue_ans, numericality: true
  
  belongs_to :language
  belongs_to :project
end
