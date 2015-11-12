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

  has_attached_file :avatar, styles: { medium: "300x300#", thumb: "100x100#" }, default_url: ":style_missing.jpg"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
end
