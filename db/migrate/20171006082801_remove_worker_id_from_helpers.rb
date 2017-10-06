class RemoveWorkerIdFromHelpers < ActiveRecord::Migration
  def change
    remove_column :helpers, :worker_id, :integer
  end
end
