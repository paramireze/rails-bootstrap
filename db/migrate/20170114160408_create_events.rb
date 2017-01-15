class CreateEvents < ActiveRecord::Migration[5.0]
  def up
      create_table :events do |t|
        t.integer   "distance_id",    :null => true
        t.integer   "number",         :null => true,   :limit => 8
        t.string    "title",          :limit => 250
        t.string    "cash",           :null => false,   :default => '$5', :limit => 50
        t.string    "description",    :null => true,    :limit => 2500
        t.string    "startLocation",  :null => true,   :limit => 250
        t.datetime  "startTime",      :null => true
        t.datetime  "retire",         :null => true
        t.boolean   "publish",        :null => false,   :default => false
        t.timestamps
      end
  end

  def down
    drop_table :events
  end
end
