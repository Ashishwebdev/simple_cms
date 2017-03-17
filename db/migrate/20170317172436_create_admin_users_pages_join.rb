class CreateAdminUsersPagesJoin < ActiveRecord::Migration
  def change
    create_table :admin_users_pages,:id=> false do |t|
     t.integer "admin_users_id"
     t.integer "page_id"
    end
add_index("admin_users_pages",["admin_users_id","page_id"])
  end
end
