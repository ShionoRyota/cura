class AddWorkerIdToHelpers < ActiveRecord::Migration
  def change
    add_column :helpers, :worker_id, :integer
  end
end
