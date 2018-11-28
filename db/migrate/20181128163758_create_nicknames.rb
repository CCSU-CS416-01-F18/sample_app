class CreateNicknames < ActiveRecord::Migration[5.1]
  def change
    create_table :nicknames do |t|
      t.string :name
      t.integer :dog_id

      t.timestamps
    end
  end
end
