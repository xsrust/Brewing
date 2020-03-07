# == Schema Information
#
# Table name: fermentables
#
#  id          :bigint           not null, primary key
#  name        :string
#  type        :integer
#  grain_group :integer
#  potential   :float
#  color       :float
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require 'test_helper'

class FermentableTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
