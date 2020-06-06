class User < ActiveRecord::Base
  has_many :todos

  def to_displayable
    "#{first_name} #{email} #{password_digest}"
  end
end
