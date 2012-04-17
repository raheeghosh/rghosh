class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :caption
      t.integer :category_id
      t.boolean :active, :default => true
      t.references :commentable, :polymorphic => true

      t.timestamps
    end
  end
end
