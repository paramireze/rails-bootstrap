class Distance < ApplicationRecord
  has_one :events
  def distance_string
    "#{length} #{measurement}"
  end
end
