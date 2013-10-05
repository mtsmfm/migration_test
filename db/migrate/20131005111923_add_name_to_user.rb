class AddNameToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    reversible do |dir|
      dir.up { User.update_all name: 'alice' }
    end
  end
end
