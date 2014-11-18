class CreateStudies < ActiveRecord::Migration
  def change
    create_table :studies do |t|
    	t.string :name
    	t.boolean :undergraduate, default: true
    	t.string :description
      t.timestamps
    end
  end
end
