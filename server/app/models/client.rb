# == Schema Information
#
# Table name: clients
#
#  id         :integer          not null, primary key
#  active     :boolean          default(TRUE)
#  name       :string           default(""), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  project_id :integer
#  region_id  :integer
#
# Indexes
#
#  index_clients_on_name        (name) UNIQUE
#  index_clients_on_project_id  (project_id)
#  index_clients_on_region_id   (region_id)
#

class Client < ApplicationRecord
  # belongs_to :project
  # belongs_to :region
  validates :name, presence: true, uniqueness: true
  has_one :project, inverse_of: :clients
  has_one :region, inverse_of: :clients
end
