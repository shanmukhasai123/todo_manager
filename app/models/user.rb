class User < ActiveRecord::Base
  def to_displayable
    "#{first_name} #{email} #{password_digest}"
  end
end
