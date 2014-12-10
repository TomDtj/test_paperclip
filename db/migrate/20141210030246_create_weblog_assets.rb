class CreateWeblogAssets < ActiveRecord::Migration
  def change
    create_table :weblog_assets do |t|
      t.string :data_file_name
      t.string :data_content_type
      t.integer :data_file_size
      t.datetime :data_updated_at
      t.belongs_to :post, index: true

      t.timestamps
    end
  end
end
