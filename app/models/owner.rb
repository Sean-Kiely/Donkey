# == Schema Information
#
# Table name: owners
#
#  id          :integer          not null, primary key
#  first_name  :string
#  last_name   :string
#  email       :string
#  evac_waiver :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Owner < ActiveRecord::Base
  has_many :donkey

  validates :first_name, :last_name, :email, presence: true
end
