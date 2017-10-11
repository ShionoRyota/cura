class AddColumnPersonalIdToHelpers < ActiveRecord::Migration
  def change
    add_column :helpers, :personal_id, :integer
  end
end
