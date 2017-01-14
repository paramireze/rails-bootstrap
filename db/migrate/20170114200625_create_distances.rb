class CreateDistances < ActiveRecord::Migration[5.0]
  def up
    create_table :distances do |t|
      t.string    "distance",     :limit => 50, null => false
      t.string    "description",  :limit => 250
      t.datetime  "retired",      :limit => 250
      t.timestamps
    end
  end

  def down
    drop_table :distances
  end
end
