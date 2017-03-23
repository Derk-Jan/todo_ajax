class CreateTodos < ActiveRecord::Migration[5.0]
  def change
    create_table :todos do |t|
      t.string :title
      t.boolean :completed, null: false, default: false

      t.timestamps

      updateCounters();

        var newTodo = { title: title, completed: false };

        $.ajax({
          type: "POST",
          url: "/todos.json",
          data: JSON.stringify({
              todo: newTodo
          }),
          contentType: "application/json",
          dataType: "json"
        });
      }
    end
  end
end
