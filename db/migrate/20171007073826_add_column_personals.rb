class AddColumnPersonals < ActiveRecord::Migration
  def change
  	add_column :personals, :name, :string
  	add_column :personals, :nennrei, :string
  	add_column :personals, :gender, :string
  	add_column :personals, :adress, :string
  	add_column :personals, :introduce, :text
  end
end
