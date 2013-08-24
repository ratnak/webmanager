class Role < ActiveRecord::Base
  # association
  #
  belongs_to :user

  # validates
  #
  attr_accessible :title,:user_id
  validates :title, :inclusion => {:in => User::ROLES.map{|r| r[1]}}
end
