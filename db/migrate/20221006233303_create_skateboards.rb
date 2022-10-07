class CreateSkateboards < ActiveRecord::Migration[6.1]
  def change
    create_table :skateboards do |t|
      t.string :brand
      t.string :pro
      t.string :color

      t.timestamps
    end
  end
end
