class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
    	t.column "name" ,:string,:limit=>50
    	t.column "position",:integer,:null=>false
    	t.boolean "visible"

      t.timestamps null: false
    end
  end
end
