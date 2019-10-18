class RemoveImageFromTrablog < ActiveRecord::Migration[5.2]
  def change
    remove_column :trablogs, :image, :text
  end
end
