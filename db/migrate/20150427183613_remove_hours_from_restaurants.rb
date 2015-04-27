class RemoveHoursFromRestaurants < ActiveRecord::Migration
  def change
    remove_column :restaurants, :hours, :datetime
  end
end
