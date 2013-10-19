class CreateTheftReports < ActiveRecord::Migration
  def change
    create_table :theft_reports do |t|
      t.string :location
      t.datetime :theft_date
      t.string :theft_way
      t.text :bike_data

      t.timestamps
    end
  end
end
