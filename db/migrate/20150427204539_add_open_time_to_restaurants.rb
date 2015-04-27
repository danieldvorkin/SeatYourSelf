class AddOpenTimeToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :open_time, :integer
  end
end
