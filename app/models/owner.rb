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
  #validates evac waiver boolean checkbox
  validates :evac_waiver, inclusion: [true]

def last_comma_first
  "#{last_name}, #{first_name}"
end

end
