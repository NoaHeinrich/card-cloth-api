class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.string :name
      t.string :suit
      t.integer :number
      t.text :desc
      t.string :upright
      t.string :reversed
      t.string :img_url

      t.timestamps
    end
  end
end
