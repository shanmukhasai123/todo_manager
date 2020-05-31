class User < ActiveRecord::Base
  def to_displayable
    "#{first_name} #{email} #{password}"
  end
end
