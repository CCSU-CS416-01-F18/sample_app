class DogsAddImageUrl < ActiveRecord::Migration[5.1]
  def change
    add_column :dogs, :image_url, :string
  end
end
