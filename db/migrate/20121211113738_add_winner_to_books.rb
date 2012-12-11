class AddWinnerToBooks < ActiveRecord::Migration
  def change
    add_column :books, :winner, :boolean

  end
end
