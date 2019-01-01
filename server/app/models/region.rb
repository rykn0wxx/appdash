# == Schema Information
#
# Table name: regions
#
#  id         :integer          not null, primary key
#  active     :boolean          default(TRUE)
#  code       :string           default(""), not null
#  name       :string           default(""), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_regions_on_code  (code) UNIQUE
#  index_regions_on_name  (name) UNIQUE
#

class Region < ApplicationRecord
  validates :name, :code, presence: true, uniqueness: true
  has_many :clients
end
