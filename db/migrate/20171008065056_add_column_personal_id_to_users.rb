class AddColumnPersonalIdToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :personal_id, :integer
  end
end
