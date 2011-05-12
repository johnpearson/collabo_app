class CreateProjects < ActiveRecord::Migration
  def self.up
    create_table :projects do |t|
      t.string    :name
      t.string    :content
      t.integer   :user_id
      t.string    :inspire_file_name
      t.string    :inspire_content_type
      t.integer   :inspire_file_size
      t.datetime  :inspire_udpated_at
      t.timestamps
    end
  end

  def self.down
    drop_table :projects
  end
end
