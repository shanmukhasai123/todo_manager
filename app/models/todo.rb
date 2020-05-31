class Todo < ActiveRecord::Base
  def to_displayable
    "#{todo_text} #{due_date.to_s(:short)} #{completed}"
  end

  def self.overdue
    all.where("due_date < ?", Date.today)
  end

  def self.due_today
    all.where("due_date = ?", Date.today)
  end

  def self.due_later
    all.where("due_date > ?", Date.today)
  end
  def self.completed
    all.where(completed: true)
  end
end
