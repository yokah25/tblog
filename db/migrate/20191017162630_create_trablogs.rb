class CreateTrablogs < ActiveRecord::Migration[5.2]
  def change
    create_table :trablogs do |t|
      t.string        :name
      t.text          :text
      t.timestamps   null: true
    end
  end
end
