class CreateCodings < ActiveRecord::Migration
  def change
    create_table :codings do |t|
      t.string :device
      t.string :rom_id
      t.string :client, :default => "ANDROID"
      t.integer :encode_mode, :default => 2

      t.timestamps
    end

    add_index :codings, [:device, :rom_id], :unique => true
  end
end
