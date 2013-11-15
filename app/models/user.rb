class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def increment_stars!
    update_attribute(:stars, stars + 1)
  end

  def decrement_stars!
    update_attribute(:stars, stars - 1) unless stars == 0
  end

  def activate!
    update_attribute(:active, true)
  end

  def deactivate!
    update_attributes(active: false, stars: 0, ticks: 0)
  end
end
