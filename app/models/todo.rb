class Todo < ActiveRecord::Base
    def to_displayable
        "#{todo_text} #{due_date.to_s(:short)} #{completed}"
    end
end
