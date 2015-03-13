class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.integer :user_id,    null: false
      t.integer :upper_tone
      t.integer :lower_tone
      t.integer :pulse

      t.timestamps null: false
    end

    add_index :records, :user_id
  end
end
