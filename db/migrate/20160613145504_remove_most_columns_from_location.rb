class RemoveMostColumnsFromLocation < ActiveRecord::Migration
  def change
  	remove_column :locations, :street
  	remove_column :locations, :city
  	remove_column :locations, :state
  	remove_column :locations, :zip
  	add_column :locations, :address, :string
  end
end
