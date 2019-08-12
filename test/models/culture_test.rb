# == Schema Information
#
# Table name: cultures
#
#  id                :bigint           not null, primary key
#  name              :string
#  type              :integer
#  form              :integer
#  producer          :string
#  product_id        :string
#  attenuation_min   :integer
#  attenuation_max   :integer
#  alcohol_tolerance :float
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

require 'test_helper'

class CultureTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
