class AddInstagramHandleToDogs < ActiveRecord::Migration[5.2]
  def change
    add_column :dogs, :instagram_handle, :string
  end
end
