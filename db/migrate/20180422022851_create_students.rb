class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :name
      t.string :graduation
      t.date :start_training

      t.timestamps
    end
  end
end
