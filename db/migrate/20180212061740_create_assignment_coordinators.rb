class CreateAssignmentCoordinators < ActiveRecord::Migration[5.1]
  def change
    create_table :assignment_coordinators do |t|
      t.integer :assignment_id
      t.integer :user_id
      t.string	:type

      t.timestamps
    end
  end
end
