class CreateUserships < ActiveRecord::Migration
  def change
    create_table :userships do |t|
    t.references :user
    t.references :photo

      t.timestamps
    end
  end
end
