# == Schema Information
#
# Table name: projects
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
#  index_projects_on_code  (code) UNIQUE
#  index_projects_on_name  (name) UNIQUE
#

class Project < ApplicationRecord
  validates :name, :code, presence: true, uniqueness: true
  has_many :clients
end
