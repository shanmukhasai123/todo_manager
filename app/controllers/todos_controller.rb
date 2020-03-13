class TodosController<ApplicationController
    def index
        render plain: Todo.all.map{|todo| todo.to_displayable}.join("\n")
        
    end
    def show
        id=params[:id]
        todo=Todo.find(id)
        render plain: todo.to_displayable
    end
    def create
        todo_text=params[:todo_text]
        due_date=DateTime.parse(params[:due_date])
        new_todo=Todo.create!(todo_text:todo_text,due_date:due_date,completed:false)
        render plain: "#{new_todo.id}"
    end
end