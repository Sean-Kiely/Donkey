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
  validates_uniqueness_of :name, :scope=> :owner_id
  # validates :name, uniqueness: true, :scope=> :owner_id

  has_attached_file :avatar, styles: { medium: "300x300#", thumb: "100x100#" }, default_url: ":style_missing.gif"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
end
