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

require 'test_helper'

class DonkeyTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
