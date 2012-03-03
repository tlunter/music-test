class AddIndexToPrivilegeName < ActiveRecord::Migration
  def change
    add_index :privileges, :name, unique: true
  end
end
