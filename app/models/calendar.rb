# == Schema Information
#
# Table name: calendars
#
#  id             :integer          not null, primary key
#  location       :text
#  arrival_date   :date
#  departure_date :date
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Calendar < ApplicationRecord
  belongs_to :user, :optional => true
  belongs_to :destination, :optional => true
end
