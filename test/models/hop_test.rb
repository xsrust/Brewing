# == Schema Information
#
# Table name: hops
#
#  id         :bigint           not null, primary key
#  name       :string
#  producer   :string
#  origin     :string
#  year       :integer
#  form       :integer
#  alpha_acid :float
#  beta_acid  :float
#  type       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class HopTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
