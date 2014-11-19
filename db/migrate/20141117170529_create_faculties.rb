class CreateFaculties < ActiveRecord::Migration
  def change
    create_table :faculties do |t|
    	t.decimal :acess_notes
    	t.integer :students_number
    	t.integer :teachers_number
    	t.string :address
      t.decimal :global_score
    	t.integer :study_id
    	t.integer :university_id
      t.timestamps
    end
  end
end
