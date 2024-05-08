class AddUrlToNews < ActiveRecord::Migration[5.2]
  def change
    add_column :news, :url, :string
  end
end
