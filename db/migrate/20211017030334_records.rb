class DeleteRecords < ActiveRecord::Migration[5.2]
  def change
    drop_table :genres
    drop_table :addresses
  end
end
