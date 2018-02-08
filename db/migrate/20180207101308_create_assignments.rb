class CreateAssignments < ActiveRecord::Migration[5.1]
  def change
    create_table :assignments do |t|
      t.string :subject
      t.text :description
      t.integer :assignee_id

      t.timestamps
    end
  end
end
