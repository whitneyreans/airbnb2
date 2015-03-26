class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.column :title, :string
      t.column :info, :string
      t.column :location, :string
      t.column :user_id, :integer

      t.timestamps
    end
  end
end
