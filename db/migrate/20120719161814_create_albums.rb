class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.references :user

      t.timestamps
    end
  end
end
