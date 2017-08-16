class DropUrls < ActiveRecord::Migration[5.1]
  def change
    drop_table :urls 
  end
end
