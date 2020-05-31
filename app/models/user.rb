class User < ActiveRecord::Base
  has_many :todos

  def to_displayable
    "#{name} #{email} #{password}"
  end
end
