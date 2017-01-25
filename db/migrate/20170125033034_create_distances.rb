class CreateDistances < ActiveRecord::Migration[5.0]
  def up
    create_table :distances do |t|
      t.integer   "length",       :null => false
      t.string    "measurement",  :limit => 250
      t.string    "description",  :null => true,    :limit => 2500
      t.datetime  "retire",       :null => true
      t.timestamps
    end
  end

  def down
    drop_table :distances
  end
end
