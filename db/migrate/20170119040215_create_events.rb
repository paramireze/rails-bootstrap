class CreateEvents < ActiveRecord::Migration[5.0]
  def up
    create_table :events do |t|
      t.string    "event_type_id",  :null => true
      t.integer   "distance_id",    :null => true
      t.integer   "number",         :null => true
      t.string    "title",          :null => false,   :limit => 250
      t.string    "cash",           :null => false,   :default => '$5', :limit => 50
      t.string    "description",    :null => true,    :limit => 2500
      t.string    "startLocation",  :null => true
      t.datetime  "startDate",      :null => true
      t.datetime  "retire",         :null => true
      t.boolean   "visible",        :null => false,   :default => false
      t.timestamps
    end
    add_index("events", "event_type_id")
    add_index("events", "distance_id")
  end

  def down
    drop_table :events
  end
end
