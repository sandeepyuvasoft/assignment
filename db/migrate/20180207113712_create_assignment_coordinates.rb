class CreateAssignmentCoordinates < ActiveRecord::Migration[5.1]
  def change
    create_table :assignment_coordinates do |t|
      t.integer :assignment_id
      t.integer :user_id

      t.timestamps
    end
  end
end
