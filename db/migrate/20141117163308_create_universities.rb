class CreateUniversities < ActiveRecord::Migration
  def change
    create_table :universities do |t|
    	t.string :name
    	t.string :city
    	t.text :description
    	t.decimal :global_score
    	t.string :image
    	t.integer :students_number
    	t.boolean :public, default: true
      t.timestamps
    end
  end
end
