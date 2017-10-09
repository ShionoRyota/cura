class AddColumnHelperIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :helper_id, :integer
  end
end
