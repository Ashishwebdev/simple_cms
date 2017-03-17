class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
    	t.integer "page_id"
    	t.string "name"
    	t.integer "positon"
    	t.boolean "visible"
    	t.string "content_type"
    	t.text "content"
      t.timestamps null: false
    end
    add_index("sections","page_id")
  end
end
