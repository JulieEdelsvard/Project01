# == Schema Information
#
# Table name: destinations
#
#  id         :integer          not null, primary key
#  name       :text
#  country    :text
#  latitude   :float
#  longitude  :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Destination < ApplicationRecord
  has_many :calendars

  geocoded_by :name
  after_validation :geocode
end
