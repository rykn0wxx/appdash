# == Schema Information
#
# Table name: languages
#
#  id         :integer          not null, primary key
#  active     :boolean          default(TRUE)
#  name       :string           default(""), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_languages_on_name  (name) UNIQUE
#

class Language < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :fact_phones
end
