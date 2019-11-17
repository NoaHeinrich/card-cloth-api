class RemoveDescFromCards < ActiveRecord::Migration[6.0]
  def change
    remove_column :cards, :desc
  end
end
