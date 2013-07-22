# == Schema Information
#
# Table name: dashes
#
#  id           :integer         not null, primary key
#  user_id      :integer
#  clock_in_out :integer
#  dash_at      :datetime
#  created_at   :datetime        not null
#  updated_at   :datetime        not null
#

require 'test_helper'

class DashTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
