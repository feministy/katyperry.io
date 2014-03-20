class AddColumnsToSentences < ActiveRecord::Migration
  def change
    add_column :sentences, :album_id, :integer
  end
end
