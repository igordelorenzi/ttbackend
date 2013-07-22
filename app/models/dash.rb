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

class Dash < ActiveRecord::Base
  attr_accessible :clock_in_out, :dash_at
  belongs_to :user

  validates :dash_at, presence: true
  validates :user_id, presence: true

  default_scope order: 'dashes.dash_at DESC'
end
