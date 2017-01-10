class User < ApplicationRecord

  #use bcrypt to secure our password
  has_secure_password

  #role relational mapping
  has_and_belongs_to_many :roles

  #add constraints to obj ect properties to protect against zee bad guys
  validates :password, length:{minimum:6}, on: :create

  EMAIL_REGEX = /\A[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}\Z/i

  validates :first_name,  :presence => true,
            :length => { :maximum => 25 }

  validates :last_name, :presence => true,
            :length => { :maximum => 50 }

  validates :username, :length => { :within => 1..25 },
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

  def is_admin
    admin = Role.find_by_name('Admin')
    admin ? has_role(admin.name) : false
  end

  def has_role(role)
    roles.any?{|a| a.name == role}
  end

  # custom validation
  private

  def username_is_allowed
    if FORBIDDEN_USERNAMES.include?(username)
      errors.add(:username, "has been restricted from use.")
    end
  end
end
