class CreateJoinTableDogRole < ActiveRecord::Migration[5.1]
  def change
    create_table :dogs_roles do |t|
        t.integer :dog_id
        t.integer :role_id

        t.timestamps
    end
  end
end
