class CreateTask2s < ActiveRecord::Migration[5.0]
  def change
    create_table :task2s do |t|
      t.string :content

      t.timestamps
    end
  end
end
