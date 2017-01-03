class User < ApplicationRecord

  has_secure_password

  validates :password, length:{minimum:6}, on: :create

  EMAIL_REGEX = /\A[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}\Z/i

  validates :first_name,  :presence => true,
            :length => { :maximum => 25 }

  validates :last_name, :presence => true,
            :length => { :maximum => 50 }

  validates :username, :length => { :within => 8..25 },
            :uniqueness => true

  validates :email, :presence => true,
            :length => { :maximum => 100 },
            :format => EMAIL_REGEX,
            :confirmation => true

  validates :password, length:{minimum:6}, on: :create

  # db query manipulations go here!
  scope :sorted, lambda { order("last_name desc")}
  scope :active, lambda { where(:deleted => nil)}

  # custom method
  def name
    "#{first_name} #{last_name}"
  end

  # custom validation
  private

  def username_is_allowed
    if FORBIDDEN_USERNAMES.include?(username)
      errors.add(:username, "has been restricted from use.")
    end
  end




end
