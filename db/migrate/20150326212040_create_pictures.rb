class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.column :listing_id, :integer

      t.timestamps
    end
  end
end
