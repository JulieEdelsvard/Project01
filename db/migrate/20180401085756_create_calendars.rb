class CreateCalendars < ActiveRecord::Migration[5.1]
  def change
    create_table :calendars do |t|
      t.text :location
      t.date :arrival_date
      t.date :departure_date
      t.integer :destination_id 


      t.timestamps
    end
  end
end
