class AddHairToUser < ActiveRecord::Migration
  def change
    add_column :users, :hair, :string
  end
end
