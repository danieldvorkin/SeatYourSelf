class AddCloseTimeToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :close_time, :integer
  end
end
