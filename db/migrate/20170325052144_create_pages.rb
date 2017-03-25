class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
    	t.string  "Name"
    	t.integer "position"
        t.boolean  "visible"
      t.timestamps null: false
    end
  end
end
