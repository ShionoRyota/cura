class CreateHelpers < ActiveRecord::Migration
  def change
    create_table :helpers do |t|
      t.datetime :start
      t.time :finish
      t.text :text

      t.timestamps
    end
  end
end
