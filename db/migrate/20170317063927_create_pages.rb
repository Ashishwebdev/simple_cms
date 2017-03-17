class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
    	t.integer "subject_id"
    	t.string "name",:limit=>50
    	t.integer "permalink"
    	t.boolean "position"

      t.timestamps null: false
    end
    add_index("pages","subject_id")
    add_index("pages","permalink")
  end
end
