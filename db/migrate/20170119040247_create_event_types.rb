class CreateEventTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :event_types do |t|
      t.string "name",    :null => false
      t.string "description", :null => false
      t.datetime "retire", :null => true, :default => nil
      t.timestamps
    end
  end
end
