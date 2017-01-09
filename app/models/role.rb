class Role < ApplicationRecord
  has_many :roles, :through => :user_roles
end
