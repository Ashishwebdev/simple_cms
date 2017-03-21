class CreateSelections < ActiveRecord::Migration
  def change
    create_table :selections do |t|
      t.string :index
      t.string :show
      t.string :new
      t.string :edit
      t.string :update
      t.string :delete

      t.timestamps null: false
    end
  end
end
