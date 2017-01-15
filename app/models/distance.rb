class Distance < ApplicationRecord


  scope :active, lambda { where(:retire => nil) }
  scope :retire, lambda { where(:publish => !nil) }

  validates :description, :presence => false,
            :length => { :maximum => 2500 }

  validates :distance, :presence => true,
            :length => { :maximum => 250 }

end
