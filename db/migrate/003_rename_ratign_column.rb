class RenameRatignColumn < ActiveRecord::Migration[5.2]
    def change
      rename_column :shows, :ratign, :rating
    end
  end
