class AddColumnWorkers < ActiveRecord::Migration
  def change
  	add_column :workers, :name, :string
  	add_column :workers, :nennrei, :string
  	add_column :workers, :gender, :string
  	add_column :workers, :image, :string
  	add_column :workers, :introduce, :text
  end
end
