class CreatePresences < ActiveRecord::Migration[5.1]
  def change
    create_table :presences do |t|
      t.date :date
      t.float :hours
      t.belongs_to :student, foreign_key: true

      t.timestamps
    end
  end
end
