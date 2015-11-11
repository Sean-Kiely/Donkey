# == Schema Information
#
# Table name: donkeys
#
#  id         :integer          not null, primary key
#  name       :string
#  owner_id   :integer
#  dob        :date
#  breed_id   :integer
#  med_cond   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Donkey < ActiveRecord::Base
  belongs_to :owner
  belongs_to :breed

  validates :name, :owner_id, presence: true
end
